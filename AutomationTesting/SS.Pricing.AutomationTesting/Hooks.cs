using SS.Pricing.SDK.Clients;
using TechTalk.SpecFlow;

namespace SS.Pricing.AutomationTesting
{
    [Binding]
    public static class Hooks
    {
        [BeforeScenario]
        public static void CreateConnectClient()
        {
            ScenarioContext.Current.Add(Constants.KeyConnectClient, new ConnectClient()); 
          //ScenarioContext.Current.Add(Constants.KeyPmaClient, new PmaClient()); 
        }

        [AfterScenario]
        public static void DisposeResourcesInConnect()
        {
            var connectClient = ScenarioContext.Current.Get<ConnectClient>(Constants.KeyConnectClient);
            connectClient.Dispose();
        }
    }
}