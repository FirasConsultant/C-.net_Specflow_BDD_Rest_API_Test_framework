using System;
using System.Collections.Generic;
using System.Threading;
using NUnit.Framework;
using SS.GTP.Domain.Model;
using SS.GTP.Domain.Rest;
using SS.GTP.Domain.Sports;
using SS.Pricing.SDK.Builders;
using SS.Pricing.SDK.Clients;
using SS.Pricing.SDK.Resources;
using TechTalk.SpecFlow;
using TechTalk.SpecFlow.Assist;
using SpecFlow.Assist.Dynamic;
using System.Linq;

namespace SS.Pricing.AutomationTesting
{
    [Binding]
    public class SharedStepsLadders
    {
        [Given(@"I have created new Standard Ladder with the name '(.*)'")]
        public void GivenIHaveCreatedNewStandardLadderWithTheName(string ladderName)
        {
            var ladderBuilder = new LadderBuilder();
            var ladder = ladderBuilder.WithName(ladderName).WithDefaultSteps().Build();

            var connectClient = ScenarioContext.Current.Get<ConnectClient>(Constants.KeyConnectClient);
            var createdLadder = connectClient.CreateLadder(ladder);
            ScenarioContext.Current.Add(Constants.KeyLadder, createdLadder);

            //Assert
            Assert.That(ladder.Name, Is.EqualTo(ladderName));
            Assert.NotNull(ladder.Steps);
        }

       [Given(@"I have created a ladder and updated it with a (.*)")]
        public void GivenIHaveCreatedALadderAndUpdatedItWithANewName(string newName)
        {
            var ladder = new LadderBuilder().WithDefaultSteps().Build();
            var connectClient = ScenarioContext.Current.Get<ConnectClient>(Constants.KeyConnectClient);
            var ladderResource = connectClient.CreateLadder(ladder);
            ScenarioContext.Current.Add(Constants.KeyLadder, ladderResource);

            //Update it to a new name
            ladderResource.Ladder.Name = newName;
            connectClient.UpdateLadder(ladderResource);

        }

        [Then(@"The Ladder that i have created should have (.*)")]
        public void ThenTheLadderThatIHaveCreatedShouldHaveTheNewName(string newName)
        {
            var ladderResource = ScenarioContext.Current.Get<LadderResource>(Constants.KeyLadder);
            var updatedLadder = ladderResource.Ladder;
            Assert.NotNull(updatedLadder);
            Assert.That(updatedLadder.Name, Is.EqualTo(newName));
        }
       
        [Then(@"The Ladder that i have created should contain the following data")]
        public void ThenTheLadderThatIHaveCreatedShouldContainTheFollowingData(Table table)
        {
            var ladderResource = ScenarioContext.Current.Get<LadderResource>(Constants.KeyLadder);
            var ladder = ladderResource.Ladder;
            table.CompareToSet(ladder.Steps);
        }
       
