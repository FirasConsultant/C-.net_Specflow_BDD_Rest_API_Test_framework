using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using NUnit.Framework;
using SS.Architecture.Extensions;
using SS.GTP.Domain.Rest;
using SS.GTP.Domain.Sports;
using SS.Pricing.SDK.Builders;
using SS.Pricing.SDK.Clients;
using SS.Pricing.SDK.Resources;
using TechTalk.SpecFlow;
using TechTalk.SpecFlow.Assist;


using BaseVariables = SS.GTP.Domain.Sports.BaseVariables;

namespace SS.Pricing.AutomationTesting
{
    [Binding]
    public class SharedStepsMarketDefinitions
    {

        [Given(@"I have created a linked fixture for (.*) with the following base variables")]
        public void GivenIHaveCreatedALinkedFixtureForAmericanFootballWithTheFollowingBaseVariables(string sport, Table table)
        {
            var baseVariables = CreateBaseVariables(sport, table);

            var connectClient = ScenarioContext.Current.Get<ConnectClient>(Constants.KeyConnectClient);

            var definitionBuilder = new DefinitionBuilder();
            var definition = definitionBuilder.ForSport(Sports.ToRestRelation[sport])
                .WithBaseVariables(baseVariables)
                .WithDefaultLadder()
                .WithDefaultTradingRules()
                .Build();

            var createdDefinitionResource = connectClient.CreateDefinition(definition);

            var fixture = new FixtureBuilder().ForSport(Sports.ToRestRelation[sport])
                .ForPublicFixture()
                .Build();

            var publicFixtureResource = connectClient.CreatePublicFixture(fixture);

            var linkedFixtureResource = connectClient.CreateLinkedFixture(publicFixtureResource.Fixture,
                createdDefinitionResource.Definition);
            ScenarioContext.Current.Add(Constants.KeyLinkedCe, linkedFixtureResource);
        }

        [Given(@"I have created a Prematch linked fixture for '(.*)' with the following base variables")]
        public void GivenIHaveCreatedAPrematchLinkedFixtureForWithTheFollowingBaseVariables(string sport, Table table)
        {
            var prematchBaseVariables = new GTP.Domain.Sports.Cricket.PreMatchBaseVariables();
            var connectClient = ScenarioContext.Current.Get<ConnectClient>(Constants.KeyConnectClient);

            var definitionBuilder = new DefinitionBuilder().ForSport(RestRelations.CricketOdds)
                                             .WithBaseVariables(new GTP.Domain.Sports.Cricket.BaseVariables())
                                             .WithPreMatchBaseVariables(prematchBaseVariables)
                                             .WithDefaultTradingRules()
                                             .WithDefaultLadder();
            var definition = definitionBuilder.Build();

            var createdDefinitionResource = connectClient.CreateDefinition(definition);

            var fixture = new FixtureBuilder().ForSport(RestRelations.CricketOdds)
                .ForPublicFixture()
                .Build();

            var publicFixtureResource = connectClient.CreatePublicFixture(fixture);

            var linkedFixtureResource = connectClient.CreateLinkedFixture(publicFixtureResource.Fixture,
                createdDefinitionResource.Definition);
            ScenarioContext.Current.Add(Constants.KeyLinkedCe, linkedFixtureResource);

        }
        [Given(@"I have created a new Market Definition for '(.*)' with the following base variables")]
        public void GivenIHaveCreatedANewMarketDefinitionForWithTheFollowingBaseVariables(string sport, Table table)
        {
            var baseVariables = CreateBaseVariables(sport, table);
            var connectClient = ScenarioContext.Current.Get<ConnectClient>(Constants.KeyConnectClient);

            var definitionBuilder = new DefinitionBuilder();
            var definition = definitionBuilder.ForSport(Sports.ToRestRelation[sport])
                                              .WithBaseVariables(baseVariables)
                                              .WithDefaultLadder()
                                              .WithDefaultTradingRules()
                                              .Build();

            var createdDefinitionResource = connectClient.CreateDefinition(definition);
            ScenarioContext.Current.Add(Constants.KeyDefinition, createdDefinitionResource);
        }

