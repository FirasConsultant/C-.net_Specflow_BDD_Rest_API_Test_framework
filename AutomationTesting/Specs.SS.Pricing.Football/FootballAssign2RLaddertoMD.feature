Feature: FootballAssign2RLaddertoMD
	In order to assign Single or Multiple 2Runner Ladders to Markets
    As a Customer
    I want to see only the 2way markets that have 2 runner ladders 

Scenario: 2Runner Ladder for 2 way markets (NO ET, No PT)
    Given I have created new TwoRunner Default Ladder with the name 'ATDefault2RunnerLadder' and a new Definition as 'ATDefinition' for 'Football' with following BaseVariables
   | Name            | Value |
   | MatchLength     | 90    |
   | EtMatchLength   | 0     |
   | ExtratimeActive | false |
   | PenaltiesActive | false |
    When I try to assign the following Ladders to the following Market Types
    | Market Type Name      | Ladder Name            |
    | Team Goal By Interval | ATDefault2RunnerLadder |
    | Win Either Half       | ATDefault2RunnerLadder |
    | Draw No Bet           | ATDefault2RunnerLadder |
    | Clean Sheet           | ATDefault2RunnerLadder |
    Then I should be able to assign and save the Definition
    
Scenario: 2Runner Ladder for 3 way markets (NO ET, No PT)
    Given I have created new TwoRunner Default Ladder with the name 'ATDefault2RunnerLadder' and a new Definition as 'ATDefinition' for 'Football' with following BaseVariables
    | Name            | Value |
    | MatchLength     | 90    |
    | EtMatchLength   | 0     |
    | ExtratimeActive | false |
    | PenaltiesActive | false |
    When I try to assign the following Ladders to the following Market Types
    | Market Type Name     | Ladder Name            |
    | Match Winner         | ATDefault2RunnerLadder |
    | Match Winning Margin | ATDefault2RunnerLadder |
    Then I should not be able to assign and save the Definition

Scenario: 2Runner Ladder for both 2 way and 3 way markets (NO ET, No PT)
    Given I have created new TwoRunner Default Ladder with the name 'ATDefault2RunnerLadder' and a new Definition as 'ATDefinition' for 'Football' with following BaseVariables
	| Name            | Value |
	| MatchLength     | 90    |
	| EtMatchLength   | 0     |
	| ExtratimeActive | false |
	| PenaltiesActive | false |
    When I try to assign the following Ladders to the following Market Types
    | Market Type Name      | Ladder Name            |
    | Team Goal By Interval | ATDefault2RunnerLadder |
    | Win Either Half       | ATDefault2RunnerLadder |
    | Draw No Bet           | ATDefault2RunnerLadder |
    | Clean Sheet           | ATDefault2RunnerLadder |
    | Match Winner          | ATDefault2RunnerLadder |
    | Match Winning Margin  | ATDefault2RunnerLadder |
    Then I should not be able to assign and save the Definition

Scenario: Assigning multiple 2Runner Ladders to 2 way markets (NO ET, No PT)
    Given I have created new TwoRunner Default Ladder with the name 'ATDefault2RunnerLadder' and a new Definition as 'ATDefinition' for 'Football' with following BaseVariables
	| Name            | Value |
	| MatchLength     | 90    |
	| EtMatchLength   | 0     |
	| ExtratimeActive | false |
	| PenaltiesActive | false |
    Given I have created new TwoRunner Steps Ladder with the name 'ATSteps2RunnerLadder'
    When I try to assign the following Ladders to the following Market Types
    | Market Type Name      | Ladder Name            |
    | Team Goal By Interval | ATSteps2RunnerLadder   |
    | Win Either Half       | ATSteps2RunnerLadder   |
    | Draw No Bet           | ATDefault2RunnerLadder |
    | Clean Sheet           | ATDefault2RunnerLadder |
    Then I should be able to assign and save the Definition

Scenario: Assigning multiple 2Runner Ladders to both 2 way and 3 way markets (NO ET, No PT)
    Given I have created new TwoRunner Default Ladder with the name 'ATDefault2RunnerLadder' and a new Definition as 'ATDefinition' for 'Football' with following BaseVariables
	| Name            | Value |
	| MatchLength     | 90    |
	| EtMatchLength   | 0     |
	| ExtratimeActive | false |
	| PenaltiesActive | false |
    Given I have created new TwoRunner Steps Ladder with the name 'ATSteps2RunnerLadder'
    When I try to assign the following Ladders to the following Market Types
    | Market Type Name      | Ladder Name            |
    | Team Goal By Interval | ATSteps2RunnerLadder   |
    | Win Either Half       | ATSteps2RunnerLadder   |
    | Draw No Bet           | ATDefault2RunnerLadder |
    | Clean Sheet           | ATDefault2RunnerLadder |
    | Match Winner          | ATSteps2RunnerLadder   |
    | Match Winning Margin  | ATDefault2RunnerLadder |
    Then I should not be able to assign and save the Definition