        [Given(@"I have created new TwoRunner Steps Ladder with the name '(.*)'")]
        public void GivenIHaveCreatedNewTwoRunnerStepsLadderWithTheName(string ladderName)
        {
            var twoRunnerSteps = new List<TwoRunnerStep>();
            var ladderBuilder = new LadderBuilder();

            var ladder =ladderBuilder.WithName(ladderName).WithTwoRunnerSteps(new List<TwoRunnerStep>(twoRunnerSteps)).Build();
            ladder.TypeOfLadder = LadderType.TwoRunner;

            ladder.TwoRunnerSteps.Add(new TwoRunnerStep { Fractional = "1/500", Probability = 0.998004, UKDecimal = 1.002, UnderdogProbability = 0.019608, UnderdogUKDecimal = 51, UnderdogFractional = "50/1" });
            ladder.TwoRunnerSteps.Add(new TwoRunnerStep { Fractional = "1/250", Probability = 0.996016, UKDecimal = 1.004, UnderdogProbability = 0.038462, UnderdogUKDecimal = 26, UnderdogFractional = "25/1" });
            ladder.TwoRunnerSteps.Add(new TwoRunnerStep { Fractional = "1/200", Probability = 0.995025, UKDecimal = 1.005, UnderdogProbability = 0.047619, UnderdogUKDecimal = 21, UnderdogFractional = "20/1" });
            ladder.TwoRunnerSteps.Add(new TwoRunnerStep { Fractional = "1/100", Probability = 0.990099, UKDecimal = 1.01, UnderdogProbability = 0.058824, UnderdogUKDecimal = 17, UnderdogFractional = "16/1" });
            ladder.TwoRunnerSteps.Add(new TwoRunnerStep { Fractional = "1/66", Probability = 0.985075, UKDecimal = 1.015, UnderdogProbability = 0.076923, UnderdogUKDecimal = 13, UnderdogFractional = "12/2" });
            ladder.TwoRunnerSteps.Add(new TwoRunnerStep { Fractional = "1/50", Probability = 0.980392, UKDecimal = 1.02, UnderdogProbability = 0.090909, UnderdogUKDecimal = 11, UnderdogFractional = "10/1" });
            ladder.TwoRunnerSteps.Add(new TwoRunnerStep { Fractional = "1/33", Probability = 0.970588, UKDecimal = 1.03, UnderdogProbability = 0.1, UnderdogUKDecimal = 10, UnderdogFractional = "9/1" });
            ladder.TwoRunnerSteps.Add(new TwoRunnerStep { Fractional = "1/25", Probability = 0.961538, UKDecimal = 1.04, UnderdogProbability = 0.111111, UnderdogUKDecimal = 9, UnderdogFractional = "8/1" });
            ladder.TwoRunnerSteps.Add(new TwoRunnerStep { Fractional = "1/20", Probability = 0.952381, UKDecimal = 1.05, UnderdogProbability = 0.117647, UnderdogUKDecimal = 8.5, UnderdogFractional = "15/2" });
            ladder.TwoRunnerSteps.Add(new TwoRunnerStep { Fractional = "1/16", Probability = 0.941176, UKDecimal = 1.063, UnderdogProbability = 0.125, UnderdogUKDecimal = 8, UnderdogFractional = "7/1" });
            ladder.TwoRunnerSteps.Add(new TwoRunnerStep { Fractional = "1/14", Probability = 0.933333, UKDecimal = 1.071, UnderdogProbability = 0.133333, UnderdogUKDecimal = 7.5, UnderdogFractional = "13/2" });
            ladder.TwoRunnerSteps.Add(new TwoRunnerStep { Fractional = "1/12", Probability = 0.923077, UKDecimal = 1.083, UnderdogProbability = 0.142857, UnderdogUKDecimal = 7, UnderdogFractional = "6/1" });
            ladder.TwoRunnerSteps.Add(new TwoRunnerStep { Fractional = "1/10", Probability = 0.909091, UKDecimal = 1.1, UnderdogProbability = 0.153846, UnderdogUKDecimal = 6.5, UnderdogFractional = "11/2" });
            ladder.TwoRunnerSteps.Add(new TwoRunnerStep { Fractional = "1/9", Probability = 0.9, UKDecimal = 1.111, UnderdogProbability = 0.166667, UnderdogUKDecimal = 6, UnderdogFractional = "5/1" });
            ladder.TwoRunnerSteps.Add(new TwoRunnerStep { Fractional = "2/8", Probability = 0.888889, UKDecimal = 1.125, UnderdogProbability = 0.181818, UnderdogUKDecimal = 5.5, UnderdogFractional = "9/2" });
            ladder.TwoRunnerSteps.Add(new TwoRunnerStep { Fractional = "1/7", Probability = 0.875, UKDecimal = 1.143, UnderdogProbability = 0.2, UnderdogUKDecimal = 5, UnderdogFractional = "4/1" });
            ladder.TwoRunnerSteps.Add(new TwoRunnerStep { Fractional = "2/6", Probability = 0.857143, UKDecimal = 1.167, UnderdogProbability = 0.222222, UnderdogUKDecimal = 4.5, UnderdogFractional = "7/2" });
            ladder.TwoRunnerSteps.Add(new TwoRunnerStep { Fractional = "3/5", Probability = 0.833333, UKDecimal = 1.2, UnderdogProbability = 0.230769, UnderdogUKDecimal = 4.333, UnderdogFractional = "10/3" });
            ladder.TwoRunnerSteps.Add(new TwoRunnerStep { Fractional = "1/9", Probability = 0.818182, UKDecimal = 1.222, UnderdogProbability = 0.25, UnderdogUKDecimal = 4, UnderdogFractional = "3/1" });
            ladder.TwoRunnerSteps.Add(new TwoRunnerStep { Fractional = "4/4", Probability = 0.8, UKDecimal = 1.25, UnderdogProbability = 0.266667, UnderdogUKDecimal = 3.75, UnderdogFractional = "11/4" });
            ladder.TwoRunnerSteps.Add(new TwoRunnerStep { Fractional = "2/7", Probability = 0.777778, UKDecimal = 1.286, UnderdogProbability = 0.285714, UnderdogUKDecimal = 3.5, UnderdogFractional = "5/2" });

            var connectClient = ScenarioContext.Current.Get<ConnectClient>(Constants.KeyConnectClient);
            var createdLadder = connectClient.CreateLadder(ladder);

            AddToCurrentScenarioContext(Constants.KeyLadder, createdLadder);

            //Assert
            Assert.That(ladder.Name, Is.EqualTo(ladderName));
            Assert.NotNull(ladder.TwoRunnerSteps);
        }