        public static BaseVariables CreateBaseVariables(string sport, Table table)
        {
            switch (sport)
            {
                case "AmericanFootball":
                    return
                        table.CreateInstance<SS.GTP.Domain.Sports.AmericanFootball.BaseVariables>();
                case "Basketball":
                    return
                        table.CreateInstance<SS.GTP.Domain.Sports.Basketball.BaseVariables>();
                case "Boxing":
                    return
                        table.CreateInstance<SS.GTP.Domain.Sports.Boxing.BaseVariables>();
                case "TestCricket":
                    return
                        table.CreateInstance<SS.GTP.Domain.Sports.TestCricket.BaseVariables>();
                case "Cricket":
                    return
                        table.CreateInstance<SS.GTP.Domain.Sports.Cricket.BaseVariables>();
                case "Darts":
                    return
                        table.CreateInstance<SS.GTP.Domain.Sports.Darts.BaseVariables>();
                case "Football":
                    return
                        table.CreateInstance<SS.GTP.Domain.Sports.Football.BaseVariables>();
                case "GaelicFootball":
                    return
                        table.CreateInstance<SS.GTP.Domain.Sports.Gaelic.Football.BaseVariables>();
                case "GaelicHurling":
                    return
                        table.CreateInstance<SS.GTP.Domain.Sports.Gaelic.Hurling.BaseVariables>();
                case "Handball":
                    return
                        table.CreateInstance<SS.GTP.Domain.Sports.Handball.BaseVariables>();
                case "IceHockey":
                    return
                        table.CreateInstance<SS.GTP.Domain.Sports.IceHockey.BaseVariables>();
                case "RugbyLeague":
                    return
                        table.CreateInstance<SS.GTP.Domain.Sports.Rugby.League.BaseVariables>();
                case "RugbyUnion":
                    return
                        table.CreateInstance<SS.GTP.Domain.Sports.Rugby.Union.BaseVariables>();
                case "Snooker":
                    return
                        table.CreateInstance<SS.GTP.Domain.Sports.Snooker.BaseVariables>();
                case "TennisDoubles":
                    return
                        table.CreateInstance<SS.GTP.Domain.Sports.TennisDoubles.BaseVariables>();
                case "Tennis":
                    return
                        table.CreateInstance<SS.GTP.Domain.Sports.Tennis.BaseVariables>();
                case "Volleyball":
                    return
                        table.CreateInstance<SS.GTP.Domain.Sports.Volleyball.BaseVariables>();
            }
            return null;
        }

        //For BaseVariables with no Tables
        [Given(@"I have created a linked fixture for (.*) with default base variables")]
        public void GivenIHaveCreatedALinkedFixtureForAustralianRulesWithDefaultBaseVariables(string sport)
        {
            var baseVariables = CreateDefaultBaseVariables(sport);
            var connectClient = ScenarioContext.Current.Get<ConnectClient>(Constants.KeyConnectClient);

            var definitionBuilder = new DefinitionBuilder();
            var definition = definitionBuilder.ForSport(Sports.ToRestRelation[sport])
                .WithBaseVariables(baseVariables)
                .WithDefaultLadder()
                .WithDefaultTradingRules()
                .Build();

            var createdDefinitionResource = connectClient.CreateDefinition(definition);

            var fixture = new FixtureBuilder().ForSport(Sports.ToRestRelation[sport])
                .ForPublicFixture()
                .Build();


            var publicFixtureResource = connectClient.CreatePublicFixture(fixture);

            var linkedCeResource = connectClient.CreateLinkedFixture(publicFixtureResource.Fixture,
                createdDefinitionResource.Definition);
            
            ScenarioContext.Current.Add(Constants.KeyLinkedCe, linkedCeResource);
        }

        [Given(@"I have created a new Market Definition for '(.*)' with default base variables")]
        public void GivenIHaveCreatedANewMarketDefinitionForWithDefaultBaseVariables(string sport)
        {
            var baseVariables = CreateDefaultBaseVariables(sport);
            var connectClient = ScenarioContext.Current.Get<ConnectClient>(Constants.KeyConnectClient);

            var definitionBuilder = new DefinitionBuilder();
            var definition = definitionBuilder.ForSport(Sports.ToRestRelation[sport])
                .WithBaseVariables(baseVariables)
                .WithDefaultLadder()
                .WithDefaultTradingRules()
                .Build();

            var createdDefinitionResource = connectClient.CreateDefinition(definition);
            ScenarioContext.Current.Add(Constants.KeyDefinition, createdDefinitionResource);
        }


        public static BaseVariables CreateDefaultBaseVariables(string sport)
        {
            switch (sport)
            {
                case "AustralianRules":
                    return new GTP.Domain.Sports.AustralianRules.BaseVariables();
                case "Baseball":
                    return new GTP.Domain.Sports.Baseball.BaseVariables();
                case "TestCricket":
                    return new GTP.Domain.Sports.TestCricket.BaseVariables();
                case "Volleyball":
                    return new GTP.Domain.Sports.Volleyball.BaseVariables();
            }
            return null;
        }

