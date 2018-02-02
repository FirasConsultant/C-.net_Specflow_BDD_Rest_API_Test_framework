using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using AutomationTesting.SDK;
using NUnit.Framework;
using SS.Architecture.Extensions;
using SS.GTP.Domain.Rest;
using SS.GTP.Domain.Sports;
using SS.Pricing.AutomationTesting;
using TechTalk.SpecFlow;
using TechTalk.SpecFlow.Assist;
using BaseVariables = SS.GTP.Domain.Sports.Football.BaseVariables;

namespace Specs.SS.Pricing.Football
{
    [Binding]
    public class StepDefinitionsFootballMd
    {
        [Given(@"I have created a linked fixture for Football with the following base variables")]
        public void GivenIHaveCreatedALinkedFixtureForFootballWithTheFollowingBaseVariables(Table table)
        {
            var baseVariables = table.CreateInstance<BaseVariables>();
            //
            //            var tradingRulesBuilder = new TradingRulesBuilder();
            //            var tradingRules = tradingRulesBuilder.ForSport(RestRelations.FootballOdds)
            //                                                  .WithDefaultRules()
            //                                                  .Build();

            var connectClient = ScenarioContext.Current.Get<ConnectClient>(Constants.KeyConnectClient);
            //  var createdTradingRules = connectClient.CreateTradingRules(tradingRules);

            var definitionBuilder = new DefinitionBuilder();
            var definition = definitionBuilder.ForSport(RestRelations.FootballOdds)
                                              .WithBaseVariables(baseVariables)
                                              .WithDefaultLadder()
                                              .WithDefaultTradingRules()
                                              .Build();

            var createdDefinition = connectClient.CreateDefinition(definition);

            var fixture = new FixtureBuilder().ForSport(RestRelations.FootballOdds)
                                              .ForPublicFixture()
                                              .Build();
            //   fixture.Participants[0].Name = "Priya1";
            //   fixture.Participants[1].Name = "Priya2";

            var publicCe = connectClient.CreatePublicFixture(fixture);

            var linkedCe = connectClient.CreateLinkedFixture(publicCe, createdDefinition);
            ScenarioContext.Current.Add(Constants.KeyLinkedCe, linkedCe);
        }
       
        [When(@"I request the last response without modifiying any display metadata")]
        public void WhenIRequestTheLastResponseWithoutModifiyingAnyDisplayMetadata()
        {
            var connectClient = ScenarioContext.Current.Get<ConnectClient>(Constants.KeyConnectClient);
            var linkedCe = ScenarioContext.Current.Get<Ce>(Constants.KeyLinkedCe);

            var pricingResponse = connectClient.SendPrivateOrLinkedPricingRequest(linkedCe);
            ScenarioContext.Current.Add(Constants.KeyPricingResponse, pricingResponse);
        }

        [Then(@"The last response should contain the following default market and selection names")]
        public void ThenTheLastResponseShouldContainTheFollowingDefaultMarketAndSelectionNames(Table table)
        {
            var pricingResponse = ScenarioContext.Current.Get<BasePricingResponse>(Constants.KeyPricingResponse);
            
            if (table.RowCount > 0)
            {
                var marketTestsLookup = new HashSet<string>();

                foreach (var row in table.Rows)
                {
                    var marketId = row[0];
                    var marketName = row[1];
                    var rawSelectionNames = row[2];

                    marketTestsLookup.Add(marketId);

                    Assert.False(string.IsNullOrEmpty(marketName), string.Format("Market {0} has no market name in the test", marketId));
                    Assert.False(string.IsNullOrEmpty(rawSelectionNames), string.Format("Market {0} has no selection names in the test", marketId));

                    var market = pricingResponse.Markets.FirstOrDefault(m => m.Id == marketId);
                    Assert.IsNotNull(market, "Market {0} was missing from the response but was in the test", marketId);

                    Assert.AreEqual(marketName.TrimEnd(), market.DisplayName.TrimEnd(), string.Format("Market name does not match for id {0}", marketId));

                    var selectionNames = rawSelectionNames.Split(new[] { '_', '_' }, StringSplitOptions.RemoveEmptyEntries).Select(s => s.TrimEnd());
                    Assert.That(selectionNames.Any(string.IsNullOrEmpty), Is.False, "Selection names in test contained a empty name");
                    Assert.That(market.Selections.Count, Is.EqualTo(selectionNames.Count()), string.Format("Selection count mismatch on Market Id {0}", marketId));

                    foreach (var selection in market.Selections)
                    {
                        Assert.That(string.IsNullOrEmpty(selection.DisplayName), Is.False, "Selection has empty display name. Selection Id: {0}", selection.Id);
                        Assert.That(selectionNames.Contains(selection.DisplayName.TrimEnd()), Is.True, string.Format("{0}: Expected {1}, but found {2}", selection.Id, selection.DisplayName, selectionNames.ToDelimiter("_")));
                    }
                }

                var errors = new StringBuilder();
                foreach (var market in pricingResponse.Markets)
                {
                    if (!marketTestsLookup.Contains(market.Id)) errors.AppendLine(string.Format("|{0}| {1}| {2} |", market.Id, market.DisplayName, string.Join("_", market.Selections.Select(s => s.DisplayName).ToArray())));
                }

                Assert.True(errors.Length == 0, string.Format("Missing in tests:\r\n{0}", errors));
            }
        }
    }
}