        [Given(@"I have created a definition with new TwoRunner Ladder '(.*)' for sport '(.*)' with following BaseVariables")]
        public void GivenIHaveCreatedADefinitionWithNewTwoRunnerLadderForSportWithFollowingBaseVariables(string ladderName, string sport, Table table)
        {
            var baseVariables = SharedStepsMarketDefinitions.CreateBaseVariables(sport, table);

            var connectClient = ScenarioContext.Current.Get<ConnectClient>(Constants.KeyConnectClient);

            //Create a Two Runner Ladder with the specified name
            var ladderBuilder = new LadderBuilder();
            var ladder = ladderBuilder.WithName(ladderName).WithDefaultTwoRunnerSteps().Build();
            var ladderResource = connectClient.CreateLadder(ladder);

            var twoRunnerLadders = new List<Ladder>();
            twoRunnerLadders.Add(ladderResource.Ladder);

            //Create a definition with the two runner ladder created above
            var definitionBuilder = new DefinitionBuilder();
            var definition = definitionBuilder.ForSport(Sports.ToRestRelation[sport])
                                              .WithBaseVariables(baseVariables)
                                              .WithTwoRunnerLadders(twoRunnerLadders)
                                              .WithDefaultLadder()
                                              .WithDefaultTradingRules()
                                              .Build();

            var createdDefinitionResource = connectClient.CreateDefinition(definition);

           ScenarioContext.Current.Add(Constants.KeyDefinition, createdDefinitionResource);
           AddToCurrentScenarioContext(Constants.KeyLadder, ladderResource);
        }

       [Given(@"I have created new TwoRunner Default Ladder with the name '(.*)' and a new Definition as '(.*)' for '(.*)' with following BaseVariables")]
        public void GivenIHaveCreatedNewTwoRunnerDefaultLadderWithTheNameAndANewDefinitionAsForWithFollowingBaseVariables(string ladderName, string definitionName, string sport, Table table)
        {
            var baseVariables = SharedStepsMarketDefinitions.CreateBaseVariables(sport, table);

            var connectClient = ScenarioContext.Current.Get<ConnectClient>(Constants.KeyConnectClient);

            var definitionBuilder = new DefinitionBuilder();
            var definition = definitionBuilder.ForSport(Sports.ToRestRelation[sport])
                                              .WithBaseVariables(baseVariables)
                                              .WithDefaultLadder()
                                              .WithDefaultTradingRules()
                                              .Build();

            var createdDefinitionResource = connectClient.CreateDefinition(definition);

            var ladderBuilder = new LadderBuilder();
            var ladder = ladderBuilder.WithName(ladderName).WithDefaultTwoRunnerSteps().Build();
            var ladderResource = connectClient.CreateLadder(ladder);

            ScenarioContext.Current.Add(Constants.KeyDefinition, createdDefinitionResource);
            AddToCurrentScenarioContext(Constants.KeyLadder, ladderResource);
        }