        [When(@"I request the last response without modifiying any display metadata")]
        public void WhenIRequestTheLastResponseWithoutModifiyingAnyDisplayMetadata()
        {
            var connectClient = ScenarioContext.Current.Get<ConnectClient>(Constants.KeyConnectClient);
            var linkedCeResource = ScenarioContext.Current.Get<FixtureResource>(Constants.KeyLinkedCe);

            connectClient.PriceFixture(linkedCeResource);

            ScenarioContext.Current.Add(Constants.KeyPricingResponse, linkedCeResource.LastPricingResponse);
        }

        [Then(@"The last response should contain the following default market and selection names")]
        public void ThenTheLastResponseShouldContainTheFollowingDefaultMarketAndSelectionNames(Table table)
        {
            var response = ScenarioContext.Current.Get<BasePricingResponse>(Constants.KeyPricingResponse);
            if (table.RowCount > 0)
            {
                var marketTestsLookup = new HashSet<string>();

                foreach (var row in table.Rows)
                {
                    var marketId = row[0];
                    var marketName = row[1];
                    var rawSelectionNames = row[2];

                    marketTestsLookup.Add(marketId);

                    Assert.False(string.IsNullOrEmpty(marketName),
                        string.Format("Market {0} has no market name in the test", marketId));
                    Assert.False(string.IsNullOrEmpty(rawSelectionNames),
                        string.Format("Market {0} has no selection names in the test", marketId));

                    var market = response.Markets.FirstOrDefault(m => m.Id == marketId);
                    var rollingMarket = response.RollingMarkets.FirstOrDefault(m => m.Id == marketId);

                    if (rollingMarket != null)
                    {
                        AssertMarketAndSelectionNames(rollingMarket, marketId, marketName, rawSelectionNames);
                    }
                    else
                    {
                        AssertMarketAndSelectionNames(market, marketId, marketName, rawSelectionNames);
                    }
                }

                var errors = new StringBuilder();
                AssertMissingInTests(errors, response.Markets, marketTestsLookup);
                AssertMissingInTests(errors, response.RollingMarkets, marketTestsLookup);
                Assert.True(errors.Length == 0, string.Format("Missing in tests:\r\n{0}", errors));
            }
        }

        private static void AssertMissingInTests<T>(StringBuilder errors, IEnumerable<BaseOddsMarket<T>> markets, HashSet<string> marketTestsLookup) where T : BaseOddsSelection
        {
            foreach (var market in markets)
            {
                if (!marketTestsLookup.Contains(market.Id))
                {
                    errors.AppendLine(string.Format("|{0}| {1}| {2} |", market.Id, market.DisplayName,
                        string.Join("_", market.Selections.Select(s => s.DisplayName).ToArray())));
                }
            }
        }

        private static void AssertMarketAndSelectionNames<T>(BaseOddsMarket<T> market, string marketId, string marketName, string rawSelectionNames) where T : BaseOddsSelection
        {
            Assert.IsNotNull(market, "Market {0} was missing from the response but was in the test", marketId);

            Assert.AreEqual(marketName.TrimEnd(), market.DisplayName.TrimEnd(),
                string.Format("Market name does not match for id {0}", marketId));

            var selectionNames =
                rawSelectionNames.Split(new[] {'_', '_'}, StringSplitOptions.RemoveEmptyEntries)
                    .Select(s => s.TrimEnd());
            Assert.That(selectionNames.Any(string.IsNullOrEmpty), Is.False,
                "Selection names in test contained a empty name");
            Assert.That(market.Selections.Count, Is.EqualTo(selectionNames.Count()),
                string.Format("Selection count mismatch on Market Id {0}", marketId));

            foreach (var selection in market.Selections)
            {
                Assert.That(string.IsNullOrEmpty(selection.DisplayName), Is.False,
                    "Selection has empty display name. Selection Id: {0}", selection.Id);
                Assert.That(selectionNames.Contains(selection.DisplayName.TrimEnd()), Is.True,
                    string.Format("{0}: Expected {1}, but found {2}", selection.Id, selection.DisplayName,
                        selectionNames.ToDelimiter("_")));
            }
        }

        [Then(@"the Market Definition that i have created should contain the following data")]
        public void ThenTheMarketDefinitionThatIHaveCreatedShouldContainTheFollowingData(Table table)
        {
            var definitionResource = ScenarioContext.Current.Get<DefinitionResource>(Constants.KeyDefinition);
            var definition = definitionResource.Definition;
            table.CompareToSet(definition.Filter.MarketTypeFilters);
        }

    }
}