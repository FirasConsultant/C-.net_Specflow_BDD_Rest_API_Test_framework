using AutomationTesting.SDK;
using TechTalk.SpecFlow;

namespace SS.Pricing.AutomationTesting
{
    [Binding]
    public class SharedSteps
    {
        [Given(@"I have created new default trading rules for (.*) with the name '(.*)'")]
        public void GivenIHaveCreatedNewDefaultTradingRulesForVolleyballWithTheName(string sport, string tradingRulesName)
        {
            var tradingRulesBuilder = new TradingRulesBuilder();
            var tradingRules = tradingRulesBuilder.ForSport(Sports.ToRestRelation[sport])
                                                  .WithDefaultRules()
                                                  .WithName(tradingRulesName)
                                                  .Build();

            var connectClient = ScenarioContext.Current.Get<ConnectClient>(Constants.KeyConnectClient);
            var createdTradingRules = connectClient.CreateTradingRules(tradingRules);
            ScenarioContext.Current.Add(Constants.KeyTradingRules, createdTradingRules);
        }
    }
}