        [Given(@"I have created new TwoRunner Default Ladder with the name '(.*)' and a new Definition as '(.*)' for '(.*)' with Default BaseVariables")]
        public void GivenIHaveCreatedNewTwoRunnerDefaultLadderWithTheNameAndANewDefinitionAsForWithDefaultBaseVariables(string ladderName, string definitionName, string sport)
        {
            var baseVariables = SharedStepsMarketDefinitions.CreateDefaultBaseVariables(sport);
            var connectClient = ScenarioContext.Current.Get<ConnectClient>(Constants.KeyConnectClient);

            var definitionBuilder = new DefinitionBuilder();
            var definition = definitionBuilder.ForSport(Sports.ToRestRelation[sport])
                                              .WithBaseVariables(baseVariables)
                                              .WithDefaultLadder()
                                              .WithDefaultTradingRules()
                                              .Build();

            var createdDefinitionResource = connectClient.CreateDefinition(definition);

            var ladderBuilder = new LadderBuilder();
            var ladder = ladderBuilder.WithName(ladderName).WithDefaultTwoRunnerSteps().Build();
            var ladderResource = connectClient.CreateLadder(ladder);

            ScenarioContext.Current.Add(Constants.KeyDefinition, createdDefinitionResource);
            AddToCurrentScenarioContext(Constants.KeyLadder, ladderResource);
        }


        [When(@"I try to assign the following Ladders to the following Market Types")]
        public void WhenITryToAssignTheFollowingLaddersToTheFollowingMarketTypes(Table table)
        {
            const string headingMarketTypeName = "Market Type Name";
            const string headingLadderName = "Ladder Name";

            var ladderResources = ScenarioContext.Current.Get<List<LadderResource>>(Constants.KeyLadder);
            var ladders = ladderResources.Select(r => r.Ladder).ToList();
            var definitionResource = ScenarioContext.Current.Get<DefinitionResource>(Constants.KeyDefinition);

            foreach (var row in table.Rows)
            {
                if (!String.IsNullOrWhiteSpace(row[headingLadderName]))
                {
                    var marketTypeName = row[headingMarketTypeName];
                    var marketTypeFilter = definitionResource.Definition.Filter.MarketTypeFilters.Single(f => String.CompareOrdinal(f.DisplayName, marketTypeName) == 0);
                    var ladder = ladders.Single(l => String.CompareOrdinal(l.Name, row[headingLadderName]) == 0);
                    marketTypeFilter.TwoRunnerLadderId = ladder.Id;
                }
            }
        }

        [Given(@"I assigned the new two runner ladder to the following Market Types")]
        public void GivenIAssignedTheNewTwoRunnerLadderToTheFollowingMarketTypes(Table table)
        {
            const string headingMarketTypeName = "Market Type Name";
            const string headingLadderName = "Ladder Name";

            var ladderResources = ScenarioContext.Current.Get<List<LadderResource>>(Constants.KeyLadder);
            var ladders = ladderResources.Select(r => r.Ladder).ToList();
            var definitionResource = ScenarioContext.Current.Get<DefinitionResource>(Constants.KeyDefinition);

            foreach (var row in table.Rows)
            {
                if (!String.IsNullOrWhiteSpace(row[headingLadderName]))
                {
                    var marketTypeName = row[headingMarketTypeName];
                    var marketTypeFilter = definitionResource.Definition.Filter.MarketTypeFilters.Single(f => String.CompareOrdinal(f.DisplayName, marketTypeName) == 0);
                    var ladder = ladders.Single(l => String.CompareOrdinal(l.Name, row[headingLadderName]) == 0);
                    marketTypeFilter.TwoRunnerLadderId = ladder.Id;
                }
            }

            var connectClient = ScenarioContext.Current.Get<ConnectClient>(Constants.KeyConnectClient);
            var storedDefinitionResource = ScenarioContext.Current.Get<DefinitionResource>(Constants.KeyDefinition);

            var updatedDefinitionResource = connectClient.UpdateDefinition(storedDefinitionResource);

            Assert.IsNotNull(updatedDefinitionResource);
        }

