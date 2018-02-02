using System;
using System.Linq;
using System.Text;
using NUnit.Framework;
using SS.GTP.Domain.TradingRules;
using SS.Pricing.SDK.Builders;
using SS.Pricing.SDK.Clients;
using SS.Pricing.SDK.Resources;
using TechTalk.SpecFlow;
using TechTalk.SpecFlow.Assist;

namespace SS.Pricing.AutomationTesting
{
    [Binding]
    public class SharedStepsTradingRules
    {
        
        [Given(@"I have created new default trading rules for (.*) with the name '(.*)'")]
        public void GivenIHaveCreatedNewDefaultTradingRulesForVolleyballWithTheName(string sport,
                                                                                    string tradingRulesName)
        {
            var tradingRulesBuilder = new TradingRulesBuilder();
            var tradingRules = tradingRulesBuilder.ForSport(Sports.ToRestRelation[sport])
                                                  .WithDefaultRules()
                                                  .WithName(tradingRulesName)
                                                  .Build();

            var connectClient = ScenarioContext.Current.Get<ConnectClient>(Constants.KeyConnectClient);
            var createdTradingRulesResource = connectClient.CreateTradingRules(tradingRules);
            ScenarioContext.Current.Add(Constants.KeyTradingRules, createdTradingRulesResource);
        }


        [Then(@"The trading rules that i have created should contain the following data")]
        public void ThenTheTradingRulesThatIHaveCreatedShouldContainTheFollowingData(Table table)
        {
            var tradingRulesResource = ScenarioContext.Current.Get<TradingRulesResource>(Constants.KeyTradingRules);
//            var tradingRules = tradingRulesResource.TradingRules;
//            table.CompareToSet(tradingRules.Rules);
             var expectedTradingRules = table.CreateSet<TradingRule>();
 
            foreach (var expectedTradingRule in expectedTradingRules)
             {
                 var ruleFound = tradingRulesResource.TradingRules.Rules.Any(r => r.Variable == expectedTradingRule.Variable
                                                             && r.Absolute == expectedTradingRule.Absolute
                                                             && r.Lower == expectedTradingRule.Lower
                                                             && r.Upper == expectedTradingRule.Upper);
 
                Assert.True(ruleFound);
             }

//           var expectedTradingRules = table.CreateSet<TradingRule>().ToList();
//            var sb = new StringBuilder();
//            foreach (var expectedTradingRule in expectedTradingRules)
//            {
//                var ruleFound = tradingRulesResource.TradingRules.Rules.Any(r =>
//                    r.Variable == expectedTradingRule.Variable &&
//                    r.Absolute == expectedTradingRule.Absolute &&
//                    r.Lower == expectedTradingRule.Lower &&
//                    r.Upper == expectedTradingRule.Upper);
//
//                if (ruleFound)
//                {
//                    var msg = String.Format("No Trading Rule: {0}, {1}, {2}, {3}", expectedTradingRule.Variable, expectedTradingRule.Lower, expectedTradingRule.Upper, expectedTradingRule.Absolute);
//                    sb.AppendLine(msg);
//                }
//           }
//
//            foreach (var expectedTradingRule in tradingRulesResource.TradingRules.Rules)
//            {
//                var ruleFound = expectedTradingRules.Any(r =>
//                    r.Variable == expectedTradingRule.Variable &&
//                    r.Absolute == expectedTradingRule.Absolute &&
//                    r.Lower == expectedTradingRule.Lower &&
//                    r.Upper == expectedTradingRule.Upper);
//
//                if (ruleFound)
//                {
//                    var msg = String.Format("No Trading Rule: {0}, {1}, {2}, {3}", expectedTradingRule.Variable, expectedTradingRule.Lower, expectedTradingRule.Upper, expectedTradingRule.Absolute);
//                    sb.AppendLine(msg);
//                }
//            }
//
//            var errormsg = sb.ToString();
//            Assert.IsTrue(String.IsNullOrEmpty(errormsg), errormsg);
        }
    }
}