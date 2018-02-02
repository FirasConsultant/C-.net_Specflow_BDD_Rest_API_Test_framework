using System;
using System.Collections.Generic;
using System.Linq;
using NUnit.Framework;
using SS.GTP.Domain.Sports;
using SS.GTP.Domain.Sports.Basketball.Shared;
using SS.GTP.Domain.Sports.Handball;
using SS.Pricing.SDK.Builders;
using SS.Pricing.SDK.Clients;
using SS.Pricing.SDK.Resources;
using TechTalk.SpecFlow;
using TechTalk.SpecFlow.Assist;
using BaseVariables = SS.GTP.Domain.Sports.BaseVariables;

namespace SS.Pricing.AutomationTesting
{
    [Binding]
    internal class SharedStepsRegression
    {
        [Given(@"I have created a new fixture setup in (.*) mode for '(.*)' with following base variables")]
        public void GivenIHaveCreatedANewFixtureSetupInModeForWithFollowingBaseVariables(string tradeModeStr,
            string sport, Table table)
        {
            // Parse
            var tradeMode = (TradeMode) Enum.Parse(typeof (TradeMode), tradeModeStr);

            var baseVariables = CreateBaseVariables(sport, table);

            //Get Client
            var connectClient = ScenarioContext.Current.Get<ConnectClient>(Constants.KeyConnectClient);

            //Create Definition
            var definitionBuilder = new DefinitionBuilder();
            var definition = definitionBuilder.ForSport(Sports.ToRestRelation[sport])
                .WithBaseVariables(baseVariables)
                .WithDefaultLadder()
                .WithDefaultTradingRules()
                .Build();
            
            var createdDefinitionResource = connectClient.CreateDefinition(definition);

            //Create public Fixture
            var fixture = new FixtureBuilder().ForSport(Sports.ToRestRelation[sport])
                .ForPublicFixture()
                .Build();
           
            var publicFixtureResource = connectClient.CreatePublicFixture(fixture);
           
            var linkedFixtureResource = connectClient.CreateLinkedFixture(publicFixtureResource.Fixture,
                createdDefinitionResource.Definition);
            

            // Update trade mode
            if (linkedFixtureResource.Fixture.TradeMode != tradeMode)
            {
                linkedFixtureResource.Fixture.TradeMode = tradeMode;
                linkedFixtureResource = connectClient.UpdateFixture(linkedFixtureResource);
            }

            ScenarioContext.Current.Add(Constants.KeyLinkedCe, linkedFixtureResource);
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

        [When(@"I set the status of the match to (.*)")]
        public void WhenISetTheStatusOfTheMatchToReady(string matchStatusStr)
        {
            //Get the Fixture
            var linkedCeResource = ScenarioContext.Current.Get<FixtureResource>(Constants.KeyLinkedCe);
         
            //Parse
            var matchStatus = (MatchStatus) Enum.Parse(typeof (MatchStatus), matchStatusStr);
            linkedCeResource.Fixture.MatchStatus = matchStatus;
            var connectClient = ScenarioContext.Current.Get<ConnectClient>(Constants.KeyConnectClient);
            connectClient.UpdateFixture(linkedCeResource);

            //Assert to Match Status
            Assert.That(linkedCeResource.Fixture.MatchStatus, Is.EqualTo(matchStatus));
        }

        [When(@"the last response should have all markets suspended")]
        public void WhenTheLastResponseShouldHaveAllMarketsSuspended()
        {
            var response = ScenarioContext.Current.Get<BasePricingResponse>(Constants.KeyPricingResponse);
            Assert.AreEqual(response.Locked, true);
        }

        [When(@"I price the fixture")]
        public void WhenIPriceTheFixture()
        {
            //Get the Fixture
            var linkedCeResource = ScenarioContext.Current.Get<FixtureResource>(Constants.KeyLinkedCe);
            var connectClient = ScenarioContext.Current.Get<ConnectClient>(Constants.KeyConnectClient);

            connectClient.PriceFixture(linkedCeResource);
           
            ScenarioContext.Current.Add(Constants.KeyPricingResponse, linkedCeResource.LastPricingResponse);
        }

        [When(@"there is a goal by '(.*)' at '(.*)' Minute '(.*)' Seconds in the '(.*)' Period\.Half")]
        public void WhenThereIsAGoalByAtMinuteSecondsInThePeriod_Half(string team, int minute, int second, int period, Table table)
        {
            ScenarioContext.Current.Get<BasePricingResponse>(Constants.KeyPricingResponse);
            ScenarioContext.Current.Get<ConnectClient>(Constants.KeyConnectClient);

            var stateMachine = new SS.GTP.Domain.Sports.Handball.StateMachine
           {
                SportType = Sport.Handball,
                HalvesOrQuarters = Period.Halves,
                HalfOrQuarterLength = 30,
                OvertimeLength = 0
            };

            AddTeam1Point(stateMachine, period, minute, second);

            var request = new PricingRequest();
            request.FixtureState.ActionLog = stateMachine.ActionLog.ToList();
            request.FixtureState.Clock.Period = 1;

            var linkedCeResource = ScenarioContext.Current.Get<FixtureResource>(Constants.KeyLinkedCe);
            var connectClient = ScenarioContext.Current.Get<ConnectClient>(Constants.KeyConnectClient);
            connectClient.PriceFixture(linkedCeResource, request);

        }

        private static void AddTeam1Point(SS.GTP.Domain.Sports.Handball.StateMachine stateMachine, int period, int minute, int second)
        {
            stateMachine.MatchClockStateMachine.Period = period;
            stateMachine.MatchClockStateMachine.Minute = minute;
            stateMachine.MatchClockStateMachine.Second = second;
            stateMachine.Team1Points++;
        }

        private static void SuspendAll(PricingResponseInternal pricingResponseInternal)
        {
            var oddsOutputSet = pricingResponseInternal.ExtractOutputSet("odds");
            var headers = oddsOutputSet.Headers.Select(h => h.ToLower()).ToList();
            var tradableIndex = headers.IndexOf("tradable");

            foreach (var selection in oddsOutputSet.Values)
            {
                selection[tradableIndex] = "0";
            }
        }

       [Then(@"the following markets should be")]
        public void ThenTheFollowingMarketsShouldBe(Table table)
        {
            var response = ScenarioContext.Current.Get<BasePricingResponse>(Constants.KeyPricingResponse);

            Assert.IsFalse(table.RowCount == 0);
      
            foreach (var row in table.Rows)
            {
                var marketId = row[0];
                var marketName = row[1];
                var rawSelectionNames = row[2];
                var rawSelectionStatuses = row[3];
                var rawSelectionTradability = row[4];

                var responseMarket = response.Markets.SingleOrDefault(m => m.Id == marketId);
                Assert.IsNotNull(responseMarket);

                Assert.False(string.IsNullOrWhiteSpace(marketName),
                    string.Format("Market {0} has no market name in the test", marketId));
                Assert.False(string.IsNullOrWhiteSpace(rawSelectionNames),
                    string.Format("Market {0} has no selection names in the test", marketId));

                Assert.AreEqual(marketName, responseMarket.DisplayName, "Market {0} doesnot exists with the same name");

                const char delimiter = '_';
                var selectionNames = rawSelectionNames.Trim().Split(delimiter);
                var selectionStatuses = rawSelectionStatuses.Trim().Split(delimiter);
                var selectionTradability = rawSelectionTradability.Trim().Split(delimiter);

                Assert.AreEqual(selectionNames.Length, responseMarket.Selections.Count);
                Assert.AreEqual(selectionStatuses.Length, selectionNames.Length);
                Assert.AreEqual(selectionTradability.Length, selectionNames.Length);

                for (int i = 0; i < selectionNames.Length; i++)
                {
                    Assert.AreEqual(selectionNames[i], responseMarket.Selections[i].DisplayName);

                    var parsedStatus = Enum.Parse(typeof (SelectionStatus), selectionStatuses[i]);
                    Assert.AreEqual(parsedStatus, responseMarket.Selections[i].Status);

                    var paresdTradability = Boolean.Parse(selectionTradability[i]);
                    Assert.AreEqual(paresdTradability, responseMarket.Selections[i].Tradable);
                }
            }
        }
    }
}