       [When(@"I create a fixture in mode for the same Sport '(.*)'")]
        public void WhenICreateAFixtureInModeForTheSameSport(string sport)
        {
    
            const string tradeModeStr = "Manual";
            
            // Parse
            var tradeMode = (TradeMode)Enum.Parse(typeof(TradeMode), tradeModeStr);

            //Get Client
            var connectClient = ScenarioContext.Current.Get<ConnectClient>(Constants.KeyConnectClient);
            var updatedDefinitionResource = ScenarioContext.Current.Get<DefinitionResource>(Constants.KeyDefinition);

            //Create public Fixture
            var fixture = new FixtureBuilder().ForSport(Sports.ToRestRelation[sport])
                .ForPublicFixture()
                .Build();

            var publicFixtureResource = connectClient.CreatePublicFixture(fixture);

            var linkedFixtureResource = connectClient.CreateLinkedFixture(publicFixtureResource.Fixture,
                updatedDefinitionResource.Definition);

            // Update trade mode
            if (linkedFixtureResource.Fixture.TradeMode != tradeMode)
            {
                linkedFixtureResource.Fixture.TradeMode = tradeMode;
                linkedFixtureResource = connectClient.UpdateFixture(linkedFixtureResource);
            }

            ScenarioContext.Current.Add(Constants.KeyLinkedCe, linkedFixtureResource);
        }
        
        [When(@"I price the fixture by setting the match status to (.*)")]
        public void WhenIPriceTheFixtureBySettingTheMatchStatusToInRunning(string matchStatusStr)
        {
            //Get the Fixture
            var linkedCeResource = ScenarioContext.Current.Get<FixtureResource>(Constants.KeyLinkedCe);

            //Parse
            var matchStatus = (MatchStatus)Enum.Parse(typeof(MatchStatus), matchStatusStr);
            linkedCeResource.Fixture.MatchStatus = matchStatus;
            var connectClient = ScenarioContext.Current.Get<ConnectClient>(Constants.KeyConnectClient);
            connectClient.UpdateFixture(linkedCeResource);
            connectClient.PriceFixture(linkedCeResource);

            //Assert to Match Status
            Assert.That(linkedCeResource.Fixture.MatchStatus, Is.EqualTo(matchStatus));

            ScenarioContext.Current.Add(Constants.KeyPricingResponse, linkedCeResource.LastPricingResponse);
        }
        
      [Then(@"I should be able to assign and save the Definition")]
        public void ThenIShouldBeAbleToAssignAndSaveTheDefinition()
        {
            var connectClient = ScenarioContext.Current.Get<ConnectClient>(Constants.KeyConnectClient);
            var storedDefinitionResource = ScenarioContext.Current.Get<DefinitionResource>(Constants.KeyDefinition);

            var updatedDefinitionResource = connectClient.UpdateDefinition(storedDefinitionResource);

            Assert.IsNotNull(updatedDefinitionResource);
        }

        [Then(@"I should not be able to assign and save the Definition")]
        public void ThenIShouldNotBeAbleToAssignAndSaveTheDefinition()
        {
            var connectClient = ScenarioContext.Current.Get<ConnectClient>(Constants.KeyConnectClient);
            var storedDefinitionResource = ScenarioContext.Current.Get<DefinitionResource>(Constants.KeyDefinition);

            var updateFailed = CheckForNullException(() => connectClient.UpdateDefinition(storedDefinitionResource), null);
            
            Assert.IsTrue(updateFailed);
        }

        [Given(@"I have created new TwoRunner Default Ladder with the name '(.*)'")]
        public void GivenIHaveCreatedNewTwoRunnerDefaultLadderWithTheName(string ladderName)
        {
            var ladderBuilder = new LadderBuilder();
            var ladder = ladderBuilder.WithName(ladderName).WithDefaultTwoRunnerSteps().Build();

            var connectClient = ScenarioContext.Current.Get<ConnectClient>(Constants.KeyConnectClient);
            var createdLadder = connectClient.CreateLadder(ladder);

            AddToCurrentScenarioContext(Constants.KeyLadder, createdLadder);

            //Assert
            Assert.That(ladder.Name, Is.EqualTo(ladderName));
            Assert.NotNull(ladder.TwoRunnerSteps);
        }

