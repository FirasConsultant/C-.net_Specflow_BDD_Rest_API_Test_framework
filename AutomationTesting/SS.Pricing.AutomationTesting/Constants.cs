using System.Collections.Generic;
using SS.GTP.Domain.Rest;

namespace SS.Pricing.AutomationTesting
{
    public class Constants
    {
        public const string KeyConnectClient = "ConnectClient";
        public const string KeyDefinition = "Definition";
        public const string KeyLadder = "Ladder";
        public const string KeyLadderCreationFailure = "LadderCreationFailure";
        public const string KeyLinkedCe = "LinkedCe";
        public const string KeyPmaClient = "PmaClient";
        public const string KeyPricingResponse = "PricingResponse";
        public const string KeyTradingRules = "TradingRules";
    }

    public static class Sports
    {
        public static readonly IDictionary<string, string> ToRestRelation = new Dictionary<string, string>
            {
                {"AmericanFootball", RestRelations.AmericanFootballOdds},
                {"AustralianRules", RestRelations.AustralianRulesOdds},
                {"Baseball", RestRelations.BaseballOdds},
                {"Basketball", RestRelations.BasketballOdds},
                {"Boxing", RestRelations.BoxingOdds},
                {"TestCricket", RestRelations.TestCricketOdds},
                {"Cricket", RestRelations.CricketOdds},
                {"Darts", RestRelations.DartsOdds},
                {"Football", RestRelations.FootballOdds},
                {"GaelicFootball", RestRelations.GaelicFootballOdds},
                {"GaelicHurling", RestRelations.GaelicHurlingOdds},
                {"Handball", RestRelations.HandballOdds},
                {"IceHockey", RestRelations.IceHockeyOdds},
                {"RugbyLeague", RestRelations.RugbyLeagueOdds},
                {"RugbyUnion", RestRelations.RugbyUnionOdds},
                {"Snooker", RestRelations.SnookerOdds},
                {"TennisDoubles", RestRelations.TennisDoublesOdds},
                {"Tennis", RestRelations.TennisOdds},
                {"Volleyball", RestRelations.VolleyballOdds}

            };
    }
}