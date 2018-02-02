using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MongoDB.Driver.Builders;
using NUnit.Framework;
using SS.GTP.Domain.Sports;
using SS.Pricing.SDK.Builders;
using SS.Pricing.SDK.Clients;
using SS.Pricing.SDK.Resources;
using TechTalk.SpecFlow;

namespace SS.Pricing.AutomationTesting
{
    [Binding]
    public class SharedStepsMarketTypeMiddleLinesFiltering
    {
        [Given(@"I create a '(.*)' market definition with base variables that have the properties")]
        public void GivenICreateAMarketDefinitionWithBaseVariablesThatHaveTheProperties(string sport, Table table)
        {
            var baseVariables = SharedStepsMarketDefinitions.CreateBaseVariables(sport, table);
            var definition = new DefinitionBuilder().ForSport(Sports.ToRestRelation[sport])
                                                    .WithBaseVariables(baseVariables)
                                                    .WithDefaultLadder()
                                                    .WithDefaultTradingRules()
                                                    .Build();

            var connectClient = ScenarioContext.Current.Get<ConnectClient>(Constants.KeyConnectClient);
            var createdDefinitionResource = connectClient.CreateDefinition(definition);
            ScenarioContext.Current.Add(Constants.KeyDefinition, createdDefinitionResource);
        }

        [Given(@"I set the following Max Markets Displayed")]
        public void GivenISetTheFollowingMaxMarketsDisplayed(Table table)
        {
            var createdDefinitionResource = ScenarioContext.Current.Get<DefinitionResource>(Constants.KeyDefinition);
            foreach (var row in table.Rows)
            {
                var marketTypeId = Int32.Parse(row[0]);
                var maxCount = Int32.Parse(row[2]);
                var marketTypeFilter = createdDefinitionResource.Definition.Filter.MarketTypeFilters.Single(f => f.Id == marketTypeId);
                marketTypeFilter.SpecifiedMaxMarketCount = maxCount;
            }

            var connectClient = ScenarioContext.Current.Get<ConnectClient>(Constants.KeyConnectClient);
            var updatedDefinitionResource = connectClient.UpdateDefinition(createdDefinitionResource);
            ScenarioContext.Current[Constants.KeyDefinition] = updatedDefinitionResource;
        }

        [Given(@"I apply it to a linked fixture for '(.*)'")]
        public void GivenIApplyItToALinkedFixtureFor(string sport)
        {
            var connectClient = ScenarioContext.Current.Get<ConnectClient>(Constants.KeyConnectClient);
            var createdDefinitionResource = ScenarioContext.Current.Get<DefinitionResource>(Constants.KeyDefinition);

            var fixture = new FixtureBuilder().ForSport(Sports.ToRestRelation[sport])
                                              .ForPublicFixture()
                                              .Build();

            var publicFixtureResource = connectClient.CreatePublicFixture(fixture);

            var linkedFixtureResource = connectClient.CreateLinkedFixture(
                publicFixtureResource.Fixture,
                createdDefinitionResource.Definition);

            ScenarioContext.Current.Add(Constants.KeyLinkedCe, linkedFixtureResource);
        }

        [When(@"i price the fixture")]
        public void WhenIPriceTheFixture()
        {
            var connectClient = ScenarioContext.Current.Get<ConnectClient>(Constants.KeyConnectClient);
            var linkedCeResource = ScenarioContext.Current.Get<FixtureResource>(Constants.KeyLinkedCe);

            connectClient.PriceFixture(linkedCeResource);

            ScenarioContext.Current.Add(Constants.KeyPricingResponse, linkedCeResource.LastPricingResponse);
        }

        [Then(@"the last response should contain the following")]
        public void ThenTheLastResponseShouldContainTheFollowing(Table table)
        {
            var response = ScenarioContext.Current.Get<BasePricingResponse>(Constants.KeyPricingResponse);

            //foreach (var group in response.Markets.GroupBy(m => m.MarketTypeId))
            //{
            //    System.Diagnostics.Debug.WriteLine("| {0} | {1} | {2} | {3} |", group.Key, group.First().DisplayName,
            //        group.Count(), group.Count(m => m.OverroundableSelections.Any()));
            //}

            if (table.RowCount > 0)
            {
                var marketGroups = response.Markets.GroupBy(m => m.MarketTypeId).ToList();

                foreach (var row in table.Rows)
                {
                    var marketTypeId = row[0];
                    var marketCount = Int32.Parse(row[2]);

                    var group = marketGroups.SingleOrDefault(g => g.Key == marketTypeId);
                    Assert.NotNull(group, "No markets with market type ID {0} found in pricing response", marketTypeId);
                    Assert.AreEqual(marketCount, group.Count());
                }
            }
        }

    }
}