        [Then(@"the last response should contain the following market and selection names with the prices")]
        public void ThenTheLastResponseShouldContainTheFollowingMarketAndSelectionNamesWithThePrices(Table table)
        {
            var response = ScenarioContext.Current.Get<BasePricingResponse>(Constants.KeyPricingResponse);

            Assert.IsFalse(table.RowCount == 0);

            var rowMarketGroups = table.Rows.GroupBy(r => r[1]);
            foreach (var group in rowMarketGroups)
            {
                var responseMarket = response.Markets.Single(m => m.DisplayName == group.Key);

                Assert.AreEqual(group.Count(), responseMarket.Selections.Count);

                foreach (var row in group)
                {
                    var selectionId = row[0];
                    var selectionName = row[2];
                    var selectionPrice = Double.Parse(row[3]);

                    var selection = responseMarket.Selections.Single(s => s.Id == selectionId);

                    Assert.That(selection.DisplayName, Is.EqualTo(selectionName));
                    Assert.That(selection.Price, Is.EqualTo(selectionPrice));
                }
            }
        }

        [Then(@"The Two Runner Ladder that i have created should contain the following data")]
        public void ThenTheTwoRunnerLadderThatIHaveCreatedShouldContainTheFollowingData(Table table)
        {
            var ladderResourceList = ScenarioContext.Current.Get<List<LadderResource>>(Constants.KeyLadder);
            var ladderResource = ladderResourceList.Single();
            var ladder = ladderResource.Ladder;
            var steps = table.CreateSet<TwoRunnerStep>();

            foreach (var ladderStep in steps)
            {
                var stepsFound = ladder.TwoRunnerSteps.Any(s => s.Probability == ladderStep.Probability
                                                                && s.UnderdogProbability == ladderStep.UnderdogProbability
                                                                && s.UKDecimal == ladderStep.UKDecimal
                                                                && s.UnderdogUKDecimal == ladderStep.UnderdogUKDecimal
                                                                && s.Fractional == ladderStep.Fractional
                                                                && s.UnderdogFractional == ladderStep.UnderdogFractional
                                                                && s.EuroDecimal == ladderStep.EuroDecimal
                                                                && s.UnderdogEuroDecimal == ladderStep.UnderdogEuroDecimal
                                                                && s.US == ladderStep.US
                                                                && s.UnderdogUS == ladderStep.UnderdogUS
                                                                && s.Malay == ladderStep.Malay
                                                                && s.UnderdogMalay == ladderStep.UnderdogMalay
                                                                && s.HK == ladderStep.HK
                                                                && s.UnderdogHK == ladderStep.UnderdogHK
                                                                && s.Indo == ladderStep.Indo
                                                                && s.UnderdogIndo == ladderStep.UnderdogIndo);

                Assert.True(stepsFound);
                //table.CompareToSet(ladder.TwoRunnerSteps);
            }
        }

        [When(@"I try to create a Ladder with the name '(.*)' with the following steps")]
        public void WhenITryToCreateALadderWithTheNameWithTheFollowingSteps(string ladderName, Table table)
        {
            var steps = table.CreateSet<Step>().ToList();
            var ladder = new LadderBuilder().WithName(ladderName).WithSteps(steps).Build();
            var connectClient = ScenarioContext.Current.Get<ConnectClient>(Constants.KeyConnectClient);
            
            var ladderCreateFailed = CheckForNullException(
                () => connectClient.CreateLadder(ladder),
                () => ScenarioContext.Current.Remove(Constants.KeyLadderCreationFailure));
            
            ScenarioContext.Current.Add(Constants.KeyLadderCreationFailure, ladderCreateFailed);
        }

        [When(@"I try to create a TWORunner Ladder with the name '(.*)' with the following steps")]
        public void WhenITryToCreateATWORunnerLadderWithTheNameWithTheFollowingSteps(string ladderName, Table table)
        {
            var twoRunnerSteps = table.CreateSet<TwoRunnerStep>().ToList();
            var ladder = new Ladder
            {
                Name = ladderName,
                TwoRunnerSteps = twoRunnerSteps,
                TypeOfLadder = LadderType.TwoRunner
            };
            var connectClient = ScenarioContext.Current.Get<ConnectClient>(Constants.KeyConnectClient);

            var ladderCreateFailed = CheckForNullException(
                () => connectClient.CreateLadder(ladder),
                () => ScenarioContext.Current.Remove(Constants.KeyLadderCreationFailure));
            
            ScenarioContext.Current.Add(Constants.KeyLadderCreationFailure, ladderCreateFailed);
        }

