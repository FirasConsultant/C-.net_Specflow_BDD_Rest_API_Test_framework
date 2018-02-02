﻿// ------------------------------------------------------------------------------
//  <auto-generated>
//      This code was generated by SpecFlow (http://www.specflow.org/).
//      SpecFlow Version:1.9.0.77
//      SpecFlow Generator Version:1.9.0.0
//      Runtime Version:4.0.30319.18444
// 
//      Changes to this file may cause incorrect behavior and will be lost if
//      the code is regenerated.
//  </auto-generated>
// ------------------------------------------------------------------------------
#region Designer generated code
#pragma warning disable
namespace Specs.SS.Pricing.Football
{
    using TechTalk.SpecFlow;
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("TechTalk.SpecFlow", "1.9.0.77")]
    [System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
    [NUnit.Framework.TestFixtureAttribute()]
    [NUnit.Framework.DescriptionAttribute("FootballAssign2RLaddertoMD")]
    public partial class FootballAssign2RLaddertoMDFeature
    {
        
        private static TechTalk.SpecFlow.ITestRunner testRunner;
        
#line 1 "FootballAssign2RLaddertoMD.feature"
#line hidden
        
        [NUnit.Framework.TestFixtureSetUpAttribute()]
        public virtual void FeatureSetup()
        {
            testRunner = TechTalk.SpecFlow.TestRunnerManager.GetTestRunner();
            TechTalk.SpecFlow.FeatureInfo featureInfo = new TechTalk.SpecFlow.FeatureInfo(new System.Globalization.CultureInfo("en-US"), "FootballAssign2RLaddertoMD", "In order to assign Single or Multiple 2Runner Ladders to Markets\r\n  As a Customer" +
                    "\r\n  I want to see only the 2way markets that have 2 runner ladders", ProgrammingLanguage.CSharp, ((string[])(null)));
            testRunner.OnFeatureStart(featureInfo);
        }
        
        [NUnit.Framework.TestFixtureTearDownAttribute()]
        public virtual void FeatureTearDown()
        {
            testRunner.OnFeatureEnd();
            testRunner = null;
        }
        
        [NUnit.Framework.SetUpAttribute()]
        public virtual void TestInitialize()
        {
        }
        
        [NUnit.Framework.TearDownAttribute()]
        public virtual void ScenarioTearDown()
        {
            testRunner.OnScenarioEnd();
        }
        
        public virtual void ScenarioSetup(TechTalk.SpecFlow.ScenarioInfo scenarioInfo)
        {
            testRunner.OnScenarioStart(scenarioInfo);
        }
        
        public virtual void ScenarioCleanup()
        {
            testRunner.CollectScenarioErrors();
        }
        
        [NUnit.Framework.TestAttribute()]
        [NUnit.Framework.DescriptionAttribute("2Runner Ladder for 2 way markets (NO ET, No PT)")]
        public virtual void _2RunnerLadderFor2WayMarketsNOETNoPT()
        {
            TechTalk.SpecFlow.ScenarioInfo scenarioInfo = new TechTalk.SpecFlow.ScenarioInfo("2Runner Ladder for 2 way markets (NO ET, No PT)", ((string[])(null)));
#line 6
this.ScenarioSetup(scenarioInfo);
#line hidden
            TechTalk.SpecFlow.Table table1 = new TechTalk.SpecFlow.Table(new string[] {
                        "Name",
                        "Value"});
            table1.AddRow(new string[] {
                        "MatchLength",
                        "90"});
            table1.AddRow(new string[] {
                        "EtMatchLength",
                        "0"});
            table1.AddRow(new string[] {
                        "ExtratimeActive",
                        "false"});
            table1.AddRow(new string[] {
                        "PenaltiesActive",
                        "false"});
#line 7
    testRunner.Given("I have created new TwoRunner Default Ladder with the name \'ATDefault2RunnerLadder" +
                    "\' and a new Definition as \'ATDefinition\' for \'Football\' with following BaseVaria" +
                    "bles", ((string)(null)), table1, "Given ");
#line hidden
            TechTalk.SpecFlow.Table table2 = new TechTalk.SpecFlow.Table(new string[] {
                        "Market Type Name",
                        "Ladder Name"});
            table2.AddRow(new string[] {
                        "Team Goal By Interval",
                        "ATDefault2RunnerLadder"});
            table2.AddRow(new string[] {
                        "Win Either Half",
                        "ATDefault2RunnerLadder"});
            table2.AddRow(new string[] {
                        "Draw No Bet",
                        "ATDefault2RunnerLadder"});
            table2.AddRow(new string[] {
                        "Clean Sheet",
                        "ATDefault2RunnerLadder"});
#line 13
    testRunner.When("I try to assign the following Ladders to the following Market Types", ((string)(null)), table2, "When ");
#line 19
    testRunner.Then("I should be able to assign and save the Definition", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
            this.ScenarioCleanup();
        }
        
        [NUnit.Framework.TestAttribute()]
        [NUnit.Framework.DescriptionAttribute("2Runner Ladder for 3 way markets (NO ET, No PT)")]
        public virtual void _2RunnerLadderFor3WayMarketsNOETNoPT()
        {
            TechTalk.SpecFlow.ScenarioInfo scenarioInfo = new TechTalk.SpecFlow.ScenarioInfo("2Runner Ladder for 3 way markets (NO ET, No PT)", ((string[])(null)));
#line 21
this.ScenarioSetup(scenarioInfo);
#line hidden
            TechTalk.SpecFlow.Table table3 = new TechTalk.SpecFlow.Table(new string[] {
                        "Name",
                        "Value"});
            table3.AddRow(new string[] {
                        "MatchLength",
                        "90"});
            table3.AddRow(new string[] {
                        "EtMatchLength",
                        "0"});
            table3.AddRow(new string[] {
                        "ExtratimeActive",
                        "false"});
            table3.AddRow(new string[] {
                        "PenaltiesActive",
                        "false"});
#line 22
    testRunner.Given("I have created new TwoRunner Default Ladder with the name \'ATDefault2RunnerLadder" +
                    "\' and a new Definition as \'ATDefinition\' for \'Football\' with following BaseVaria" +
                    "bles", ((string)(null)), table3, "Given ");
#line hidden
            TechTalk.SpecFlow.Table table4 = new TechTalk.SpecFlow.Table(new string[] {
                        "Market Type Name",
                        "Ladder Name"});
            table4.AddRow(new string[] {
                        "Match Winner",
                        "ATDefault2RunnerLadder"});
            table4.AddRow(new string[] {
                        "Match Winning Margin",
                        "ATDefault2RunnerLadder"});
#line 28
    testRunner.When("I try to assign the following Ladders to the following Market Types", ((string)(null)), table4, "When ");
#line 32
    testRunner.Then("I should not be able to assign and save the Definition", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
            this.ScenarioCleanup();
        }
        
        [NUnit.Framework.TestAttribute()]
        [NUnit.Framework.DescriptionAttribute("2Runner Ladder for both 2 way and 3 way markets (NO ET, No PT)")]
        public virtual void _2RunnerLadderForBoth2WayAnd3WayMarketsNOETNoPT()
        {
            TechTalk.SpecFlow.ScenarioInfo scenarioInfo = new TechTalk.SpecFlow.ScenarioInfo("2Runner Ladder for both 2 way and 3 way markets (NO ET, No PT)", ((string[])(null)));
#line 34
this.ScenarioSetup(scenarioInfo);
#line hidden
            TechTalk.SpecFlow.Table table5 = new TechTalk.SpecFlow.Table(new string[] {
                        "Name",
                        "Value"});
            table5.AddRow(new string[] {
                        "MatchLength",
                        "90"});
            table5.AddRow(new string[] {
                        "EtMatchLength",
                        "0"});
            table5.AddRow(new string[] {
                        "ExtratimeActive",
                        "false"});
            table5.AddRow(new string[] {
                        "PenaltiesActive",
                        "false"});
#line 35
    testRunner.Given("I have created new TwoRunner Default Ladder with the name \'ATDefault2RunnerLadder" +
                    "\' and a new Definition as \'ATDefinition\' for \'Football\' with following BaseVaria" +
                    "bles", ((string)(null)), table5, "Given ");
#line hidden
            TechTalk.SpecFlow.Table table6 = new TechTalk.SpecFlow.Table(new string[] {
                        "Market Type Name",
                        "Ladder Name"});
            table6.AddRow(new string[] {
                        "Team Goal By Interval",
                        "ATDefault2RunnerLadder"});
            table6.AddRow(new string[] {
                        "Win Either Half",
                        "ATDefault2RunnerLadder"});
            table6.AddRow(new string[] {
                        "Draw No Bet",
                        "ATDefault2RunnerLadder"});
            table6.AddRow(new string[] {
                        "Clean Sheet",
                        "ATDefault2RunnerLadder"});
            table6.AddRow(new string[] {
                        "Match Winner",
                        "ATDefault2RunnerLadder"});
            table6.AddRow(new string[] {
                        "Match Winning Margin",
                        "ATDefault2RunnerLadder"});
#line 41
    testRunner.When("I try to assign the following Ladders to the following Market Types", ((string)(null)), table6, "When ");
#line 49
    testRunner.Then("I should not be able to assign and save the Definition", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
            this.ScenarioCleanup();
        }
        
        [NUnit.Framework.TestAttribute()]
        [NUnit.Framework.DescriptionAttribute("Assigning multiple 2Runner Ladders to 2 way markets (NO ET, No PT)")]
        public virtual void AssigningMultiple2RunnerLaddersTo2WayMarketsNOETNoPT()
        {
            TechTalk.SpecFlow.ScenarioInfo scenarioInfo = new TechTalk.SpecFlow.ScenarioInfo("Assigning multiple 2Runner Ladders to 2 way markets (NO ET, No PT)", ((string[])(null)));
#line 51
this.ScenarioSetup(scenarioInfo);
#line hidden
            TechTalk.SpecFlow.Table table7 = new TechTalk.SpecFlow.Table(new string[] {
                        "Name",
                        "Value"});
            table7.AddRow(new string[] {
                        "MatchLength",
                        "90"});
            table7.AddRow(new string[] {
                        "EtMatchLength",
                        "0"});
            table7.AddRow(new string[] {
                        "ExtratimeActive",
                        "false"});
            table7.AddRow(new string[] {
                        "PenaltiesActive",
                        "false"});
#line 52
    testRunner.Given("I have created new TwoRunner Default Ladder with the name \'ATDefault2RunnerLadder" +
                    "\' and a new Definition as \'ATDefinition\' for \'Football\' with following BaseVaria" +
                    "bles", ((string)(null)), table7, "Given ");
#line 58
    testRunner.Given("I have created new TwoRunner Steps Ladder with the name \'ATSteps2RunnerLadder\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Given ");
#line hidden
            TechTalk.SpecFlow.Table table8 = new TechTalk.SpecFlow.Table(new string[] {
                        "Market Type Name",
                        "Ladder Name"});
            table8.AddRow(new string[] {
                        "Team Goal By Interval",
                        "ATSteps2RunnerLadder"});
            table8.AddRow(new string[] {
                        "Win Either Half",
                        "ATSteps2RunnerLadder"});
            table8.AddRow(new string[] {
                        "Draw No Bet",
                        "ATDefault2RunnerLadder"});
            table8.AddRow(new string[] {
                        "Clean Sheet",
                        "ATDefault2RunnerLadder"});
#line 59
    testRunner.When("I try to assign the following Ladders to the following Market Types", ((string)(null)), table8, "When ");
#line 65
    testRunner.Then("I should be able to assign and save the Definition", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
            this.ScenarioCleanup();
        }
        
        [NUnit.Framework.TestAttribute()]
        [NUnit.Framework.DescriptionAttribute("Assigning multiple 2Runner Ladders to both 2 way and 3 way markets (NO ET, No PT)" +
            "")]
        public virtual void AssigningMultiple2RunnerLaddersToBoth2WayAnd3WayMarketsNOETNoPT()
        {
            TechTalk.SpecFlow.ScenarioInfo scenarioInfo = new TechTalk.SpecFlow.ScenarioInfo("Assigning multiple 2Runner Ladders to both 2 way and 3 way markets (NO ET, No PT)" +
                    "", ((string[])(null)));
#line 67
this.ScenarioSetup(scenarioInfo);
#line hidden
            TechTalk.SpecFlow.Table table9 = new TechTalk.SpecFlow.Table(new string[] {
                        "Name",
                        "Value"});
            table9.AddRow(new string[] {
                        "MatchLength",
                        "90"});
            table9.AddRow(new string[] {
                        "EtMatchLength",
                        "0"});
            table9.AddRow(new string[] {
                        "ExtratimeActive",
                        "false"});
            table9.AddRow(new string[] {
                        "PenaltiesActive",
                        "false"});
#line 68
    testRunner.Given("I have created new TwoRunner Default Ladder with the name \'ATDefault2RunnerLadder" +
                    "\' and a new Definition as \'ATDefinition\' for \'Football\' with following BaseVaria" +
                    "bles", ((string)(null)), table9, "Given ");
#line 74
    testRunner.Given("I have created new TwoRunner Steps Ladder with the name \'ATSteps2RunnerLadder\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Given ");
#line hidden
            TechTalk.SpecFlow.Table table10 = new TechTalk.SpecFlow.Table(new string[] {
                        "Market Type Name",
                        "Ladder Name"});
            table10.AddRow(new string[] {
                        "Team Goal By Interval",
                        "ATSteps2RunnerLadder"});
            table10.AddRow(new string[] {
                        "Win Either Half",
                        "ATSteps2RunnerLadder"});
            table10.AddRow(new string[] {
                        "Draw No Bet",
                        "ATDefault2RunnerLadder"});
            table10.AddRow(new string[] {
                        "Clean Sheet",
                        "ATDefault2RunnerLadder"});
            table10.AddRow(new string[] {
                        "Match Winner",
                        "ATSteps2RunnerLadder"});
            table10.AddRow(new string[] {
                        "Match Winning Margin",
                        "ATDefault2RunnerLadder"});
#line 75
    testRunner.When("I try to assign the following Ladders to the following Market Types", ((string)(null)), table10, "When ");
#line 83
    testRunner.Then("I should not be able to assign and save the Definition", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
            this.ScenarioCleanup();
        }
    }
}
#pragma warning restore
#endregion