        [Then(@"I should not be able to create a ladder")]
        public void ThenIShouldNotBeAbleToCreateALadder()
        {
            var ladderCreateFailed = ScenarioContext.Current.Get<bool>(Constants.KeyLadderCreationFailure);
            ScenarioContext.Current.Remove(Constants.KeyLadderCreationFailure);
            Assert.IsTrue(ladderCreateFailed);
        }

        [When(@"I try to create a Ladder with too many steps with the name '(.*)'")]
        public void WhenITryToCreateALadderWithTooManyStepsWithTheName(string ladderName, Table table)
        {
            var ladder = new Ladder
            {
                TypeOfLadder = LadderType.Normal,
                Steps = new List<Step>()
            };

            for (int i = 1; i <= 401; i++)
            {
                var probability = i * 0.001;
                var ukDecimal = 1 - probability;
                var newStep = new Step { Probability = probability, UKDecimal = ukDecimal };
                ladder.Steps.Add(newStep);
            }

            var connectClient = ScenarioContext.Current.Get<ConnectClient>(Constants.KeyConnectClient);

            var ladderCreateFailed = CheckForNullException(
                () => connectClient.CreateLadder(ladder),
                () => ScenarioContext.Current.Remove(Constants.KeyLadderCreationFailure));
            
            ScenarioContext.Current.Add(Constants.KeyLadderCreationFailure, ladderCreateFailed);
        }

        [When(@"I try to create a Two Runner Ladder with too many steps with the name '(.*)'")]
        public void WhenITryToCreateATwoRunnerLadderWithTooManyStepsWithTheName(string ladderName, Table table)
        {
            var ladder = new Ladder
            {
                TypeOfLadder = LadderType.TwoRunner,
                TwoRunnerSteps = new List<TwoRunnerStep>()
            };

            for (int i = 1; i <= 401; i++)
            {
                var probability = i * 0.001;
                var underdogProbability = (1 - probability) + 0.01;
                var ukDecimal = 1 - probability;
                var underdogUkDecimal = probability;

                var newStep = new TwoRunnerStep
                {
                    Probability = probability,
                    UnderdogProbability = underdogProbability,
                    UKDecimal = ukDecimal,
                    UnderdogUKDecimal = underdogUkDecimal
                };
                ladder.TwoRunnerSteps.Add(newStep);
            }

            var connectClient = ScenarioContext.Current.Get<ConnectClient>(Constants.KeyConnectClient);

            var ladderCreateFailed = CheckForNullException(
                () => connectClient.CreateLadder(ladder),
                () => ScenarioContext.Current.Remove(Constants.KeyLadderCreationFailure));
            
            ScenarioContext.Current.Add(Constants.KeyLadderCreationFailure, ladderCreateFailed);
        }

        [Given(@"I have created Standard Ladder with the name '(.*)' with the following Steps")]
        public void GivenIHaveCreatedStandardLadderWithTheNameWithTheFollowingSteps(string ladderName, Table table)
        {
            var steps = table.CreateSet<Step>().ToList();
            var ladderBuilder = new LadderBuilder();
            var ladder = ladderBuilder.WithName(ladderName).WithSteps(steps).Build();

            var connectClient = ScenarioContext.Current.Get<ConnectClient>(Constants.KeyConnectClient);
            var createdLadder = connectClient.CreateLadder(ladder);
            ScenarioContext.Current.Add(Constants.KeyLadder, createdLadder);

            //Assert
            Assert.That(ladder.Name, Is.EqualTo(ladderName));
            Assert.NotNull(ladder.Steps);
        }

        [When(@"I try to edit the ladder with the below steps")]
        public void WhenITryToEditTheLadderWithTheBelowSteps(Table table)
        {
            var ladderResource = ScenarioContext.Current.Get<LadderResource>(Constants.KeyLadder);
            ladderResource.Ladder.Steps = table.CreateSet<Step>().ToList();
            var connectClient = ScenarioContext.Current.Get<ConnectClient>(Constants.KeyConnectClient);

            var ladderUpdateFailed = CheckForNullException(() =>
            {
                var updatedLadderResource = connectClient.UpdateLadder(ladderResource);
                ScenarioContext.Current[Constants.KeyLadder] = updatedLadderResource;
            },
            () => ScenarioContext.Current.Remove(Constants.KeyLadderCreationFailure));

            ScenarioContext.Current.Add(Constants.KeyLadderCreationFailure, ladderUpdateFailed);
        }

        
        [Given(@"I have created Two Runner Ladder with the name '(.*)' with the following Steps")]
        public void GivenIHaveCreatedTwoRunnerLadderWithTheNameWithTheFollowingSteps(string ladderName, Table table)
        {
            var steps = table.CreateSet<TwoRunnerStep>().ToList();
            var ladder = new Ladder
            {
                Name = ladderName,
                TwoRunnerSteps = steps,
                TypeOfLadder = LadderType.TwoRunner
            };

            var connectClient = ScenarioContext.Current.Get<ConnectClient>(Constants.KeyConnectClient);
            var createdLadder = connectClient.CreateLadder(ladder);
            ScenarioContext.Current.Add(Constants.KeyLadder, createdLadder);

            //Assert
            Assert.That(ladder.Name, Is.EqualTo(ladderName));
            Assert.NotNull(ladder.Steps);
        }

        [When(@"I try to edit the Two Runner ladder with the below steps")]
        public void WhenITryToEditTheTwoRunnerLadderWithTheBelowSteps(Table table)
        {
            var ladderResource = ScenarioContext.Current.Get<LadderResource>(Constants.KeyLadder);
            ladderResource.Ladder.TwoRunnerSteps = table.CreateSet<TwoRunnerStep>().ToList();
            var connectClient = ScenarioContext.Current.Get<ConnectClient>(Constants.KeyConnectClient);

            var ladderUpdateFailed = CheckForNullException(() =>
            {
                var updatedLadderResource = connectClient.UpdateLadder(ladderResource);
                ScenarioContext.Current[Constants.KeyLadder] = updatedLadderResource;
            },
            () => ScenarioContext.Current.Remove(Constants.KeyLadderCreationFailure));

           
            ScenarioContext.Current.Add(Constants.KeyLadderCreationFailure, ladderUpdateFailed);
        }

        [Then(@"I should not be able to Save the edited ladder")]
        public void ThenIShouldNotBeAbleToSaveTheEditedLadder()
        {
            var ladderUpdateFailed = ScenarioContext.Current.Get<bool>(Constants.KeyLadderCreationFailure);
            ScenarioContext.Current.Remove(Constants.KeyLadderCreationFailure);
            Assert.IsTrue(ladderUpdateFailed);
        }

        [Then(@"The Two Runner Ladder that was created should contain the following data")]
        public void ThenTheTwoRunnerLadderThatWasCreatedShouldContainTheFollowingData(Table table)
        {
            var ladderResource = ScenarioContext.Current.Get<LadderResource>(Constants.KeyLadder);
            var ladder = ladderResource.Ladder;
            table.CompareToSet(ladder.TwoRunnerSteps);
        }

        private void AddToCurrentScenarioContext<T>(string key, T value)
        {
            List<T> dataList;
            var dataExists = ScenarioContext.Current.ContainsKey(key);
            if (!dataExists)
            {
                dataList = new List<T>();
                ScenarioContext.Current.Add(key, dataList);
            }
            else
            {
                dataList = ScenarioContext.Current.Get<List<T>>(key);
            }

            dataList.Add(value);
        }

        private static bool CheckForNullException(Action nullExceptionAction, Action unexpectedExceptionAction)
        {
            var expectedExceptionThrown = false;
            try
            {
                nullExceptionAction();
            }
            catch (ArgumentNullException e)
            {
                if (String.CompareOrdinal("Value cannot be null." + Environment.NewLine + "Parameter name: source", e.Message) == 0)
                {
                    expectedExceptionThrown = true;
                }
                else
                {
                    if (unexpectedExceptionAction != null)
                    {
                        unexpectedExceptionAction();
                    }
                    throw;
                }
            }

            return expectedExceptionThrown;
        }
    }
}