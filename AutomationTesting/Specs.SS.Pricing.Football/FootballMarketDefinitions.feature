﻿Feature: DisplayMetadata
	In order to allow clients to modify display metadata
	As sporting solutions
	I want to be able to get the default market and selection names

Scenario: No Extra time, no penalties
	Given I have created a linked fixture for Football with the following base variables 
	| Name            | Value |
	| MatchLength     | 90    |
	| EtMatchLength   | 0     |
	| ExtratimeActive | false |
	| PenaltiesActive | false |

	When I request the last response without modifiying any display metadata
	Then The last response should contain the following default market and selection names

	| Market Id | Market Display Name | Selection Display Names |
	| 1-1       | Match Winner        | Team1_Draw_Team2        |
	|2-1| Double Chance 1| Team1 - Draw_Team2  |
	|2-2| Double Chance 2| Team2 - Draw_Team1  |
	|2-3| Double Chance 3| Team1 - Team2_Draw  |
	|3-1| Winning Margin| Team1 By Exactly 1 Goal_Team1 By Exactly 2 Goals_Team1 By Exactly 3 Goals_Team1 By 4 Or More Goals_Team2 By Exactly 1 Goal_Team2 By Exactly 2 Goals_Team2 By Exactly 3 Goals_Team2 By 4 Or More Goals_0-0 Draw_Score Draw |
	|4-1| Team1 To Score In Both Halves| Yes_No |
	|4-2| Team2 To Score In Both Halves| Yes_No |
	|5-1| Total Goals - Under/Over 0.5| Under 0.5_Over 0.5 |
	|5-2| Total Goals - Under/Over 1.5| Under 1.5_Over 1.5 |
	|5-3| Total Goals - Under/Over 2.5| Under 2.5_Over 2.5 |
	|5-4| Total Goals - Under/Over 3.5| Under 3.5_Over 3.5 |
	|5-5| Total Goals - Under/Over 4.5| Under 4.5_Over 4.5 |
	|5-6| Total Goals - Under/Over 5.5| Under 5.5_Over 5.5 |
	|5-7| Total Goals - Under/Over 6.5| Under 6.5_Over 6.5 |
	|5-8| Total Goals - Under/Over 7.5| Under 7.5_Over 7.5 |
	|5-9| Total Goals - Under/Over 8.5| Under 8.5_Over 8.5 |
	|5-10| Total Goals - Under/Over 9.5| Under 9.5_Over 9.5 |
	|5-11| Total Goals - Under/Over 10.5| Under 10.5_Over 10.5 |
	|5-12| Total Goals - Under/Over 11.5| Under 11.5_Over 11.5 |
	|5-13| Total Goals - Under/Over 12.5| Under 12.5_Over 12.5 |
	|6-1| Number Of Goals In Match| Under 2_Exactly 2_Over 2 |
	|7-1| Number Of Goals In 1st Half| Under 1_Exactly 1_Over 1 |
	|7-2| Number Of Goals In 2nd Half| Under 1_Exactly 1_Over 1 |
	|8-18| Asian Handicap -5| Team1 -5_Team2 +5 |
	|8-19| Asian Handicap -4.75| Team1 -4.75_Team2 +4.75 |
	|8-20| Asian Handicap -4.5| Team1 -4.5_Team2 +4.5 |
	|8-21| Asian Handicap -4.25| Team1 -4.25_Team2 +4.25 |
	|8-22| Asian Handicap -4| Team1 -4_Team2 +4 |
	|8-23| Asian Handicap -3.75| Team1 -3.75_Team2 +3.75 |
	|8-24| Asian Handicap -3.5| Team1 -3.5_Team2 +3.5 |
	|8-25| Asian Handicap -3.25| Team1 -3.25_Team2 +3.25 |
	|8-26| Asian Handicap -3| Team1 -3_Team2 +3 |
	|8-27| Asian Handicap -2.75| Team1 -2.75_Team2 +2.75 |
	|8-28| Asian Handicap -2.5| Team1 -2.5_Team2 +2.5 |
	|8-29| Asian Handicap -2.25| Team1 -2.25_Team2 +2.25 |
	|8-1| Asian Handicap -2| Team1 -2_Team2 +2 |
	|8-2| Asian Handicap -1.75| Team1 -1.75_Team2 +1.75 |
	|8-3| Asian Handicap -1.5| Team1 -1.5_Team2 +1.5 |
	|8-4| Asian Handicap -1.25| Team1 -1.25_Team2 +1.25 |
	|8-5| Asian Handicap -1| Team1 -1_Team2 +1 |
	|8-6| Asian Handicap -0.75| Team1 -0.75_Team2 +0.75 |
	|8-7| Asian Handicap -0.5| Team1 -0.5_Team2 +0.5 |
	|8-8| Asian Handicap -0.25| Team1 -0.25_Team2 +0.25 |
	|8-9| Asian Handicap 0| Team1 0_Team2 0 |
	|8-10| Asian Handicap +0.25| Team1 +0.25_Team2 -0.25 |
	|8-11| Asian Handicap +0.5| Team1 +0.5_Team2 -0.5 |
	|8-12| Asian Handicap +0.75| Team1 +0.75_Team2 -0.75 |
	|8-13| Asian Handicap +1| Team1 +1_Team2 -1 |
	|8-14| Asian Handicap +1.25| Team1 +1.25_Team2 -1.25 |
	|8-15| Asian Handicap +1.5| Team1 +1.5_Team2 -1.5 |
	|8-16| Asian Handicap +1.75| Team1 +1.75_Team2 -1.75 |
	|8-17| Asian Handicap +2| Team1 +2_Team2 -2 |
	|8-30| Asian Handicap +2.25| Team1 +2.25_Team2 -2.25 |
	|8-31| Asian Handicap +2.5| Team1 +2.5_Team2 -2.5 |
	|8-32| Asian Handicap +2.75| Team1 +2.75_Team2 -2.75 |
	|8-33| Asian Handicap +3| Team1 +3_Team2 -3 |
	|8-34| Asian Handicap +3.25| Team1 +3.25_Team2 -3.25 |
	|8-35| Asian Handicap +3.5| Team1 +3.5_Team2 -3.5 |
	|8-36| Asian Handicap +3.75| Team1 +3.75_Team2 -3.75 |
	|8-37| Asian Handicap +4| Team1 +4_Team2 -4 |
	|8-38| Asian Handicap +4.25| Team1 +4.25_Team2 -4.25 |
	|8-39| Asian Handicap +4.5| Team1 +4.5_Team2 -4.5 |
	|8-40| Asian Handicap +4.75| Team1 +4.75_Team2 -4.75 |
	|8-41| Asian Handicap +5| Team1 +5_Team2 -5 |
	|9-1| Handicap -5| Team1 -5_Draw (Team1 -5)_Team2 +5 |
	|9-2| Handicap -4| Team1 -4_Draw (Team1 -4)_Team2 +4 |
	|9-3| Handicap -3| Team1 -3_Draw (Team1 -3)_Team2 +3 |
	|9-4| Handicap -2| Team1 -2_Draw (Team1 -2)_Team2 +2 |
	|9-5| Handicap -1| Team1 -1_Draw (Team1 -1)_Team2 +1 |
	|9-6| Handicap 0| Team1 0_Draw (Team1 0)_Team2 0 |
	|9-7| Handicap +1| Team1 +1_Draw (Team1 +1)_Team2 -1 |
	|9-8| Handicap +2| Team1 +2_Draw (Team1 +2)_Team2 -2 |
	|9-9| Handicap +3| Team1 +3_Draw (Team1 +3)_Team2 -3 |
	|9-10| Handicap +4| Team1 +4_Draw (Team1 +4)_Team2 -4 |
	|9-11| Handicap +5| Team1 +5_Draw (Team1 +5)_Team2 -5 |
	|10-1| Draw No Bet| Team1_Team2 |
	|11-1| Team1 - Win To Nil| Yes_No |
	|11-2| Team2 - Win To Nil| Yes_No |
	|12-1| Full Time Correct Score| Team1  1 - 0_Team1  2 - 0_Team1  2 - 1_Team1  3 - 0_Team1  3 - 1_Team1  3 - 2_Team1  4 - 0_Team1  4 - 1_Team1  4 - 2_Team1  4 - 3_Team1  5 - 0_Team1  5 - 1_Team1  5 - 2_Team1  5 - 3_Team1  5 - 4_Team1  6 - 0_Team1  6 - 1_Team1  6 - 2_Team1  6 - 3_Team1  6 - 4_Team1  6 - 5_Team1  7 - 0_Team1  7 - 1_Team1  7 - 2_Team1  7 - 3_Team1  7 - 4_Team1  7 - 5_Team1  7 - 6_Team1  8 - 0_Team1  8 - 1_Team1  8 - 2_Team1  8 - 3_Team1  8 - 4_Team1  8 - 5_Team1  8 - 6_Team1  8 - 7_Team1  9 - 0_Team1  9 - 1_Team1  9 - 2_Team1  9 - 3_Team1  9 - 4_Team1  9 - 5_Team1  9 - 6_Team1  9 - 7_Team1  9 - 8_Team1  10 - 0_Team1  10 - 1_Team1  10 - 2_Team1  10 - 3_Team1  10 - 4_Team1  10 - 5_Team1  10 - 6_Team1  10 - 7_Team1  10 - 8_Team1  10 - 9_Team1  11 - 0_Team1  11 - 1_Team1  11 - 2_Team1  11 - 3_Team1  11 - 4_Team1  11 - 5_Team1  11 - 6_Team1  11 - 7_Team1  11 - 8_Team1  11 - 9_Team1  11 - 10_Team1  12 - 0_Team1  12 - 1_Team1  12 - 2_Team1  12 - 3_Team1  12 - 4_Team1  12 - 5_Team1  12 - 6_Team1  12 - 7_Team1  12 - 8_Team1  12 - 9_Team1  12 - 10_Team1  12 - 11_Draw  0 - 0_Draw  1 - 1_Draw  2 - 2_Draw  3 - 3_Draw  4 - 4_Draw  5 - 5_Draw  6 - 6_Draw  7 - 7_Draw  8 - 8_Draw  9 - 9_Draw  10 - 10_Draw  11 - 11_Draw  12 - 12_Team2  1 - 0_Team2  2 - 0_Team2  2 - 1_Team2  3 - 0_Team2  3 - 1_Team2  3 - 2_Team2  4 - 0_Team2  4 - 1_Team2  4 - 2_Team2  4 - 3_Team2  5 - 0_Team2  5 - 1_Team2  5 - 2_Team2  5 - 3_Team2  5 - 4_Team2  6 - 0_Team2  6 - 1_Team2  6 - 2_Team2  6 - 3_Team2  6 - 4_Team2  6 - 5_Team2  7 - 0_Team2  7 - 1_Team2  7 - 2_Team2  7 - 3_Team2  7 - 4_Team2  7 - 5_Team2  7 - 6_Team2  8 - 0_Team2  8 - 1_Team2  8 - 2_Team2  8 - 3_Team2  8 - 4_Team2  8 - 5_Team2  8 - 6_Team2  8 - 7_Team2  9 - 0_Team2  9 - 1_Team2  9 - 2_Team2  9 - 3_Team2  9 - 4_Team2  9 - 5_Team2  9 - 6_Team2  9 - 7_Team2  9 - 8_Team2  10 - 0_Team2  10 - 1_Team2  10 - 2_Team2  10 - 3_Team2  10 - 4_Team2  10 - 5_Team2  10 - 6_Team2  10 - 7_Team2  10 - 8_Team2  10 - 9_Team2  11 - 0_Team2  11 - 1_Team2  11 - 2_Team2  11 - 3_Team2  11 - 4_Team2  11 - 5_Team2  11 - 6_Team2  11 - 7_Team2  11 - 8_Team2  11 - 9_Team2  11 - 10_Team2  12 - 0_Team2  12 - 1_Team2  12 - 2_Team2  12 - 3_Team2  12 - 4_Team2  12 - 5_Team2  12 - 6_Team2  12 - 7_Team2  12 - 8_Team2  12 - 9_Team2  12 - 10_Team2  12 - 11_Any Other Score  |
	|13-1| Correct Score| Team1  1 - 0_Team1  2 - 0_Team1  2 - 1_Team1  3 - 0_Team1  3 - 1_Team1  3 - 2_Team1  4 - 0_Team1  4 - 1_Team1  4 - 2_Team1  5 - 0_Team1  5 - 1_Team1  6 - 0_Draw  0 - 0_Draw  1 - 1_Draw  2 - 2_Draw  3 - 3_Team2  1 - 0_Team2  2 - 0_Team2  2 - 1_Team2  3 - 0_Team2  3 - 1_Team2  3 - 2_Team2  4 - 0_Team2  4 - 1_Team2  4 - 2_Team2  5 - 0_Team2  5 - 1_Team2  6 - 0_Any Other Score  |
	|14-1| Team To Score 1st Goal| Team1_No Goal_Team2 |
	|14-2| Team To Score 2nd Goal| Team1_No Goal_Team2 |
	|14-3| Team To Score 3rd Goal| Team1_No Goal_Team2 |
	|14-4| Team To Score 4th Goal| Team1_No Goal_Team2 |
	|14-5| Team To Score 5th Goal| Team1_No Goal_Team2 |
	|14-6| Team To Score 6th Goal| Team1_No Goal_Team2 |
	|14-7| Team To Score 7th Goal| Team1_No Goal_Team2 |
	|14-8| Team To Score 8th Goal| Team1_No Goal_Team2 |
	|14-9| Team To Score 9th Goal| Team1_No Goal_Team2 |
	|14-10| Team To Score 10th Goal| Team1_No Goal_Team2 |
	|14-11| Team To Score 11th Goal| Team1_No Goal_Team2 |
	|14-12| Team To Score 12th Goal| Team1_No Goal_Team2 |
	|14-13| Team To Score 13th Goal| Team1_No Goal_Team2 |
	|14-14| Team To Score 14th Goal| Team1_No Goal_Team2 |
	|14-15| Team To Score 15th Goal| Team1_No Goal_Team2 |
	|14-16| Team To Score 16th Goal| Team1_No Goal_Team2 |
	|14-17| Team To Score 17th Goal| Team1_No Goal_Team2 |
	|14-18| Team To Score 18th Goal| Team1_No Goal_Team2 |
	|14-19| Team To Score 19th Goal| Team1_No Goal_Team2 |
	|14-20| Team To Score 20th Goal| Team1_No Goal_Team2 |
	|15-1| Team1 - Clean Sheet| Yes_No |
	|15-2| Team2 - Clean Sheet| Yes_No |
	|16-1| Both Teams To Score| Yes_No |
	|17-1| Number Of Teams To Score| None_One_Both |
	|18-1| Team1 To Score| Yes_No |
	|18-2| Team2 To Score| Yes_No |
	|19-1| Which Teams To Score?| Only Team1 Score_Only Team2 Score_Both Teams Score_Neither Team Scores |
	|20-1| Total Goals| No Goal_Exactly 1 Goal_Exactly 2 Goals_Exactly 3 Goals_Exactly 4 Goals_Exactly 5 Goals_Exactly 6 Goals_Exactly 7 Goals_Exactly 8 Goals_Exactly 9 Goals_10 Goals Or More |
	|71-1| Total Goals (Reduced)| No Goals_Exactly 1 Goal_Exactly 2 Goals_Exactly 3 Goals_4 Goals Or More |
	|21-1| Team1 - Total Goals| No Goal_Exactly 1 Goal_Exactly 2 Goals_Exactly 3 Goals_Exactly 4 Goals_Exactly 5 Goals_Exactly 6 Goals_Exactly 7 Goals_Exactly 8 Goals_Exactly 9 Goals_10 Goals Or More |
	|21-2| Team2 - Total Goals| No Goal_Exactly 1 Goal_Exactly 2 Goals_Exactly 3 Goals_Exactly 4 Goals_Exactly 5 Goals_Exactly 6 Goals_Exactly 7 Goals_Exactly 8 Goals_Exactly 9 Goals_10 Goals Or More |
	|72-1| Team1 Total Goals (Reduced)| No Goals_Exactly 1 Goal_Exactly 2 Goals_Exactly 3 Goals_4 Goals Or More |
	|72-2| Team2 Total Goals (Reduced)| No Goals_Exactly 1 Goal_Exactly 2 Goals_Exactly 3 Goals_4 Goals Or More |
	|22-1| Time Of First Goal| Between 1 And 10 Minutes_Between 11 And 20 Minutes_Between 21 And 30 Minutes_Between 31 And 40 Minutes_Between 41 And 50 Minutes_Between 51 And 60 Minutes_Between 61 And 70 Minutes_Between 71 And 80 Minutes_Between 81 And 90 Minutes_No Goal |
	|23-1| 1st Half - Time Of First Goal| Between 1 And 5 Minutes_Between 6 And 10 Minutes_Between 11 And 15 Minutes_Between 16 And 20 Minutes_Between 21 And 25 Minutes_Between 26 And 30 Minutes_Between 31 And 35 Minutes_Between 36 And 40 Minutes_Between 41 And 45 Minutes_No 1st Half Goal |
	|23-2| 2nd Half - Time Of First Goal| Between 46 And 50 Minutes_Between 51 And 55 Minutes_Between 56 And 60 Minutes_Between 61 And 65 Minutes_Between 66 And 70 Minutes_Between 71 And 75 Minutes_Between 76 And 80 Minutes_Between 81 And 85 Minutes_Between 86 And 90 Minutes_No 2nd Half Goal |
	|24-1| Time Of 1st Match Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|24-2| Time Of 2nd Match Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|24-3| Time Of 3rd Match Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|24-4| Time Of 4th Match Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|24-5| Time Of 5th Match Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|24-6| Time Of 6th Match Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|24-7| Time Of 7th Match Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|24-8| Time Of 8th Match Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|24-9| Time Of 9th Match Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|24-10| Time Of 10th Match Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-1| Time Of 1st Team1 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-2| Time Of 2nd Team1 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-3| Time Of 3rd Team1 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-4| Time Of 4th Team1 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-5| Time Of 5th Team1 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-6| Time Of 6th Team1 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-7| Time Of 7th Team1 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-8| Time Of 8th Team1 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-9| Time Of 9th Team1 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-10| Time Of 10th Team1 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-11| Time Of 1st Team2 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-12| Time Of 2nd Team2 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-13| Time Of 3rd Team2 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-14| Time Of 4th Team2 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-15| Time Of 5th Team2 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-16| Time Of 6th Team2 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-17| Time Of 7th Team2 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-18| Time Of 8th Team2 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-19| Time Of 9th Team2 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-20| Time Of 10th Team2 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|26-1| Time Of 1st Match Goal - Under/Over/No Goal| Under 30 Minutes_Over 30 Minutes_No Goal |
	|26-2| Time Of 2nd Match Goal - Under/Over/No Goal| Under 50 Minutes_Over 50 Minutes_No Goal |
	|26-3| Time Of 3rd Match Goal - Under/Over/No Goal| Under 70 Minutes_Over 70 Minutes_No Goal |
	|27-1| Time Of 1st Team1 Goal - Under/Over/No Goal| Up To And Including 30 Minutes_After 30 Minutes_No Goal |
	|27-2| Time Of 2nd Team1 Goal - Under/Over/No Goal| Up To And Including 50 Minutes_After 50 Minutes_No Goal |
	|27-3| Time Of 3rd Team1 Goal - Under/Over/No Goal| Up To And Including 70 Minutes_After 70 Minutes_No Goal |
	|27-4| Time Of 1st Team2 Goal - Under/Over/No Goal| Up To And Including 30 Minutes_After 30 Minutes_No Goal |
	|27-5| Time Of 2nd Team2 Goal - Under/Over/No Goal| Up To And Including 50 Minutes_After 50 Minutes_No Goal |
	|27-6| Time Of 3rd Team2 Goal - Under/Over/No Goal| Up To And Including 70 Minutes_After 70 Minutes_No Goal |
	|28-1| 1st Half - Total Goals| No Goals_Exactly 1 Goal_Exactly 2 Goals_3 Or More Goals |
	|29-1| Half With The Most Goals| 1st Half_2nd Half_Tie |
	|30-1| Half Time/Full Time| Team1 - Team1_Team1 - Draw_Team1 - Team2_Draw - Team1_Draw - Draw_Draw - Team2_Team2 - Team1_Team2 - Draw_Team2 - Team2 |
	|31-1| Half Time Result| Team1_Draw_Team2 |
	|32-1| Half Time Correct Score| Team1  1 - 0_Team1  2 - 0_Team1  2 - 1_Team1  3 - 0_Team1  3 - 1_Team1  3 - 2_Team1  4 - 0_Team1  4 - 1_Team1  4 - 2_Team1  4 - 3_Team1  5 - 0_Team1  5 - 1_Team1  5 - 2_Team1  5 - 3_Team1  5 - 4_Draw  0 - 0_Draw  1 - 1_Draw  2 - 2_Draw  3 - 3_Draw  4 - 4_Draw  5 - 5_Team2  1 - 0_Team2  2 - 0_Team2  2 - 1_Team2  3 - 0_Team2  3 - 1_Team2  3 - 2_Team2  4 - 0_Team2  4 - 1_Team2  4 - 2_Team2  4 - 3_Team2  5 - 0_Team2  5 - 1_Team2  5 - 2_Team2  5 - 3_Team2  5 - 4_Any Other Score  |
	|33-1| Total Goals - Odd/Even| Odd_Even |
	|34-1| Which Half Will The 1st Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|35-1| Which Half Will The 1st Team1 Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|35-2| Which Half Will The 1st Team2 Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|34-2| Which Half Will The 2nd Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|35-3| Which Half Will The 2nd Team1 Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|35-4| Which Half Will The 2nd Team2 Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|34-3| Which Half Will The 3rd Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|35-5| Which Half Will The 3rd Team1 Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|35-6| Which Half Will The 3rd Team2 Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|34-4| Which Half Will The 4th Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|35-7| Which Half Will The 4th Team1 Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|35-8| Which Half Will The 4th Team2 Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|34-5| Which Half Will The 5th Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|35-9| Which Half Will The 5th Team1 Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|35-10| Which Half Will The 5th Team2 Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|36-11| Total Corners 10 - 12| Under 10_Between 10 And 12 Inclusive_Over 12 |
	|37-2| Total Corners - Under/Over 0.5| Under 0.5_Over 0.5 |
	|37-3| Total Corners - Under/Over 1.5| Under 1.5_Over 1.5 |
	|37-4| Total Corners - Under/Over 2.5| Under 2.5_Over 2.5 |
	|37-5| Total Corners - Under/Over 3.5| Under 3.5_Over 3.5 |
	|37-6| Total Corners - Under/Over 4.5| Under 4.5_Over 4.5 |
	|37-7| Total Corners - Under/Over 5.5| Under 5.5_Over 5.5 |
	|37-8| Total Corners - Under/Over 6.5| Under 6.5_Over 6.5 |
	|37-9| Total Corners - Under/Over 7.5| Under 7.5_Over 7.5 |
	|37-10| Total Corners - Under/Over 8.5| Under 8.5_Over 8.5 |
	|37-11| Total Corners - Under/Over 9.5| Under 9.5_Over 9.5 |
	|37-1| Total Corners - Under/Over 10.5| Under 10.5_Over 10.5 |
	|37-12| Total Corners - Under/Over 11.5| Under 11.5_Over 11.5 |
	|37-13| Total Corners - Under/Over 12.5| Under 12.5_Over 12.5 |
	|37-14| Total Corners - Under/Over 13.5| Under 13.5_Over 13.5 |
	|37-15| Total Corners - Under/Over 14.5| Under 14.5_Over 14.5 |
	|37-16| Total Corners - Under/Over 15.5| Under 15.5_Over 15.5 |
	|37-17| Total Corners - Under/Over 16.5| Under 16.5_Over 16.5 |
	|37-18| Total Corners - Under/Over 17.5| Under 17.5_Over 17.5 |
	|37-19| Total Corners - Under/Over 18.5| Under 18.5_Over 18.5 |
	|37-20| Total Corners - Under/Over 19.5| Under 19.5_Over 19.5 |
	|37-21| Total Corners - Under/Over 20.5| Under 20.5_Over 20.5 |
	|37-22| Total Corners - Under/Over 21.5| Under 21.5_Over 21.5 |
	|37-23| Total Corners - Under/Over 22.5| Under 22.5_Over 22.5 |
	|37-24| Total Corners - Under/Over 23.5| Under 23.5_Over 23.5 |
	|37-25| Total Corners - Under/Over 24.5| Under 24.5_Over 24.5 |
	|38-2| Corners Handicap -10.5| Team1 -10.5_Team2 +10.5 |
	|38-3| Corners Handicap -9.5| Team1 -9.5_Team2 +9.5 |
	|38-4| Corners Handicap -8.5| Team1 -8.5_Team2 +8.5 |
	|38-5| Corners Handicap -7.5| Team1 -7.5_Team2 +7.5 |
	|38-6| Corners Handicap -6.5| Team1 -6.5_Team2 +6.5 |
	|38-7| Corners Handicap -5.5| Team1 -5.5_Team2 +5.5 |
	|38-8| Corners Handicap -4.5| Team1 -4.5_Team2 +4.5 |
	|38-9| Corners Handicap -3.5| Team1 -3.5_Team2 +3.5 |
	|38-1| Corners Handicap -2.5| Team1 -2.5_Team2 +2.5 |
	|38-10| Corners Handicap -1.5| Team1 -1.5_Team2 +1.5 |
	|38-11| Corners Handicap -0.5| Team1 -0.5_Team2 +0.5 |
	|38-12| Corners Handicap +0.5| Team2 -0.5_Team1 +0.5 |
	|38-13| Corners Handicap +1.5| Team2 -1.5_Team1 +1.5 |
	|38-14| Corners Handicap +2.5| Team2 -2.5_Team1 +2.5 |
	|38-15| Corners Handicap +3.5| Team2 -3.5_Team1 +3.5 |
	|38-16| Corners Handicap +4.5| Team2 -4.5_Team1 +4.5 |
	|38-17| Corners Handicap +5.5| Team2 -5.5_Team1 +5.5 |
	|38-18| Corners Handicap +6.5| Team2 -6.5_Team1 +6.5 |
	|38-19| Corners Handicap +7.5| Team2 -7.5_Team1 +7.5 |
	|38-20| Corners Handicap +8.5| Team2 -8.5_Team1 +8.5 |
	|38-21| Corners Handicap +9.5| Team2 -9.5_Team1 +9.5 |
	|38-22| Corners Handicap +10.5| Team2 -10.5_Team1 +10.5 |
	|39-1| Team With Most Corners| Team1_Draw_Team2 |
	|40-9| Corners Handicap -10| Team1 -10_Draw -10_Team2 +10 |
	|40-10| Corners Handicap -9| Team1 -9_Draw -9_Team2 +9 |
	|40-11| Corners Handicap -8| Team1 -8_Draw -8_Team2 +8 |
	|40-12| Corners Handicap -7| Team1 -7_Draw -7_Team2 +7 |
	|40-13| Corners Handicap -6| Team1 -6_Draw -6_Team2 +6 |
	|40-14| Corners Handicap -5| Team1 -5_Draw -5_Team2 +5 |
	|40-1| Corners Handicap -4| Team1 -4_Draw -4_Team2 +4 |
	|40-2| Corners Handicap -3| Team1 -3_Draw -3_Team2 +3 |
	|40-3| Corners Handicap -2| Team1 -2_Draw -2_Team2 +2 |
	|40-4| Corners Handicap -1| Team1 -1_Draw -1_Team2 +1 |
	|40-15| Corners Handicap +10| Team1 +10_Draw +10_Team2 -10 |
	|40-16| Corners Handicap +9| Team1 +9_Draw +9_Team2 -9 |
	|40-17| Corners Handicap +8| Team1 +8_Draw +8_Team2 -8 |
	|40-18| Corners Handicap +7| Team1 +7_Draw +7_Team2 -7 |
	|40-19| Corners Handicap +6| Team1 +6_Draw +6_Team2 -6 |
	|40-20| Corners Handicap +5| Team1 +5_Draw +5_Team2 -5 |
	|40-5| Corners Handicap +4| Team1 +4_Draw +4_Team2 -4 |
	|40-6| Corners Handicap +3| Team1 +3_Draw +3_Team2 -3 |
	|40-7| Corners Handicap +2| Team1 +2_Draw +2_Team2 -2 |
	|40-8| Corners Handicap +1| Team1 +1_Draw +1_Team2 -1 |
	|41-1| Time Of First Corner| Between 1 And 10 Minutes_Between 11 And 20 Minutes_Between 21 And 30 Minutes_Between 31 And 40 Minutes_Between 41 And 50 Minutes_Between 51 And 60 Minutes_Between 61 And 70 Minutes_Between 71 And 80 Minutes_Between 81 And 90 Minutes_No Corner |
	|42-1| Team To Take The First Corner| Team1_No Corner_Team2 |
	|43-3| Exact 1st Half Corners - Under/Over 1| Under 1_Exactly 1_Over 1 |
	|43-4| Exact 1st Half Corners - Under/Over 2| Under 2_Exactly 2_Over 2 |
	|43-5| Exact 1st Half Corners - Under/Over 3| Under 3_Exactly 3_Over 3 |
	|43-6| Exact 1st Half Corners - Under/Over 4| Under 4_Exactly 4_Over 4 |
	|43-1| Exact 1st Half Corners - Under/Over 5| Under 5_Exactly 5_Over 5 |
	|43-7| Exact 1st Half Corners - Under/Over 6| Under 6_Exactly 6_Over 6 |
	|43-8| Exact 1st Half Corners - Under/Over 7| Under 7_Exactly 7_Over 7 |
	|43-9| Exact 1st Half Corners - Under/Over 8| Under 8_Exactly 8_Over 8 |
	|43-10| Exact 1st Half Corners - Under/Over 9| Under 9_Exactly 9_Over 9 |
	|43-11| Exact 1st Half Corners - Under/Over 10| Under 10_Exactly 10_Over 10 |
	|43-12| Exact 2nd Half Corners - Under/Over 1| Under 1_Exactly 1_Over 1 |
	|43-13| Exact 2nd Half Corners - Under/Over 2| Under 2_Exactly 2_Over 2 |
	|43-14| Exact 2nd Half Corners - Under/Over 3| Under 3_Exactly 3_Over 3 |
	|43-15| Exact 2nd Half Corners - Under/Over 4| Under 4_Exactly 4_Over 4 |
	|43-16| Exact 2nd Half Corners - Under/Over 5| Under 5_Exactly 5_Over 5 |
	|43-2| Exact 2nd Half Corners - Under/Over 6| Under 6_Exactly 6_Over 6 |
	|43-17| Exact 2nd Half Corners - Under/Over 7| Under 7_Exactly 7_Over 7 |
	|43-18| Exact 2nd Half Corners - Under/Over 8| Under 8_Exactly 8_Over 8 |
	|43-19| Exact 2nd Half Corners - Under/Over 9| Under 9_Exactly 9_Over 9 |
	|43-20| Exact 2nd Half Corners - Under/Over 10| Under 10_Exactly 10_Over 10 |
	|44-3| 1st Half - Total Corners| Under 5_Between 5 And 6 Inclusive_Over 6 |
	|44-4| 2nd Half - Total Corners| Under 5_Between 5 And 6 Inclusive_Over 6 |
	|45-1| 1st Half - Team To Take The First Corner| Team1_No Corner_Team2 |
	|45-2| 2nd Half - Team To Take The First Corner| Team1_No Corner_Team2 |
	|46-1| Time Of First Team1 Corner| Between 1 And 10_Between 11 And 20_Between 21 And 30_Between 31 And 40_Between 41 And 50_Between 51 And 60_Between 61 And 70_Between 71 And 80_Between 81 And 90_No Corner  |
	|46-2| Time Of First Team2 Corner| Between 1 And 10_Between 11 And 20_Between 21 And 30_Between 31 And 40_Between 41 And 50_Between 51 And 60_Between 61 And 70_Between 71 And 80_Between 81 And 90_No Corner  |
	|47-1| 1st Corner| Team1_No Corner_Team2 |
	|47-2| 2nd Corner| Team1_No Corner_Team2 |
	|47-3| 3rd Corner| Team1_No Corner_Team2 |
	|47-4| 4th Corner| Team1_No Corner_Team2 |
	|47-5| 5th Corner| Team1_No Corner_Team2 |
	|47-6| 6th Corner| Team1_No Corner_Team2 |
	|47-7| 7th Corner| Team1_No Corner_Team2 |
	|47-8| 8th Corner| Team1_No Corner_Team2 |
	|47-9| 9th Corner| Team1_No Corner_Team2 |
	|47-10| 10th Corner| Team1_No Corner_Team2 |
	|47-11| 11th Corner| Team1_No Corner_Team2 |
	|47-12| 12th Corner| Team1_No Corner_Team2 |
	|47-13| 13th Corner| Team1_No Corner_Team2 |
	|47-14| 14th Corner| Team1_No Corner_Team2 |
	|47-15| 15th Corner| Team1_No Corner_Team2 |
	|47-16| 16th Corner| Team1_No Corner_Team2 |
	|47-17| 17th Corner| Team1_No Corner_Team2 |
	|47-18| 18th Corner| Team1_No Corner_Team2 |
	|47-19| 19th Corner| Team1_No Corner_Team2 |
	|47-20| 20th Corner| Team1_No Corner_Team2 |
	|47-21| 21st Corner| Team1_No Corner_Team2 |
	|47-22| 22nd Corner| Team1_No Corner_Team2 |
	|47-23| 23rd Corner| Team1_No Corner_Team2 |
	|47-24| 24th Corner| Team1_No Corner_Team2 |
	|47-25| 25th Corner| Team1_No Corner_Team2 |
	|47-26| 26th Corner| Team1_No Corner_Team2 |
	|47-27| 27th Corner| Team1_No Corner_Team2 |
	|47-28| 28th Corner| Team1_No Corner_Team2 |
	|47-29| 29th Corner| Team1_No Corner_Team2 |
	|47-30| 30th Corner| Team1_No Corner_Team2 |
	|47-31| 31st Corner| Team1_No Corner_Team2 |
	|47-32| 32nd Corner| Team1_No Corner_Team2 |
	|47-33| 33rd Corner| Team1_No Corner_Team2 |
	|47-34| 34th Corner| Team1_No Corner_Team2 |
	|47-35| 35th Corner| Team1_No Corner_Team2 |
	|47-36| 36th Corner| Team1_No Corner_Team2 |
	|47-37| 37th Corner| Team1_No Corner_Team2 |
	|47-38| 38th Corner| Team1_No Corner_Team2 |
	|47-39| 39th Corner| Team1_No Corner_Team2 |
	|47-40| 40th Corner| Team1_No Corner_Team2 |
	|47-41| 41st Corner| Team1_No Corner_Team2 |
	|47-42| 42nd Corner| Team1_No Corner_Team2 |
	|47-43| 43rd Corner| Team1_No Corner_Team2 |
	|47-44| 44th Corner| Team1_No Corner_Team2 |
	|47-45| 45th Corner| Team1_No Corner_Team2 |
	|47-46| 46th Corner| Team1_No Corner_Team2 |
	|47-47| 47th Corner| Team1_No Corner_Team2 |
	|47-48| 48th Corner| Team1_No Corner_Team2 |
	|47-49| 49th Corner| Team1_No Corner_Team2 |
	|47-50| 50th Corner| Team1_No Corner_Team2 |
	|48-1| Total Bookings Points 25-40| Under 25_Between 25 And 40 Inclusive_Over 40 |
	|48-2| Total Bookings Points 45-60| Under 45_Between 45 And 60 Inclusive_Over 60 |
	|48-3| Total Bookings Points 65-80| Under 65_Between 65 And 80 Inclusive_Over 80 |
	|48-4| Total Bookings Points 85-100| Under 85_Between 85 And 100 Inclusive_Over 100 |
	|48-5| Total Bookings Points 105-120| Under 105_Between 105 And 120 Inclusive_Over 120 |
	|48-6| Total Bookings Points 125-140| Under 125_Between 125 And 140 Inclusive_Over 140 |
	|48-7| Total Bookings Points 145-160| Under 145_Between 145 And 160 Inclusive_Over 160 |
	|49-1| Total Bookings Under/Over 22.5| Under 22.5_Over 22.5 |
	|49-2| Total Bookings Under/Over 42.5| Under 42.5_Over 42.5 |
	|49-3| Total Bookings Under/Over 62.5| Under 62.5_Over 62.5 |
	|49-4| Total Bookings Under/Over 82.5| Under 82.5_Over 82.5 |
	|49-5| Total Bookings Under/Over 102.5| Under 102.5_Over 102.5 |
	|49-6| Total Bookings Under/Over 122.5| Under 122.5_Over 122.5 |
	|49-7| Total Bookings Under/Over 142.5| Under 142.5_Over 142.5 |
	|50-1| Team With Most Bookings| Team1_Draw_Team2 |
	|51-1| First Team To Be Booked| Team1 _No Card_Team2  |
	|52-1| Will There Be A Red Card?| Yes_No |
	|53-1| Will Team1 Get A Red Card?| Yes_No |
	|53-2| Will Team2 Get A Red Card?| Yes_No |
	|54-1| 1st Card| Team1_No Card_Team2 |
	|54-2| 2nd Card| Team1_No Card_Team2 |
	|54-3| 3rd Card| Team1_No Card_Team2 |
	|54-4| 4th Card| Team1_No Card_Team2 |
	|54-5| 5th Card| Team1_No Card_Team2 |
	|54-6| 6th Card| Team1_No Card_Team2 |
	|54-7| 7th Card| Team1_No Card_Team2 |
	|54-8| 8th Card| Team1_No Card_Team2 |
	|54-9| 9th Card| Team1_No Card_Team2 |
	|54-10| 10th Card| Team1_No Card_Team2 |
	|54-11| 11th Card| Team1_No Card_Team2 |
	|54-12| 12th Card| Team1_No Card_Team2 |
	|54-13| 13th Card| Team1_No Card_Team2 |
	|54-14| 14th Card| Team1_No Card_Team2 |
	|54-15| 15th Card| Team1_No Card_Team2 |
	|54-16| 16th Card| Team1_No Card_Team2 |
	|54-17| 17th Card| Team1_No Card_Team2 |
	|54-18| 18th Card| Team1_No Card_Team2 |
	|54-19| 19th Card| Team1_No Card_Team2 |
	|54-20| 20th Card| Team1_No Card_Team2 |
	|54-21| 21st Card| Team1_No Card_Team2 |
	|54-22| 22nd Card| Team1_No Card_Team2 |
	|54-23| 23rd Card| Team1_No Card_Team2 |
	|54-24| 24th Card| Team1_No Card_Team2 |
	|54-25| 25th Card| Team1_No Card_Team2 |
	|54-26| 26th Card| Team1_No Card_Team2 |
	|54-27| 27th Card| Team1_No Card_Team2 |
	|54-28| 28th Card| Team1_No Card_Team2 |
	|54-29| 29th Card| Team1_No Card_Team2 |
	|54-30| 30th Card| Team1_No Card_Team2 |
	|55-1| Will There Be A Penalty Awarded?| Yes_No |
	|56-1| Will There Be A Penalty Scored?| Yes_No |
	|57-1| First Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|57-2| Second Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|57-3| Third Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|57-4| Fourth Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|57-5| Fifth Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|57-6| Sixth Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|57-7| Seventh Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|57-8| Eighth Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|57-9| Ninth Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|57-10| Tenth Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|58-1| First Team1 Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|58-2| Second Team1 Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|58-3| Third Team1 Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|58-4| Fourth Team1 Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|58-5| Fifth Team1 Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|58-6| Sixth Team1 Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|58-7| First Team2 Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|58-8| Second Team2 Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|58-9| Third Team2 Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|58-10| Fourth Team2 Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|58-11| Fifth Team2 Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|58-12| Sixth Team2 Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|59-1| Last Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|60-1| Anytime - Yes/No| 0 Yes_0 No |
	|60-2| Anytime - Yes/No| 0 Yes_0 No |
	|60-3| Anytime - Yes/No| 0 Yes_0 No |
	|60-4| Anytime - Yes/No| 0 Yes_0 No |
	|60-5| Anytime - Yes/No| 0 Yes_0 No |
	|60-6| Anytime - Yes/No| 0 Yes_0 No |
	|60-7| Anytime - Yes/No| 0 Yes_0 No |
	|60-8| Anytime - Yes/No| 0 Yes_0 No |
	|60-9| Anytime - Yes/No| 0 Yes_0 No |
	|60-10| Anytime - Yes/No| 0 Yes_0 No |
	|60-11| Anytime - Yes/No| 0 Yes_0 No |
	|60-12| Anytime - Yes/No| 0 Yes_0 No |
	|60-13| Anytime - Yes/No| 0 Yes_0 No |
	|60-14| Anytime - Yes/No| 0 Yes_0 No |
	|60-15| Anytime - Yes/No| 0 Yes_0 No |
	|60-16| Anytime - Yes/No| 0 Yes_0 No |
	|60-17| Anytime - Yes/No| 0 Yes_0 No |
	|60-18| Anytime - Yes/No| 0 Yes_0 No |
	|60-19| Anytime - Yes/No| 0 Yes_0 No |
	|60-20| Anytime - Yes/No| 0 Yes_0 No |
	|60-21| Anytime - Yes/No| 0 Yes_0 No |
	|60-22| Anytime - Yes/No| 0 Yes_0 No |
	|60-23| Anytime - Yes/No| 0 Yes_0 No |
	|60-24| Anytime - Yes/No| 0 Yes_0 No |
	|60-25| Anytime - Yes/No| 0 Yes_0 No |
	|60-26| Anytime - Yes/No| 0 Yes_0 No |
	|60-27| Anytime - Yes/No| 0 Yes_0 No |
	|60-28| Anytime - Yes/No| 0 Yes_0 No |
	|60-29| Anytime - Yes/No| 0 Yes_0 No |
	|60-30| Anytime - Yes/No| 0 Yes_0 No |
	|60-31| Anytime - Yes/No| 0 Yes_0 No |
	|60-32| Anytime - Yes/No| 0 Yes_0 No |
	|60-33| Anytime - Yes/No| 0 Yes_0 No |
	|60-34| Anytime - Yes/No| 0 Yes_0 No |
	|60-35| Anytime - Yes/No| 0 Yes_0 No |
	|60-36| Anytime - Yes/No| 0 Yes_0 No |
	|60-37| Anytime - Yes/No| 0 Yes_0 No |
	|60-38| Anytime - Yes/No| 0 Yes_0 No |
	|60-39| Anytime - Yes/No| 0 Yes_0 No |
	|60-40| Anytime - Yes/No| 0 Yes_0 No |
	|60-41| Anytime - Yes/No| 0 Yes_0 No |
	|60-42| Anytime - Yes/No| 0 Yes_0 No |
	|60-43| Anytime - Yes/No| 0 Yes_0 No |
	|60-44| Anytime - Yes/No| 0 Yes_0 No |
	|60-45| Anytime - Yes/No| 0 Yes_0 No |
	|60-46| Anytime - Yes/No| 0 Yes_0 No |
	|60-47| Anytime - Yes/No| 0 Yes_0 No |
	|60-48| Anytime - Yes/No| 0 Yes_0 No |
	|60-49| Anytime - Yes/No| 0 Yes_0 No |
	|60-50| Anytime - Yes/No| 0 Yes_0 No |
	|60-51| Anytime - Yes/No| 0 Yes_0 No |
	|60-52| Anytime - Yes/No| 0 Yes_0 No |
	|60-53| Anytime - Yes/No| 0 Yes_0 No |
	|60-54| Anytime - Yes/No| 0 Yes_0 No |
	|60-55| Anytime - Yes/No| 0 Yes_0 No |
	|60-56| Anytime - Yes/No| 0 Yes_0 No |
	|60-57| Anytime - Yes/No| 0 Yes_0 No |
	|60-58| Anytime - Yes/No| 0 Yes_0 No |
	|60-59| Anytime - Yes/No| 0 Yes_0 No |
	|60-60| Anytime - Yes/No| 0 Yes_0 No |
	|60-61| Anytime - Yes/No| 0 Yes_0 No |
	|60-62| Anytime - Yes/No| 0 Yes_0 No |
	|60-63| Anytime - Yes/No| 0 Yes_0 No |
	|60-64| Anytime - Yes/No| 0 Yes_0 No |
	|60-65| Anytime - Yes/No| 0 Yes_0 No |
	|60-66| Anytime - Yes/No| 0 Yes_0 No |
	|60-67| Anytime - Yes/No| 0 Yes_0 No |
	|60-68| Anytime - Yes/No| 0 Yes_0 No |
	|60-69| Anytime - Yes/No| 0 Yes_0 No |
	|60-70| Anytime - Yes/No| 0 Yes_0 No |
	|60-71| Anytime - Yes/No| 0 Yes_0 No |
	|60-72| Anytime - Yes/No| 0 Yes_0 No |
	|60-73| Anytime - Yes/No| 0 Yes_0 No |
	|60-74| Anytime - Yes/No| 0 Yes_0 No |
	|60-75| Anytime - Yes/No| 0 Yes_0 No |
	|60-76| Anytime - Yes/No| 0 Yes_0 No |
	|60-77| Anytime - Yes/No| 0 Yes_0 No |
	|60-78| Anytime - Yes/No| 0 Yes_0 No |
	|60-79| Anytime - Yes/No| 0 Yes_0 No |
	|60-80| Anytime - Yes/No| 0 Yes_0 No |
	|61-1| Brace - Yes/No| 0 Yes_0 No |
	|61-2| Brace - Yes/No| 0 Yes_0 No |
	|61-3| Brace - Yes/No| 0 Yes_0 No |
	|61-4| Brace - Yes/No| 0 Yes_0 No |
	|61-5| Brace - Yes/No| 0 Yes_0 No |
	|61-6| Brace - Yes/No| 0 Yes_0 No |
	|61-7| Brace - Yes/No| 0 Yes_0 No |
	|61-8| Brace - Yes/No| 0 Yes_0 No |
	|61-9| Brace - Yes/No| 0 Yes_0 No |
	|61-10| Brace - Yes/No| 0 Yes_0 No |
	|61-11| Brace - Yes/No| 0 Yes_0 No |
	|61-12| Brace - Yes/No| 0 Yes_0 No |
	|61-13| Brace - Yes/No| 0 Yes_0 No |
	|61-14| Brace - Yes/No| 0 Yes_0 No |
	|61-15| Brace - Yes/No| 0 Yes_0 No |
	|61-16| Brace - Yes/No| 0 Yes_0 No |
	|61-17| Brace - Yes/No| 0 Yes_0 No |
	|61-18| Brace - Yes/No| 0 Yes_0 No |
	|61-19| Brace - Yes/No| 0 Yes_0 No |
	|61-20| Brace - Yes/No| 0 Yes_0 No |
	|61-21| Brace - Yes/No| 0 Yes_0 No |
	|61-22| Brace - Yes/No| 0 Yes_0 No |
	|61-23| Brace - Yes/No| 0 Yes_0 No |
	|61-24| Brace - Yes/No| 0 Yes_0 No |
	|61-25| Brace - Yes/No| 0 Yes_0 No |
	|61-26| Brace - Yes/No| 0 Yes_0 No |
	|61-27| Brace - Yes/No| 0 Yes_0 No |
	|61-28| Brace - Yes/No| 0 Yes_0 No |
	|61-29| Brace - Yes/No| 0 Yes_0 No |
	|61-30| Brace - Yes/No| 0 Yes_0 No |
	|61-31| Brace - Yes/No| 0 Yes_0 No |
	|61-32| Brace - Yes/No| 0 Yes_0 No |
	|61-33| Brace - Yes/No| 0 Yes_0 No |
	|61-34| Brace - Yes/No| 0 Yes_0 No |
	|61-35| Brace - Yes/No| 0 Yes_0 No |
	|61-36| Brace - Yes/No| 0 Yes_0 No |
	|61-37| Brace - Yes/No| 0 Yes_0 No |
	|61-38| Brace - Yes/No| 0 Yes_0 No |
	|61-39| Brace - Yes/No| 0 Yes_0 No |
	|61-40| Brace - Yes/No| 0 Yes_0 No |
	|61-41| Brace - Yes/No| 0 Yes_0 No |
	|61-42| Brace - Yes/No| 0 Yes_0 No |
	|61-43| Brace - Yes/No| 0 Yes_0 No |
	|61-44| Brace - Yes/No| 0 Yes_0 No |
	|61-45| Brace - Yes/No| 0 Yes_0 No |
	|61-46| Brace - Yes/No| 0 Yes_0 No |
	|61-47| Brace - Yes/No| 0 Yes_0 No |
	|61-48| Brace - Yes/No| 0 Yes_0 No |
	|61-49| Brace - Yes/No| 0 Yes_0 No |
	|61-50| Brace - Yes/No| 0 Yes_0 No |
	|61-51| Brace - Yes/No| 0 Yes_0 No |
	|61-52| Brace - Yes/No| 0 Yes_0 No |
	|61-53| Brace - Yes/No| 0 Yes_0 No |
	|61-54| Brace - Yes/No| 0 Yes_0 No |
	|61-55| Brace - Yes/No| 0 Yes_0 No |
	|61-56| Brace - Yes/No| 0 Yes_0 No |
	|61-57| Brace - Yes/No| 0 Yes_0 No |
	|61-58| Brace - Yes/No| 0 Yes_0 No |
	|61-59| Brace - Yes/No| 0 Yes_0 No |
	|61-60| Brace - Yes/No| 0 Yes_0 No |
	|61-61| Brace - Yes/No| 0 Yes_0 No |
	|61-62| Brace - Yes/No| 0 Yes_0 No |
	|61-63| Brace - Yes/No| 0 Yes_0 No |
	|61-64| Brace - Yes/No| 0 Yes_0 No |
	|61-65| Brace - Yes/No| 0 Yes_0 No |
	|61-66| Brace - Yes/No| 0 Yes_0 No |
	|61-67| Brace - Yes/No| 0 Yes_0 No |
	|61-68| Brace - Yes/No| 0 Yes_0 No |
	|61-69| Brace - Yes/No| 0 Yes_0 No |
	|61-70| Brace - Yes/No| 0 Yes_0 No |
	|61-71| Brace - Yes/No| 0 Yes_0 No |
	|61-72| Brace - Yes/No| 0 Yes_0 No |
	|61-73| Brace - Yes/No| 0 Yes_0 No |
	|61-74| Brace - Yes/No| 0 Yes_0 No |
	|61-75| Brace - Yes/No| 0 Yes_0 No |
	|61-76| Brace - Yes/No| 0 Yes_0 No |
	|61-77| Brace - Yes/No| 0 Yes_0 No |
	|61-78| Brace - Yes/No| 0 Yes_0 No |
	|61-79| Brace - Yes/No| 0 Yes_0 No |
	|61-80| Brace - Yes/No| 0 Yes_0 No |
	|62-1| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-2| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-3| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-4| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-5| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-6| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-7| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-8| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-9| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-10| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-11| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-12| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-13| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-14| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-15| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-16| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-17| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-18| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-19| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-20| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-21| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-22| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-23| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-24| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-25| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-26| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-27| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-28| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-29| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-30| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-31| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-32| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-33| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-34| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-35| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-36| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-37| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-38| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-39| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-40| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-41| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-42| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-43| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-44| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-45| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-46| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-47| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-48| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-49| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-50| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-51| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-52| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-53| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-54| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-55| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-56| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-57| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-58| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-59| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-60| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-61| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-62| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-63| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-64| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-65| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-66| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-67| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-68| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-69| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-70| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-71| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-72| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-73| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-74| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-75| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-76| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-77| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-78| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-79| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-80| Hat-trick - Yes/No| 0 Yes_0 No |
	|63-1| 1st Goalscorer Shirt - Under/Over 6.5| Under 6.5_Over 6.5_No Goal |
	|63-2| 2nd Goalscorer Shirt - Under/Over 6.5| Under 6.5_Over 6.5_No Goal |
	|63-3| 3rd Goalscorer Shirt - Under/Over 6.5| Under 6.5_Over 6.5_No Goal |
	|63-4| 4th Goalscorer Shirt - Under/Over 6.5| Under 6.5_Over 6.5_No Goal |
	|63-5| 5th Goalscorer Shirt - Under/Over 6.5| Under 6.5_Over 6.5_No Goal |
	|63-6| 6th Goalscorer Shirt - Under/Over 6.5| Under 6.5_Over 6.5_No Goal |
	|63-7| 1st Goalscorer Shirt - Under/Over 8.5| Under 8.5_Over 8.5_No Goal |
	|63-8| 2nd Goalscorer Shirt - Under/Over 8.5| Under 8.5_Over 8.5_No Goal |
	|63-9| 3rd Goalscorer Shirt - Under/Over 8.5| Under 8.5_Over 8.5_No Goal |
	|63-10| 4th Goalscorer Shirt - Under/Over 8.5| Under 8.5_Over 8.5_No Goal |
	|63-11| 5th Goalscorer Shirt - Under/Over 8.5| Under 8.5_Over 8.5_No Goal |
	|63-12| 6th Goalscorer Shirt - Under/Over 8.5| Under 8.5_Over 8.5_No Goal |
	|63-13| 1st Goalscorer Shirt - Under/Over 10.5| Under 10.5_Over 10.5_No Goal |
	|63-14| 2nd Goalscorer Shirt - Under/Over 10.5| Under 10.5_Over 10.5_No Goal |
	|63-15| 3rd Goalscorer Shirt - Under/Over 10.5| Under 10.5_Over 10.5_No Goal |
	|63-16| 4th Goalscorer Shirt - Under/Over 10.5| Under 10.5_Over 10.5_No Goal |
	|63-17| 5th Goalscorer Shirt - Under/Over 10.5| Under 10.5_Over 10.5_No Goal |
	|63-18| 6th Goalscorer Shirt - Under/Over 10.5| Under 10.5_Over 10.5_No Goal |
	|63-19| 1st Goalscorer Shirt - Under/Over 12.5| Under 12.5_Over 12.5_No Goal |
	|63-20| 2nd Goalscorer Shirt - Under/Over 12.5| Under 12.5_Over 12.5_No Goal |
	|63-21| 3rd Goalscorer Shirt - Under/Over 12.5| Under 12.5_Over 12.5_No Goal |
	|63-22| 4th Goalscorer Shirt - Under/Over 12.5| Under 12.5_Over 12.5_No Goal |
	|63-23| 5th Goalscorer Shirt - Under/Over 12.5| Under 12.5_Over 12.5_No Goal |
	|63-24| 6th Goalscorer Shirt - Under/Over 12.5| Under 12.5_Over 12.5_No Goal |
	|63-25| 1st Goalscorer Shirt - Under/Over 14.5| Under 14.5_Over 14.5_No Goal |
	|63-26| 2nd Goalscorer Shirt - Under/Over 14.5| Under 14.5_Over 14.5_No Goal |
	|63-27| 3rd Goalscorer Shirt - Under/Over 14.5| Under 14.5_Over 14.5_No Goal |
	|63-28| 4th Goalscorer Shirt - Under/Over 14.5| Under 14.5_Over 14.5_No Goal |
	|63-29| 5th Goalscorer Shirt - Under/Over 14.5| Under 14.5_Over 14.5_No Goal |
	|63-30| 6th Goalscorer Shirt - Under/Over 14.5| Under 14.5_Over 14.5_No Goal |
	|63-31| 1st Goalscorer Shirt - Under/Over 16.5| Under 16.5_Over 16.5_No Goal |
	|63-32| 2nd Goalscorer Shirt - Under/Over 16.5| Under 16.5_Over 16.5_No Goal |
	|63-33| 3rd Goalscorer Shirt - Under/Over 16.5| Under 16.5_Over 16.5_No Goal |
	|63-34| 4th Goalscorer Shirt - Under/Over 16.5| Under 16.5_Over 16.5_No Goal |
	|63-35| 5th Goalscorer Shirt - Under/Over 16.5| Under 16.5_Over 16.5_No Goal |
	|63-36| 6th Goalscorer Shirt - Under/Over 16.5| Under 16.5_Over 16.5_No Goal |
	|63-37| 1st Goalscorer Shirt - Under/Over 18.5| Under 18.5_Over 18.5_No Goal |
	|63-38| 2nd Goalscorer Shirt - Under/Over 18.5| Under 18.5_Over 18.5_No Goal |
	|63-39| 3rd Goalscorer Shirt - Under/Over 18.5| Under 18.5_Over 18.5_No Goal |
	|63-40| 4th Goalscorer Shirt - Under/Over 18.5| Under 18.5_Over 18.5_No Goal |
	|63-41| 5th Goalscorer Shirt - Under/Over 18.5| Under 18.5_Over 18.5_No Goal |
	|63-42| 6th Goalscorer Shirt - Under/Over 18.5| Under 18.5_Over 18.5_No Goal |
	|66-1| Double Chance| Team1 - Draw_Team2 - Draw_Team1 - Team2 |
	|67-1| Anytime Goalscorer| Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0 |
	|68-1| Brace Goalscorer| Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0 |
	|69-1| Hat-trick Goalscorer| Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0 |
	|70-1| 1st Half Goals - Under/Over 0.5| Under 0.5_Over 0.5 |
	|70-2| 1st Half Goals - Under/Over 1.5| Under 1.5_Over 1.5 |
	|70-3| 1st Half Goals - Under/Over 2.5| Under 2.5_Over 2.5 |
	|70-4| 1st Half Goals - Under/Over 3.5| Under 3.5_Over 3.5 |
	|70-5| 1st Half Goals - Under/Over 4.5| Under 4.5_Over 4.5 |
	|70-6| 1st Half Goals - Under/Over 5.5| Under 5.5_Over 5.5 |
	|70-7| 1st Half Goals - Under/Over 6.5| Under 6.5_Over 6.5 |
	|73-1| Team1 Win Both Havles| Yes_No |
	|73-2| Team2 Win Both Havles| Yes_No |
	|74-1| Team To Score Last Goal| Team1_Team2_Not Scored |
	|75-1| 1st Goal own goal?| Yes_No |
	|75-2| 2nd Goal own goal?| Yes_No |
	|75-3| 3rd Goal own goal?| Yes_No |
	|75-4| 4th Goal own goal?| Yes_No |
	|75-5| 5th Goal own goal?| Yes_No |
	|75-6| 6th Goal own goal?| Yes_No |
	|75-7| 7th Goal own goal?| Yes_No |
	|75-8| 8th Goal own goal?| Yes_No |
	|75-9| 9th Goal own goal?| Yes_No |
	|75-10| 10th Goal own goal?| Yes_No |
	|76-1| Last goal own goal?| Yes_No |
	|77-1| Own Goal in 90 minutes?| Yes_No |
	|78-1| Winrush| Team1 and Yes_Team1 and No_Team2 and Yes_Team2 and No_Draw and Yes_Draw and No |
	|36-2| Total Corners 4 - 6| Under 4_Between 4 And 6 Inclusive_Over 6 |
	|36-3| Total Corners 7 - 9| Under 7_Between 7 And 9 Inclusive_Over 9 |
	|36-4| Total Corners 13 - 15| Under 13_Between 13 And 15 Inclusive_Over 15 |
	|36-5| Total Corners 16 - 18| Under 16_Between 16 And 18 Inclusive_Over 18 |
	|79-1| Total Team1 Corners 0.5| Under 0.5_Over 0.5 |
	|79-2| Total Team1 Corners 1.5| Under 1.5_Over 1.5 |
	|79-3| Total Team1 Corners 2.5| Under 2.5_Over 2.5 |
	|79-4| Total Team1 Corners 3.5| Under 3.5_Over 3.5 |
	|79-5| Total Team1 Corners 4.5| Under 4.5_Over 4.5 |
	|79-6| Total Team1 Corners 5.5| Under 5.5_Over 5.5 |
	|79-7| Total Team1 Corners 6.5| Under 6.5_Over 6.5 |
	|79-8| Total Team1 Corners 7.5| Under 7.5_Over 7.5 |
	|79-9| Total Team1 Corners 8.5| Under 8.5_Over 8.5 |
	|79-10| Total Team1 Corners 9.5| Under 9.5_Over 9.5 |
	|79-11| Total Team1 Corners 10.5| Under 10.5_Over 10.5 |
	|79-12| Total Team1 Corners 11.5| Under 11.5_Over 11.5 |
	|79-13| Total Team1 Corners 12.5| Under 12.5_Over 12.5 |
	|79-14| Total Team1 Corners 13.5| Under 13.5_Over 13.5 |
	|79-15| Total Team1 Corners 14.5| Under 14.5_Over 14.5 |
	|79-16| Total Team1 Corners 15.5| Under 15.5_Over 15.5 |
	|79-17| Total Team1 Corners 16.5| Under 16.5_Over 16.5 |
	|79-18| Total Team1 Corners 17.5| Under 17.5_Over 17.5 |
	|79-19| Total Team1 Corners 18.5| Under 18.5_Over 18.5 |
	|79-20| Total Team1 Corners 19.5| Under 19.5_Over 19.5 |
	|79-21| Total Team1 Corners 20.5| Under 20.5_Over 20.5 |
	|79-22| Total Team2 Corners 0.5| Under 0.5_Over 0.5 |
	|79-23| Total Team2 Corners 1.5| Under 1.5_Over 1.5 |
	|79-24| Total Team2 Corners 2.5| Under 2.5_Over 2.5 |
	|79-25| Total Team2 Corners 3.5| Under 3.5_Over 3.5 |
	|79-26| Total Team2 Corners 4.5| Under 4.5_Over 4.5 |
	|79-27| Total Team2 Corners 5.5| Under 5.5_Over 5.5 |
	|79-28| Total Team2 Corners 6.5| Under 6.5_Over 6.5 |
	|79-29| Total Team2 Corners 7.5| Under 7.5_Over 7.5 |
	|79-30| Total Team2 Corners 8.5| Under 8.5_Over 8.5 |
	|79-31| Total Team2 Corners 9.5| Under 9.5_Over 9.5 |
	|79-32| Total Team2 Corners 10.5| Under 10.5_Over 10.5 |
	|79-33| Total Team2 Corners 11.5| Under 11.5_Over 11.5 |
	|79-34| Total Team2 Corners 12.5| Under 12.5_Over 12.5 |
	|79-35| Total Team2 Corners 13.5| Under 13.5_Over 13.5 |
	|79-36| Total Team2 Corners 14.5| Under 14.5_Over 14.5 |
	|79-37| Total Team2 Corners 15.5| Under 15.5_Over 15.5 |
	|79-38| Total Team2 Corners 16.5| Under 16.5_Over 16.5 |
	|79-39| Total Team2 Corners 17.5| Under 17.5_Over 17.5 |
	|79-40| Total Team2 Corners 18.5| Under 18.5_Over 18.5 |
	|79-41| Total Team2 Corners 19.5| Under 19.5_Over 19.5 |
	|79-42| Total Team2 Corners 20.5| Under 20.5_Over 20.5 |
	|80-1| Team1 Corner Bands 2 - 3| Under 2_Between 2 And 3 Inclusive_Over 3 |
	|80-2| Team1 Corner Bands 4 - 5| Under 4_Between 4 And 5 Inclusive_Over 5 |
	|80-3| Team1 Corner Bands 6 - 7| Under 6_Between 6 And 7 Inclusive_Over 7 |
	|80-4| Team1 Corner Bands 8 - 9| Under 8_Between 8 And 9 Inclusive_Over 9 |
	|80-5| Team1 Corner Bands 10 - 11| Under 10_Between 10 And 11 Inclusive_Over 11 |
	|80-6| Team2 Corner Bands 2 - 3| Under 2_Between 2 And 3 Inclusive_Over 3 |
	|80-7| Team2 Corner Bands 4 - 5| Under 4_Between 4 And 5 Inclusive_Over 5 |
	|80-8| Team2 Corner Bands 6 - 7| Under 6_Between 6 And 7 Inclusive_Over 7 |
	|80-9| Team2 Corner Bands 8 - 9| Under 8_Between 8 And 9 Inclusive_Over 9 |
	|80-10| Team2 Corner Bands 10 - 11| Under 10_Between 10 And 11 Inclusive_Over 11 |
	|81-1| 1st Half Red Card| Yes_No |
	|81-2| 2nd Half Red Card| Yes_No |
	|82-1| 1st Half Penalty Awarded| Yes_No |
	|82-2| 2nd Half Penalty Awarded| Yes_No |
	|83-1| Total Team1 Goals Under/Over 0.5| Under 0.5_Over 0.5 |
	|83-2| Total Team1 Goals Under/Over 1.5| Under 1.5_Over 1.5 |
	|83-3| Total Team1 Goals Under/Over 2.5| Under 2.5_Over 2.5 |
	|83-4| Total Team1 Goals Under/Over 3.5| Under 3.5_Over 3.5 |
	|83-5| Total Team1 Goals Under/Over 4.5| Under 4.5_Over 4.5 |
	|83-6| Total Team1 Goals Under/Over 5.5| Under 5.5_Over 5.5 |
	|83-7| Total Team1 Goals Under/Over 6.5| Under 6.5_Over 6.5 |
	|83-8| Total Team1 Goals Under/Over 7.5| Under 7.5_Over 7.5 |
	|83-9| Total Team1 Goals Under/Over 8.5| Under 8.5_Over 8.5 |
	|83-10| Total Team1 Goals Under/Over 9.5| Under 9.5_Over 9.5 |
	|83-11| Total Team2 Goals Under/Over 0.5| Under 0.5_Over 0.5 |
	|83-12| Total Team2 Goals Under/Over 1.5| Under 1.5_Over 1.5 |
	|83-13| Total Team2 Goals Under/Over 2.5| Under 2.5_Over 2.5 |
	|83-14| Total Team2 Goals Under/Over 3.5| Under 3.5_Over 3.5 |
	|83-15| Total Team2 Goals Under/Over 4.5| Under 4.5_Over 4.5 |
	|83-16| Total Team2 Goals Under/Over 5.5| Under 5.5_Over 5.5 |
	|83-17| Total Team2 Goals Under/Over 6.5| Under 6.5_Over 6.5 |
	|83-18| Total Team2 Goals Under/Over 7.5| Under 7.5_Over 7.5 |
	|83-19| Total Team2 Goals Under/Over 8.5| Under 8.5_Over 8.5 |
	|83-20| Total Team2 Goals Under/Over 9.5| Under 9.5_Over 9.5 |
	|84-1| 2nd Half Result| Team1_Draw_Team2 |
	|85-1| A Goal to be Scored in 1 - 15 Minutes| Yes_No |
	|85-2| A Goal to be Scored in 16 - 30 Minutes| Yes_No |
	|85-3| A Goal to be Scored in 31 - 45 Minutes| Yes_No |
	|85-4| A Goal to be Scored in 46 - 60 Minutes| Yes_No |
	|85-5| A Goal to be Scored in 61 - 75 Minutes| Yes_No |
	|85-6| A Goal to be Scored in 76 - 90 Minutes| Yes_No |
	|86-1| Team1 to score a Goal in 1 - 15 Minutes| Yes_No |
	|86-2| Team1 to score a Goal in 16 - 30 Minutes| Yes_No |
	|86-3| Team1 to score a Goal in 31 - 45 Minutes| Yes_No |
	|86-4| Team1 to score a Goal in 46 - 60 Minutes| Yes_No |
	|86-5| Team1 to score a Goal in 61 - 75 Minutes| Yes_No |
	|86-6| Team1 to score a Goal in 76 - 90 Minutes| Yes_No |
	|86-7| Team2 to score a Goal in 1 - 15 Minutes| Yes_No |
	|86-8| Team2 to score a Goal in 16 - 30 Minutes| Yes_No |
	|86-9| Team2 to score a Goal in 31 - 45 Minutes| Yes_No |
	|86-10| Team2 to score a Goal in 46 - 60 Minutes| Yes_No |
	|86-11| Team2 to score a Goal in 61 - 75 Minutes| Yes_No |
	|86-12| Team2 to score a Goal in 76 - 90 Minutes| Yes_No |
	|87-1| Both Teams Score In 1st Half| Yes_No |
	|87-2| Both Teams Score In 2nd Half| Yes_No |
	|88-1| Both Teams To Score In Both Halves| Yes_No |
	|89-1| Match Winner + Goals| Team1 And Under 2.5 Goals_Team1 And Over 2.5 Goals_Draw And Under 2.5 Goals_Draw And Over 2.5 Goals_Team2 And Under 2.5 Goals_Team2 And Over 2.5 Goals |
	|90-1| Match Winning Margin| Score Draw_Exactly 1 Goal_Exactly 2 Goals_3 Goals Or More |
	|91-1| Team1 To Win Either Half| Yes_No |
	|91-2| Team2 To Win Either Half| Yes_No |
	|92-1| Winning Team Between 1 And 15 Minutes| Team1_Match Drawn_Team2 |
	|92-2| Winning Team Between 16 And 30 Minutes| Team1_Match Drawn_Team2 |
	|92-3| Winning Team Between 31 And 45 Minutes| Team1_Match Drawn_Team2 |
	|92-4| Winning Team Between 46 And 60 Minutes| Team1_Match Drawn_Team2 |
	|92-5| Winning Team Between 61 And 75 Minutes| Team1_Match Drawn_Team2 |
	|92-6| Winning Team Between 76 And 90 Minutes| Team1_Match Drawn_Team2 |
	|93-1| Player To Score In Both Halves| Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0 |
	|94-1| Player To Score In Minutes 1-10| Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0 |
	|95-1| Team1 - Anytime Wincast Win| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0 |
	|95-2| Team2 - Anytime Wincast Win| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0 |
	|95-3| Team1 - Anytime Wincast Lose| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0 |
	|95-4| Team2 - Anytime Wincast Lose| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0 |
	|95-5| Team1 - Anytime Wincast Draw| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0 |
	|95-6| Team2 - Anytime Wincast Draw| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0 |
	 

Scenario: Extra time, no penalties
	Given I have created a linked fixture for Football with the following base variables 
	| Name            | Value |
	| MatchLength     | 90    |
	| EtMatchLength   | 30    |
	| ExtratimeActive | true  |
	| PenaltiesActive | false |

	When I request the last response without modifiying any display metadata
	Then The last response should contain the following default market and selection names

	| Market Id | Market Display Name                           | Selection Display Names |
	| 1-1       | Match Winner                                  | Team1_Draw_Team2        |      
	|2-1| Double Chance 1| Team1 - Draw_Team2  |
	|2-2| Double Chance 2| Team2 - Draw_Team1  |
	|2-3| Double Chance 3| Team1 - Team2_Draw  |
	|3-1| Winning Margin| Team1 By Exactly 1 Goal_Team1 By Exactly 2 Goals_Team1 By Exactly 3 Goals_Team1 By 4 Or More Goals_Team2 By Exactly 1 Goal_Team2 By Exactly 2 Goals_Team2 By Exactly 3 Goals_Team2 By 4 Or More Goals_0-0 Draw_Score Draw |
	|4-1| Team1 To Score In Both Halves| Yes_No |
	|4-2| Team2 To Score In Both Halves| Yes_No |
	|5-1| Total Goals - Under/Over 0.5| Under 0.5_Over 0.5 |
	|5-2| Total Goals - Under/Over 1.5| Under 1.5_Over 1.5 |
	|5-3| Total Goals - Under/Over 2.5| Under 2.5_Over 2.5 |
	|5-4| Total Goals - Under/Over 3.5| Under 3.5_Over 3.5 |
	|5-5| Total Goals - Under/Over 4.5| Under 4.5_Over 4.5 |
	|5-6| Total Goals - Under/Over 5.5| Under 5.5_Over 5.5 |
	|5-7| Total Goals - Under/Over 6.5| Under 6.5_Over 6.5 |
	|5-8| Total Goals - Under/Over 7.5| Under 7.5_Over 7.5 |
	|5-9| Total Goals - Under/Over 8.5| Under 8.5_Over 8.5 |
	|5-10| Total Goals - Under/Over 9.5| Under 9.5_Over 9.5 |
	|5-11| Total Goals - Under/Over 10.5| Under 10.5_Over 10.5 |
	|5-12| Total Goals - Under/Over 11.5| Under 11.5_Over 11.5 |
	|5-13| Total Goals - Under/Over 12.5| Under 12.5_Over 12.5 |
	|6-1| Number Of Goals In Match| Under 2_Exactly 2_Over 2 |
	|7-1| Number Of Goals In 1st Half| Under 1_Exactly 1_Over 1 |
	|7-2| Number Of Goals In 2nd Half| Under 1_Exactly 1_Over 1 |
	|8-18| Asian Handicap -5| Team1 -5_Team2 +5 |
	|8-19| Asian Handicap -4.75| Team1 -4.75_Team2 +4.75 |
	|8-20| Asian Handicap -4.5| Team1 -4.5_Team2 +4.5 |
	|8-21| Asian Handicap -4.25| Team1 -4.25_Team2 +4.25 |
	|8-22| Asian Handicap -4| Team1 -4_Team2 +4 |
	|8-23| Asian Handicap -3.75| Team1 -3.75_Team2 +3.75 |
	|8-24| Asian Handicap -3.5| Team1 -3.5_Team2 +3.5 |
	|8-25| Asian Handicap -3.25| Team1 -3.25_Team2 +3.25 |
	|8-26| Asian Handicap -3| Team1 -3_Team2 +3 |
	|8-27| Asian Handicap -2.75| Team1 -2.75_Team2 +2.75 |
	|8-28| Asian Handicap -2.5| Team1 -2.5_Team2 +2.5 |
	|8-29| Asian Handicap -2.25| Team1 -2.25_Team2 +2.25 |
	|8-1| Asian Handicap -2| Team1 -2_Team2 +2 |
	|8-2| Asian Handicap -1.75| Team1 -1.75_Team2 +1.75 |
	|8-3| Asian Handicap -1.5| Team1 -1.5_Team2 +1.5 |
	|8-4| Asian Handicap -1.25| Team1 -1.25_Team2 +1.25 |
	|8-5| Asian Handicap -1| Team1 -1_Team2 +1 |
	|8-6| Asian Handicap -0.75| Team1 -0.75_Team2 +0.75 |
	|8-7| Asian Handicap -0.5| Team1 -0.5_Team2 +0.5 |
	|8-8| Asian Handicap -0.25| Team1 -0.25_Team2 +0.25 |
	|8-9| Asian Handicap 0| Team1 0_Team2 0 |
	|8-10| Asian Handicap +0.25| Team1 +0.25_Team2 -0.25 |
	|8-11| Asian Handicap +0.5| Team1 +0.5_Team2 -0.5 |
	|8-12| Asian Handicap +0.75| Team1 +0.75_Team2 -0.75 |
	|8-13| Asian Handicap +1| Team1 +1_Team2 -1 |
	|8-14| Asian Handicap +1.25| Team1 +1.25_Team2 -1.25 |
	|8-15| Asian Handicap +1.5| Team1 +1.5_Team2 -1.5 |
	|8-16| Asian Handicap +1.75| Team1 +1.75_Team2 -1.75 |
	|8-17| Asian Handicap +2| Team1 +2_Team2 -2 |
	|8-30| Asian Handicap +2.25| Team1 +2.25_Team2 -2.25 |
	|8-31| Asian Handicap +2.5| Team1 +2.5_Team2 -2.5 |
	|8-32| Asian Handicap +2.75| Team1 +2.75_Team2 -2.75 |
	|8-33| Asian Handicap +3| Team1 +3_Team2 -3 |
	|8-34| Asian Handicap +3.25| Team1 +3.25_Team2 -3.25 |
	|8-35| Asian Handicap +3.5| Team1 +3.5_Team2 -3.5 |
	|8-36| Asian Handicap +3.75| Team1 +3.75_Team2 -3.75 |
	|8-37| Asian Handicap +4| Team1 +4_Team2 -4 |
	|8-38| Asian Handicap +4.25| Team1 +4.25_Team2 -4.25 |
	|8-39| Asian Handicap +4.5| Team1 +4.5_Team2 -4.5 |
	|8-40| Asian Handicap +4.75| Team1 +4.75_Team2 -4.75 |
	|8-41| Asian Handicap +5| Team1 +5_Team2 -5 |
	|9-1| Handicap -5| Team1 -5_Draw (Team1 -5)_Team2 +5 |
	|9-2| Handicap -4| Team1 -4_Draw (Team1 -4)_Team2 +4 |
	|9-3| Handicap -3| Team1 -3_Draw (Team1 -3)_Team2 +3 |
	|9-4| Handicap -2| Team1 -2_Draw (Team1 -2)_Team2 +2 |
	|9-5| Handicap -1| Team1 -1_Draw (Team1 -1)_Team2 +1 |
	|9-6| Handicap 0| Team1 0_Draw (Team1 0)_Team2 0 |
	|9-7| Handicap +1| Team1 +1_Draw (Team1 +1)_Team2 -1 |
	|9-8| Handicap +2| Team1 +2_Draw (Team1 +2)_Team2 -2 |
	|9-9| Handicap +3| Team1 +3_Draw (Team1 +3)_Team2 -3 |
	|9-10| Handicap +4| Team1 +4_Draw (Team1 +4)_Team2 -4 |
	|9-11| Handicap +5| Team1 +5_Draw (Team1 +5)_Team2 -5 |
	|10-1| Draw No Bet| Team1_Team2 |
	|11-1| Team1 - Win To Nil| Yes_No |
	|11-2| Team2 - Win To Nil| Yes_No |
	|12-1| Full Time Correct Score| Team1  1 - 0_Team1  2 - 0_Team1  2 - 1_Team1  3 - 0_Team1  3 - 1_Team1  3 - 2_Team1  4 - 0_Team1  4 - 1_Team1  4 - 2_Team1  4 - 3_Team1  5 - 0_Team1  5 - 1_Team1  5 - 2_Team1  5 - 3_Team1  5 - 4_Team1  6 - 0_Team1  6 - 1_Team1  6 - 2_Team1  6 - 3_Team1  6 - 4_Team1  6 - 5_Team1  7 - 0_Team1  7 - 1_Team1  7 - 2_Team1  7 - 3_Team1  7 - 4_Team1  7 - 5_Team1  7 - 6_Team1  8 - 0_Team1  8 - 1_Team1  8 - 2_Team1  8 - 3_Team1  8 - 4_Team1  8 - 5_Team1  8 - 6_Team1  8 - 7_Team1  9 - 0_Team1  9 - 1_Team1  9 - 2_Team1  9 - 3_Team1  9 - 4_Team1  9 - 5_Team1  9 - 6_Team1  9 - 7_Team1  9 - 8_Team1  10 - 0_Team1  10 - 1_Team1  10 - 2_Team1  10 - 3_Team1  10 - 4_Team1  10 - 5_Team1  10 - 6_Team1  10 - 7_Team1  10 - 8_Team1  10 - 9_Team1  11 - 0_Team1  11 - 1_Team1  11 - 2_Team1  11 - 3_Team1  11 - 4_Team1  11 - 5_Team1  11 - 6_Team1  11 - 7_Team1  11 - 8_Team1  11 - 9_Team1  11 - 10_Team1  12 - 0_Team1  12 - 1_Team1  12 - 2_Team1  12 - 3_Team1  12 - 4_Team1  12 - 5_Team1  12 - 6_Team1  12 - 7_Team1  12 - 8_Team1  12 - 9_Team1  12 - 10_Team1  12 - 11_Draw  0 - 0_Draw  1 - 1_Draw  2 - 2_Draw  3 - 3_Draw  4 - 4_Draw  5 - 5_Draw  6 - 6_Draw  7 - 7_Draw  8 - 8_Draw  9 - 9_Draw  10 - 10_Draw  11 - 11_Draw  12 - 12_Team2  1 - 0_Team2  2 - 0_Team2  2 - 1_Team2  3 - 0_Team2  3 - 1_Team2  3 - 2_Team2  4 - 0_Team2  4 - 1_Team2  4 - 2_Team2  4 - 3_Team2  5 - 0_Team2  5 - 1_Team2  5 - 2_Team2  5 - 3_Team2  5 - 4_Team2  6 - 0_Team2  6 - 1_Team2  6 - 2_Team2  6 - 3_Team2  6 - 4_Team2  6 - 5_Team2  7 - 0_Team2  7 - 1_Team2  7 - 2_Team2  7 - 3_Team2  7 - 4_Team2  7 - 5_Team2  7 - 6_Team2  8 - 0_Team2  8 - 1_Team2  8 - 2_Team2  8 - 3_Team2  8 - 4_Team2  8 - 5_Team2  8 - 6_Team2  8 - 7_Team2  9 - 0_Team2  9 - 1_Team2  9 - 2_Team2  9 - 3_Team2  9 - 4_Team2  9 - 5_Team2  9 - 6_Team2  9 - 7_Team2  9 - 8_Team2  10 - 0_Team2  10 - 1_Team2  10 - 2_Team2  10 - 3_Team2  10 - 4_Team2  10 - 5_Team2  10 - 6_Team2  10 - 7_Team2  10 - 8_Team2  10 - 9_Team2  11 - 0_Team2  11 - 1_Team2  11 - 2_Team2  11 - 3_Team2  11 - 4_Team2  11 - 5_Team2  11 - 6_Team2  11 - 7_Team2  11 - 8_Team2  11 - 9_Team2  11 - 10_Team2  12 - 0_Team2  12 - 1_Team2  12 - 2_Team2  12 - 3_Team2  12 - 4_Team2  12 - 5_Team2  12 - 6_Team2  12 - 7_Team2  12 - 8_Team2  12 - 9_Team2  12 - 10_Team2  12 - 11_Any Other Score  |
	|13-1| Correct Score| Team1  1 - 0_Team1  2 - 0_Team1  2 - 1_Team1  3 - 0_Team1  3 - 1_Team1  3 - 2_Team1  4 - 0_Team1  4 - 1_Team1  4 - 2_Team1  5 - 0_Team1  5 - 1_Team1  6 - 0_Draw  0 - 0_Draw  1 - 1_Draw  2 - 2_Draw  3 - 3_Team2  1 - 0_Team2  2 - 0_Team2  2 - 1_Team2  3 - 0_Team2  3 - 1_Team2  3 - 2_Team2  4 - 0_Team2  4 - 1_Team2  4 - 2_Team2  5 - 0_Team2  5 - 1_Team2  6 - 0_Any Other Score  |
	|14-1| Team To Score 1st Goal| Team1_No Goal_Team2 |
	|14-2| Team To Score 2nd Goal| Team1_No Goal_Team2 |
	|14-3| Team To Score 3rd Goal| Team1_No Goal_Team2 |
	|14-4| Team To Score 4th Goal| Team1_No Goal_Team2 |
	|14-5| Team To Score 5th Goal| Team1_No Goal_Team2 |
	|14-6| Team To Score 6th Goal| Team1_No Goal_Team2 |
	|14-7| Team To Score 7th Goal| Team1_No Goal_Team2 |
	|14-8| Team To Score 8th Goal| Team1_No Goal_Team2 |
	|14-9| Team To Score 9th Goal| Team1_No Goal_Team2 |
	|14-10| Team To Score 10th Goal| Team1_No Goal_Team2 |
	|14-11| Team To Score 11th Goal| Team1_No Goal_Team2 |
	|14-12| Team To Score 12th Goal| Team1_No Goal_Team2 |
	|14-13| Team To Score 13th Goal| Team1_No Goal_Team2 |
	|14-14| Team To Score 14th Goal| Team1_No Goal_Team2 |
	|14-15| Team To Score 15th Goal| Team1_No Goal_Team2 |
	|14-16| Team To Score 16th Goal| Team1_No Goal_Team2 |
	|14-17| Team To Score 17th Goal| Team1_No Goal_Team2 |
	|14-18| Team To Score 18th Goal| Team1_No Goal_Team2 |
	|14-19| Team To Score 19th Goal| Team1_No Goal_Team2 |
	|14-20| Team To Score 20th Goal| Team1_No Goal_Team2 |
	|15-1| Team1 - Clean Sheet| Yes_No |
	|15-2| Team2 - Clean Sheet| Yes_No |
	|16-1| Both Teams To Score| Yes_No |
	|17-1| Number Of Teams To Score| None_One_Both |
	|18-1| Team1 To Score| Yes_No |
	|18-2| Team2 To Score| Yes_No |
	|19-1| Which Teams To Score?| Only Team1 Score_Only Team2 Score_Both Teams Score_Neither Team Scores |
	|20-1| Total Goals| No Goal_Exactly 1 Goal_Exactly 2 Goals_Exactly 3 Goals_Exactly 4 Goals_Exactly 5 Goals_Exactly 6 Goals_Exactly 7 Goals_Exactly 8 Goals_Exactly 9 Goals_10 Goals Or More |
	|71-1| Total Goals (Reduced)| No Goals_Exactly 1 Goal_Exactly 2 Goals_Exactly 3 Goals_4 Goals Or More |
	|21-1| Team1 - Total Goals| No Goal_Exactly 1 Goal_Exactly 2 Goals_Exactly 3 Goals_Exactly 4 Goals_Exactly 5 Goals_Exactly 6 Goals_Exactly 7 Goals_Exactly 8 Goals_Exactly 9 Goals_10 Goals Or More |
	|21-2| Team2 - Total Goals| No Goal_Exactly 1 Goal_Exactly 2 Goals_Exactly 3 Goals_Exactly 4 Goals_Exactly 5 Goals_Exactly 6 Goals_Exactly 7 Goals_Exactly 8 Goals_Exactly 9 Goals_10 Goals Or More |
	|72-1| Team1 Total Goals (Reduced)| No Goals_Exactly 1 Goal_Exactly 2 Goals_Exactly 3 Goals_4 Goals Or More |
	|72-2| Team2 Total Goals (Reduced)| No Goals_Exactly 1 Goal_Exactly 2 Goals_Exactly 3 Goals_4 Goals Or More |
	|22-1| Time Of First Goal| Between 1 And 10 Minutes_Between 11 And 20 Minutes_Between 21 And 30 Minutes_Between 31 And 40 Minutes_Between 41 And 50 Minutes_Between 51 And 60 Minutes_Between 61 And 70 Minutes_Between 71 And 80 Minutes_Between 81 And 90 Minutes_No Goal |
	|23-1| 1st Half - Time Of First Goal| Between 1 And 5 Minutes_Between 6 And 10 Minutes_Between 11 And 15 Minutes_Between 16 And 20 Minutes_Between 21 And 25 Minutes_Between 26 And 30 Minutes_Between 31 And 35 Minutes_Between 36 And 40 Minutes_Between 41 And 45 Minutes_No 1st Half Goal |
	|23-2| 2nd Half - Time Of First Goal| Between 46 And 50 Minutes_Between 51 And 55 Minutes_Between 56 And 60 Minutes_Between 61 And 65 Minutes_Between 66 And 70 Minutes_Between 71 And 75 Minutes_Between 76 And 80 Minutes_Between 81 And 85 Minutes_Between 86 And 90 Minutes_No 2nd Half Goal |
	|24-1| Time Of 1st Match Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|24-2| Time Of 2nd Match Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|24-3| Time Of 3rd Match Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|24-4| Time Of 4th Match Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|24-5| Time Of 5th Match Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|24-6| Time Of 6th Match Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|24-7| Time Of 7th Match Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|24-8| Time Of 8th Match Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|24-9| Time Of 9th Match Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|24-10| Time Of 10th Match Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-1| Time Of 1st Team1 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-2| Time Of 2nd Team1 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-3| Time Of 3rd Team1 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-4| Time Of 4th Team1 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-5| Time Of 5th Team1 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-6| Time Of 6th Team1 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-7| Time Of 7th Team1 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-8| Time Of 8th Team1 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-9| Time Of 9th Team1 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-10| Time Of 10th Team1 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-11| Time Of 1st Team2 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-12| Time Of 2nd Team2 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-13| Time Of 3rd Team2 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-14| Time Of 4th Team2 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-15| Time Of 5th Team2 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-16| Time Of 6th Team2 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-17| Time Of 7th Team2 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-18| Time Of 8th Team2 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-19| Time Of 9th Team2 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-20| Time Of 10th Team2 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|26-1| Time Of 1st Match Goal - Under/Over/No Goal| Under 30 Minutes_Over 30 Minutes_No Goal |
	|26-2| Time Of 2nd Match Goal - Under/Over/No Goal| Under 50 Minutes_Over 50 Minutes_No Goal |
	|26-3| Time Of 3rd Match Goal - Under/Over/No Goal| Under 70 Minutes_Over 70 Minutes_No Goal |
	|27-1| Time Of 1st Team1 Goal - Under/Over/No Goal| Up To And Including 30 Minutes_After 30 Minutes_No Goal |
	|27-2| Time Of 2nd Team1 Goal - Under/Over/No Goal| Up To And Including 50 Minutes_After 50 Minutes_No Goal |
	|27-3| Time Of 3rd Team1 Goal - Under/Over/No Goal| Up To And Including 70 Minutes_After 70 Minutes_No Goal |
	|27-4| Time Of 1st Team2 Goal - Under/Over/No Goal| Up To And Including 30 Minutes_After 30 Minutes_No Goal |
	|27-5| Time Of 2nd Team2 Goal - Under/Over/No Goal| Up To And Including 50 Minutes_After 50 Minutes_No Goal |
	|27-6| Time Of 3rd Team2 Goal - Under/Over/No Goal| Up To And Including 70 Minutes_After 70 Minutes_No Goal |
	|28-1| 1st Half - Total Goals| No Goals_Exactly 1 Goal_Exactly 2 Goals_3 Or More Goals |
	|29-1| Half With The Most Goals| 1st Half_2nd Half_Tie |
	|30-1| Half Time/Full Time| Team1 - Team1_Team1 - Draw_Team1 - Team2_Draw - Team1_Draw - Draw_Draw - Team2_Team2 - Team1_Team2 - Draw_Team2 - Team2 |
	|31-1| Half Time Result| Team1_Draw_Team2 |
	|32-1| Half Time Correct Score| Team1  1 - 0_Team1  2 - 0_Team1  2 - 1_Team1  3 - 0_Team1  3 - 1_Team1  3 - 2_Team1  4 - 0_Team1  4 - 1_Team1  4 - 2_Team1  4 - 3_Team1  5 - 0_Team1  5 - 1_Team1  5 - 2_Team1  5 - 3_Team1  5 - 4_Draw  0 - 0_Draw  1 - 1_Draw  2 - 2_Draw  3 - 3_Draw  4 - 4_Draw  5 - 5_Team2  1 - 0_Team2  2 - 0_Team2  2 - 1_Team2  3 - 0_Team2  3 - 1_Team2  3 - 2_Team2  4 - 0_Team2  4 - 1_Team2  4 - 2_Team2  4 - 3_Team2  5 - 0_Team2  5 - 1_Team2  5 - 2_Team2  5 - 3_Team2  5 - 4_Any Other Score  |
	|33-1| Total Goals - Odd/Even| Odd_Even |
	|34-1| Which Half Will The 1st Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|35-1| Which Half Will The 1st Team1 Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|35-2| Which Half Will The 1st Team2 Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|34-2| Which Half Will The 2nd Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|35-3| Which Half Will The 2nd Team1 Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|35-4| Which Half Will The 2nd Team2 Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|34-3| Which Half Will The 3rd Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|35-5| Which Half Will The 3rd Team1 Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|35-6| Which Half Will The 3rd Team2 Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|34-4| Which Half Will The 4th Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|35-7| Which Half Will The 4th Team1 Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|35-8| Which Half Will The 4th Team2 Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|34-5| Which Half Will The 5th Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|35-9| Which Half Will The 5th Team1 Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|35-10| Which Half Will The 5th Team2 Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|36-11| Total Corners 10 - 12| Under 10_Between 10 And 12 Inclusive_Over 12 |
	|37-2| Total Corners - Under/Over 0.5| Under 0.5_Over 0.5 |
	|37-3| Total Corners - Under/Over 1.5| Under 1.5_Over 1.5 |
	|37-4| Total Corners - Under/Over 2.5| Under 2.5_Over 2.5 |
	|37-5| Total Corners - Under/Over 3.5| Under 3.5_Over 3.5 |
	|37-6| Total Corners - Under/Over 4.5| Under 4.5_Over 4.5 |
	|37-7| Total Corners - Under/Over 5.5| Under 5.5_Over 5.5 |
	|37-8| Total Corners - Under/Over 6.5| Under 6.5_Over 6.5 |
	|37-9| Total Corners - Under/Over 7.5| Under 7.5_Over 7.5 |
	|37-10| Total Corners - Under/Over 8.5| Under 8.5_Over 8.5 |
	|37-11| Total Corners - Under/Over 9.5| Under 9.5_Over 9.5 |
	|37-1| Total Corners - Under/Over 10.5| Under 10.5_Over 10.5 |
	|37-12| Total Corners - Under/Over 11.5| Under 11.5_Over 11.5 |
	|37-13| Total Corners - Under/Over 12.5| Under 12.5_Over 12.5 |
	|37-14| Total Corners - Under/Over 13.5| Under 13.5_Over 13.5 |
	|37-15| Total Corners - Under/Over 14.5| Under 14.5_Over 14.5 |
	|37-16| Total Corners - Under/Over 15.5| Under 15.5_Over 15.5 |
	|37-17| Total Corners - Under/Over 16.5| Under 16.5_Over 16.5 |
	|37-18| Total Corners - Under/Over 17.5| Under 17.5_Over 17.5 |
	|37-19| Total Corners - Under/Over 18.5| Under 18.5_Over 18.5 |
	|37-20| Total Corners - Under/Over 19.5| Under 19.5_Over 19.5 |
	|37-21| Total Corners - Under/Over 20.5| Under 20.5_Over 20.5 |
	|37-22| Total Corners - Under/Over 21.5| Under 21.5_Over 21.5 |
	|37-23| Total Corners - Under/Over 22.5| Under 22.5_Over 22.5 |
	|37-24| Total Corners - Under/Over 23.5| Under 23.5_Over 23.5 |
	|37-25| Total Corners - Under/Over 24.5| Under 24.5_Over 24.5 |
	|38-2| Corners Handicap -10.5| Team1 -10.5_Team2 +10.5 |
	|38-3| Corners Handicap -9.5| Team1 -9.5_Team2 +9.5 |
	|38-4| Corners Handicap -8.5| Team1 -8.5_Team2 +8.5 |
	|38-5| Corners Handicap -7.5| Team1 -7.5_Team2 +7.5 |
	|38-6| Corners Handicap -6.5| Team1 -6.5_Team2 +6.5 |
	|38-7| Corners Handicap -5.5| Team1 -5.5_Team2 +5.5 |
	|38-8| Corners Handicap -4.5| Team1 -4.5_Team2 +4.5 |
	|38-9| Corners Handicap -3.5| Team1 -3.5_Team2 +3.5 |
	|38-1| Corners Handicap -2.5| Team1 -2.5_Team2 +2.5 |
	|38-10| Corners Handicap -1.5| Team1 -1.5_Team2 +1.5 |
	|38-11| Corners Handicap -0.5| Team1 -0.5_Team2 +0.5 |
	|38-12| Corners Handicap +0.5| Team2 -0.5_Team1 +0.5 |
	|38-13| Corners Handicap +1.5| Team2 -1.5_Team1 +1.5 |
	|38-14| Corners Handicap +2.5| Team2 -2.5_Team1 +2.5 |
	|38-15| Corners Handicap +3.5| Team2 -3.5_Team1 +3.5 |
	|38-16| Corners Handicap +4.5| Team2 -4.5_Team1 +4.5 |
	|38-17| Corners Handicap +5.5| Team2 -5.5_Team1 +5.5 |
	|38-18| Corners Handicap +6.5| Team2 -6.5_Team1 +6.5 |
	|38-19| Corners Handicap +7.5| Team2 -7.5_Team1 +7.5 |
	|38-20| Corners Handicap +8.5| Team2 -8.5_Team1 +8.5 |
	|38-21| Corners Handicap +9.5| Team2 -9.5_Team1 +9.5 |
	|38-22| Corners Handicap +10.5| Team2 -10.5_Team1 +10.5 |
	|39-1| Team With Most Corners| Team1_Draw_Team2 |
	|40-9| Corners Handicap -10| Team1 -10_Draw -10_Team2 +10 |
	|40-10| Corners Handicap -9| Team1 -9_Draw -9_Team2 +9 |
	|40-11| Corners Handicap -8| Team1 -8_Draw -8_Team2 +8 |
	|40-12| Corners Handicap -7| Team1 -7_Draw -7_Team2 +7 |
	|40-13| Corners Handicap -6| Team1 -6_Draw -6_Team2 +6 |
	|40-14| Corners Handicap -5| Team1 -5_Draw -5_Team2 +5 |
	|40-1| Corners Handicap -4| Team1 -4_Draw -4_Team2 +4 |
	|40-2| Corners Handicap -3| Team1 -3_Draw -3_Team2 +3 |
	|40-3| Corners Handicap -2| Team1 -2_Draw -2_Team2 +2 |
	|40-4| Corners Handicap -1| Team1 -1_Draw -1_Team2 +1 |
	|40-15| Corners Handicap +10| Team1 +10_Draw +10_Team2 -10 |
	|40-16| Corners Handicap +9| Team1 +9_Draw +9_Team2 -9 |
	|40-17| Corners Handicap +8| Team1 +8_Draw +8_Team2 -8 |
	|40-18| Corners Handicap +7| Team1 +7_Draw +7_Team2 -7 |
	|40-19| Corners Handicap +6| Team1 +6_Draw +6_Team2 -6 |
	|40-20| Corners Handicap +5| Team1 +5_Draw +5_Team2 -5 |
	|40-5| Corners Handicap +4| Team1 +4_Draw +4_Team2 -4 |
	|40-6| Corners Handicap +3| Team1 +3_Draw +3_Team2 -3 |
	|40-7| Corners Handicap +2| Team1 +2_Draw +2_Team2 -2 |
	|40-8| Corners Handicap +1| Team1 +1_Draw +1_Team2 -1 |
	|41-1| Time Of First Corner| Between 1 And 10 Minutes_Between 11 And 20 Minutes_Between 21 And 30 Minutes_Between 31 And 40 Minutes_Between 41 And 50 Minutes_Between 51 And 60 Minutes_Between 61 And 70 Minutes_Between 71 And 80 Minutes_Between 81 And 90 Minutes_No Corner |
	|42-1| Team To Take The First Corner| Team1_No Corner_Team2 |
	|43-3| Exact 1st Half Corners - Under/Over 1| Under 1_Exactly 1_Over 1 |
	|43-4| Exact 1st Half Corners - Under/Over 2| Under 2_Exactly 2_Over 2 |
	|43-5| Exact 1st Half Corners - Under/Over 3| Under 3_Exactly 3_Over 3 |
	|43-6| Exact 1st Half Corners - Under/Over 4| Under 4_Exactly 4_Over 4 |
	|43-1| Exact 1st Half Corners - Under/Over 5| Under 5_Exactly 5_Over 5 |
	|43-7| Exact 1st Half Corners - Under/Over 6| Under 6_Exactly 6_Over 6 |
	|43-8| Exact 1st Half Corners - Under/Over 7| Under 7_Exactly 7_Over 7 |
	|43-9| Exact 1st Half Corners - Under/Over 8| Under 8_Exactly 8_Over 8 |
	|43-10| Exact 1st Half Corners - Under/Over 9| Under 9_Exactly 9_Over 9 |
	|43-11| Exact 1st Half Corners - Under/Over 10| Under 10_Exactly 10_Over 10 |
	|43-12| Exact 2nd Half Corners - Under/Over 1| Under 1_Exactly 1_Over 1 |
	|43-13| Exact 2nd Half Corners - Under/Over 2| Under 2_Exactly 2_Over 2 |
	|43-14| Exact 2nd Half Corners - Under/Over 3| Under 3_Exactly 3_Over 3 |
	|43-15| Exact 2nd Half Corners - Under/Over 4| Under 4_Exactly 4_Over 4 |
	|43-16| Exact 2nd Half Corners - Under/Over 5| Under 5_Exactly 5_Over 5 |
	|43-2| Exact 2nd Half Corners - Under/Over 6| Under 6_Exactly 6_Over 6 |
	|43-17| Exact 2nd Half Corners - Under/Over 7| Under 7_Exactly 7_Over 7 |
	|43-18| Exact 2nd Half Corners - Under/Over 8| Under 8_Exactly 8_Over 8 |
	|43-19| Exact 2nd Half Corners - Under/Over 9| Under 9_Exactly 9_Over 9 |
	|43-20| Exact 2nd Half Corners - Under/Over 10| Under 10_Exactly 10_Over 10 |
	|44-3| 1st Half - Total Corners| Under 5_Between 5 And 6 Inclusive_Over 6 |
	|44-4| 2nd Half - Total Corners| Under 5_Between 5 And 6 Inclusive_Over 6 |
	|45-1| 1st Half - Team To Take The First Corner| Team1_No Corner_Team2 |
	|45-2| 2nd Half - Team To Take The First Corner| Team1_No Corner_Team2 |
	|46-1| Time Of First Team1 Corner| Between 1 And 10_Between 11 And 20_Between 21 And 30_Between 31 And 40_Between 41 And 50_Between 51 And 60_Between 61 And 70_Between 71 And 80_Between 81 And 90_No Corner  |
	|46-2| Time Of First Team2 Corner| Between 1 And 10_Between 11 And 20_Between 21 And 30_Between 31 And 40_Between 41 And 50_Between 51 And 60_Between 61 And 70_Between 71 And 80_Between 81 And 90_No Corner  |
	|47-1| 1st Corner| Team1_No Corner_Team2 |
	|47-2| 2nd Corner| Team1_No Corner_Team2 |
	|47-3| 3rd Corner| Team1_No Corner_Team2 |
	|47-4| 4th Corner| Team1_No Corner_Team2 |
	|47-5| 5th Corner| Team1_No Corner_Team2 |
	|47-6| 6th Corner| Team1_No Corner_Team2 |
	|47-7| 7th Corner| Team1_No Corner_Team2 |
	|47-8| 8th Corner| Team1_No Corner_Team2 |
	|47-9| 9th Corner| Team1_No Corner_Team2 |
	|47-10| 10th Corner| Team1_No Corner_Team2 |
	|47-11| 11th Corner| Team1_No Corner_Team2 |
	|47-12| 12th Corner| Team1_No Corner_Team2 |
	|47-13| 13th Corner| Team1_No Corner_Team2 |
	|47-14| 14th Corner| Team1_No Corner_Team2 |
	|47-15| 15th Corner| Team1_No Corner_Team2 |
	|47-16| 16th Corner| Team1_No Corner_Team2 |
	|47-17| 17th Corner| Team1_No Corner_Team2 |
	|47-18| 18th Corner| Team1_No Corner_Team2 |
	|47-19| 19th Corner| Team1_No Corner_Team2 |
	|47-20| 20th Corner| Team1_No Corner_Team2 |
	|47-21| 21st Corner| Team1_No Corner_Team2 |
	|47-22| 22nd Corner| Team1_No Corner_Team2 |
	|47-23| 23rd Corner| Team1_No Corner_Team2 |
	|47-24| 24th Corner| Team1_No Corner_Team2 |
	|47-25| 25th Corner| Team1_No Corner_Team2 |
	|47-26| 26th Corner| Team1_No Corner_Team2 |
	|47-27| 27th Corner| Team1_No Corner_Team2 |
	|47-28| 28th Corner| Team1_No Corner_Team2 |
	|47-29| 29th Corner| Team1_No Corner_Team2 |
	|47-30| 30th Corner| Team1_No Corner_Team2 |
	|47-31| 31st Corner| Team1_No Corner_Team2 |
	|47-32| 32nd Corner| Team1_No Corner_Team2 |
	|47-33| 33rd Corner| Team1_No Corner_Team2 |
	|47-34| 34th Corner| Team1_No Corner_Team2 |
	|47-35| 35th Corner| Team1_No Corner_Team2 |
	|47-36| 36th Corner| Team1_No Corner_Team2 |
	|47-37| 37th Corner| Team1_No Corner_Team2 |
	|47-38| 38th Corner| Team1_No Corner_Team2 |
	|47-39| 39th Corner| Team1_No Corner_Team2 |
	|47-40| 40th Corner| Team1_No Corner_Team2 |
	|47-41| 41st Corner| Team1_No Corner_Team2 |
	|47-42| 42nd Corner| Team1_No Corner_Team2 |
	|47-43| 43rd Corner| Team1_No Corner_Team2 |
	|47-44| 44th Corner| Team1_No Corner_Team2 |
	|47-45| 45th Corner| Team1_No Corner_Team2 |
	|47-46| 46th Corner| Team1_No Corner_Team2 |
	|47-47| 47th Corner| Team1_No Corner_Team2 |
	|47-48| 48th Corner| Team1_No Corner_Team2 |
	|47-49| 49th Corner| Team1_No Corner_Team2 |
	|47-50| 50th Corner| Team1_No Corner_Team2 |
	|48-1| Total Bookings Points 25-40| Under 25_Between 25 And 40 Inclusive_Over 40 |
	|48-2| Total Bookings Points 45-60| Under 45_Between 45 And 60 Inclusive_Over 60 |
	|48-3| Total Bookings Points 65-80| Under 65_Between 65 And 80 Inclusive_Over 80 |
	|48-4| Total Bookings Points 85-100| Under 85_Between 85 And 100 Inclusive_Over 100 |
	|48-5| Total Bookings Points 105-120| Under 105_Between 105 And 120 Inclusive_Over 120 |
	|48-6| Total Bookings Points 125-140| Under 125_Between 125 And 140 Inclusive_Over 140 |
	|48-7| Total Bookings Points 145-160| Under 145_Between 145 And 160 Inclusive_Over 160 |
	|49-1| Total Bookings Under/Over 22.5| Under 22.5_Over 22.5 |
	|49-2| Total Bookings Under/Over 42.5| Under 42.5_Over 42.5 |
	|49-3| Total Bookings Under/Over 62.5| Under 62.5_Over 62.5 |
	|49-4| Total Bookings Under/Over 82.5| Under 82.5_Over 82.5 |
	|49-5| Total Bookings Under/Over 102.5| Under 102.5_Over 102.5 |
	|49-6| Total Bookings Under/Over 122.5| Under 122.5_Over 122.5 |
	|49-7| Total Bookings Under/Over 142.5| Under 142.5_Over 142.5 |
	|50-1| Team With Most Bookings| Team1_Draw_Team2 |
	|51-1| First Team To Be Booked| Team1 _No Card_Team2  |
	|52-1| Will There Be A Red Card?| Yes_No |
	|53-1| Will Team1 Get A Red Card?| Yes_No |
	|53-2| Will Team2 Get A Red Card?| Yes_No |
	|54-1| 1st Card| Team1_No Card_Team2 |
	|54-2| 2nd Card| Team1_No Card_Team2 |
	|54-3| 3rd Card| Team1_No Card_Team2 |
	|54-4| 4th Card| Team1_No Card_Team2 |
	|54-5| 5th Card| Team1_No Card_Team2 |
	|54-6| 6th Card| Team1_No Card_Team2 |
	|54-7| 7th Card| Team1_No Card_Team2 |
	|54-8| 8th Card| Team1_No Card_Team2 |
	|54-9| 9th Card| Team1_No Card_Team2 |
	|54-10| 10th Card| Team1_No Card_Team2 |
	|54-11| 11th Card| Team1_No Card_Team2 |
	|54-12| 12th Card| Team1_No Card_Team2 |
	|54-13| 13th Card| Team1_No Card_Team2 |
	|54-14| 14th Card| Team1_No Card_Team2 |
	|54-15| 15th Card| Team1_No Card_Team2 |
	|54-16| 16th Card| Team1_No Card_Team2 |
	|54-17| 17th Card| Team1_No Card_Team2 |
	|54-18| 18th Card| Team1_No Card_Team2 |
	|54-19| 19th Card| Team1_No Card_Team2 |
	|54-20| 20th Card| Team1_No Card_Team2 |
	|54-21| 21st Card| Team1_No Card_Team2 |
	|54-22| 22nd Card| Team1_No Card_Team2 |
	|54-23| 23rd Card| Team1_No Card_Team2 |
	|54-24| 24th Card| Team1_No Card_Team2 |
	|54-25| 25th Card| Team1_No Card_Team2 |
	|54-26| 26th Card| Team1_No Card_Team2 |
	|54-27| 27th Card| Team1_No Card_Team2 |
	|54-28| 28th Card| Team1_No Card_Team2 |
	|54-29| 29th Card| Team1_No Card_Team2 |
	|54-30| 30th Card| Team1_No Card_Team2 |
	|55-1| Will There Be A Penalty Awarded?| Yes_No |
	|56-1| Will There Be A Penalty Scored?| Yes_No |
	|57-1| First Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|57-2| Second Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|57-3| Third Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|57-4| Fourth Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|57-5| Fifth Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|57-6| Sixth Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|57-7| Seventh Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|57-8| Eighth Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|57-9| Ninth Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|57-10| Tenth Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|58-1| First Team1 Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|58-2| Second Team1 Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|58-3| Third Team1 Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|58-4| Fourth Team1 Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|58-5| Fifth Team1 Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|58-6| Sixth Team1 Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|58-7| First Team2 Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|58-8| Second Team2 Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|58-9| Third Team2 Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|58-10| Fourth Team2 Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|58-11| Fifth Team2 Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|58-12| Sixth Team2 Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|59-1| Last Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|60-1| Anytime - Yes/No| 0 Yes_0 No |
	|60-2| Anytime - Yes/No| 0 Yes_0 No |
	|60-3| Anytime - Yes/No| 0 Yes_0 No |
	|60-4| Anytime - Yes/No| 0 Yes_0 No |
	|60-5| Anytime - Yes/No| 0 Yes_0 No |
	|60-6| Anytime - Yes/No| 0 Yes_0 No |
	|60-7| Anytime - Yes/No| 0 Yes_0 No |
	|60-8| Anytime - Yes/No| 0 Yes_0 No |
	|60-9| Anytime - Yes/No| 0 Yes_0 No |
	|60-10| Anytime - Yes/No| 0 Yes_0 No |
	|60-11| Anytime - Yes/No| 0 Yes_0 No |
	|60-12| Anytime - Yes/No| 0 Yes_0 No |
	|60-13| Anytime - Yes/No| 0 Yes_0 No |
	|60-14| Anytime - Yes/No| 0 Yes_0 No |
	|60-15| Anytime - Yes/No| 0 Yes_0 No |
	|60-16| Anytime - Yes/No| 0 Yes_0 No |
	|60-17| Anytime - Yes/No| 0 Yes_0 No |
	|60-18| Anytime - Yes/No| 0 Yes_0 No |
	|60-19| Anytime - Yes/No| 0 Yes_0 No |
	|60-20| Anytime - Yes/No| 0 Yes_0 No |
	|60-21| Anytime - Yes/No| 0 Yes_0 No |
	|60-22| Anytime - Yes/No| 0 Yes_0 No |
	|60-23| Anytime - Yes/No| 0 Yes_0 No |
	|60-24| Anytime - Yes/No| 0 Yes_0 No |
	|60-25| Anytime - Yes/No| 0 Yes_0 No |
	|60-26| Anytime - Yes/No| 0 Yes_0 No |
	|60-27| Anytime - Yes/No| 0 Yes_0 No |
	|60-28| Anytime - Yes/No| 0 Yes_0 No |
	|60-29| Anytime - Yes/No| 0 Yes_0 No |
	|60-30| Anytime - Yes/No| 0 Yes_0 No |
	|60-31| Anytime - Yes/No| 0 Yes_0 No |
	|60-32| Anytime - Yes/No| 0 Yes_0 No |
	|60-33| Anytime - Yes/No| 0 Yes_0 No |
	|60-34| Anytime - Yes/No| 0 Yes_0 No |
	|60-35| Anytime - Yes/No| 0 Yes_0 No |
	|60-36| Anytime - Yes/No| 0 Yes_0 No |
	|60-37| Anytime - Yes/No| 0 Yes_0 No |
	|60-38| Anytime - Yes/No| 0 Yes_0 No |
	|60-39| Anytime - Yes/No| 0 Yes_0 No |
	|60-40| Anytime - Yes/No| 0 Yes_0 No |
	|60-41| Anytime - Yes/No| 0 Yes_0 No |
	|60-42| Anytime - Yes/No| 0 Yes_0 No |
	|60-43| Anytime - Yes/No| 0 Yes_0 No |
	|60-44| Anytime - Yes/No| 0 Yes_0 No |
	|60-45| Anytime - Yes/No| 0 Yes_0 No |
	|60-46| Anytime - Yes/No| 0 Yes_0 No |
	|60-47| Anytime - Yes/No| 0 Yes_0 No |
	|60-48| Anytime - Yes/No| 0 Yes_0 No |
	|60-49| Anytime - Yes/No| 0 Yes_0 No |
	|60-50| Anytime - Yes/No| 0 Yes_0 No |
	|60-51| Anytime - Yes/No| 0 Yes_0 No |
	|60-52| Anytime - Yes/No| 0 Yes_0 No |
	|60-53| Anytime - Yes/No| 0 Yes_0 No |
	|60-54| Anytime - Yes/No| 0 Yes_0 No |
	|60-55| Anytime - Yes/No| 0 Yes_0 No |
	|60-56| Anytime - Yes/No| 0 Yes_0 No |
	|60-57| Anytime - Yes/No| 0 Yes_0 No |
	|60-58| Anytime - Yes/No| 0 Yes_0 No |
	|60-59| Anytime - Yes/No| 0 Yes_0 No |
	|60-60| Anytime - Yes/No| 0 Yes_0 No |
	|60-61| Anytime - Yes/No| 0 Yes_0 No |
	|60-62| Anytime - Yes/No| 0 Yes_0 No |
	|60-63| Anytime - Yes/No| 0 Yes_0 No |
	|60-64| Anytime - Yes/No| 0 Yes_0 No |
	|60-65| Anytime - Yes/No| 0 Yes_0 No |
	|60-66| Anytime - Yes/No| 0 Yes_0 No |
	|60-67| Anytime - Yes/No| 0 Yes_0 No |
	|60-68| Anytime - Yes/No| 0 Yes_0 No |
	|60-69| Anytime - Yes/No| 0 Yes_0 No |
	|60-70| Anytime - Yes/No| 0 Yes_0 No |
	|60-71| Anytime - Yes/No| 0 Yes_0 No |
	|60-72| Anytime - Yes/No| 0 Yes_0 No |
	|60-73| Anytime - Yes/No| 0 Yes_0 No |
	|60-74| Anytime - Yes/No| 0 Yes_0 No |
	|60-75| Anytime - Yes/No| 0 Yes_0 No |
	|60-76| Anytime - Yes/No| 0 Yes_0 No |
	|60-77| Anytime - Yes/No| 0 Yes_0 No |
	|60-78| Anytime - Yes/No| 0 Yes_0 No |
	|60-79| Anytime - Yes/No| 0 Yes_0 No |
	|60-80| Anytime - Yes/No| 0 Yes_0 No |
	|61-1| Brace - Yes/No| 0 Yes_0 No |
	|61-2| Brace - Yes/No| 0 Yes_0 No |
	|61-3| Brace - Yes/No| 0 Yes_0 No |
	|61-4| Brace - Yes/No| 0 Yes_0 No |
	|61-5| Brace - Yes/No| 0 Yes_0 No |
	|61-6| Brace - Yes/No| 0 Yes_0 No |
	|61-7| Brace - Yes/No| 0 Yes_0 No |
	|61-8| Brace - Yes/No| 0 Yes_0 No |
	|61-9| Brace - Yes/No| 0 Yes_0 No |
	|61-10| Brace - Yes/No| 0 Yes_0 No |
	|61-11| Brace - Yes/No| 0 Yes_0 No |
	|61-12| Brace - Yes/No| 0 Yes_0 No |
	|61-13| Brace - Yes/No| 0 Yes_0 No |
	|61-14| Brace - Yes/No| 0 Yes_0 No |
	|61-15| Brace - Yes/No| 0 Yes_0 No |
	|61-16| Brace - Yes/No| 0 Yes_0 No |
	|61-17| Brace - Yes/No| 0 Yes_0 No |
	|61-18| Brace - Yes/No| 0 Yes_0 No |
	|61-19| Brace - Yes/No| 0 Yes_0 No |
	|61-20| Brace - Yes/No| 0 Yes_0 No |
	|61-21| Brace - Yes/No| 0 Yes_0 No |
	|61-22| Brace - Yes/No| 0 Yes_0 No |
	|61-23| Brace - Yes/No| 0 Yes_0 No |
	|61-24| Brace - Yes/No| 0 Yes_0 No |
	|61-25| Brace - Yes/No| 0 Yes_0 No |
	|61-26| Brace - Yes/No| 0 Yes_0 No |
	|61-27| Brace - Yes/No| 0 Yes_0 No |
	|61-28| Brace - Yes/No| 0 Yes_0 No |
	|61-29| Brace - Yes/No| 0 Yes_0 No |
	|61-30| Brace - Yes/No| 0 Yes_0 No |
	|61-31| Brace - Yes/No| 0 Yes_0 No |
	|61-32| Brace - Yes/No| 0 Yes_0 No |
	|61-33| Brace - Yes/No| 0 Yes_0 No |
	|61-34| Brace - Yes/No| 0 Yes_0 No |
	|61-35| Brace - Yes/No| 0 Yes_0 No |
	|61-36| Brace - Yes/No| 0 Yes_0 No |
	|61-37| Brace - Yes/No| 0 Yes_0 No |
	|61-38| Brace - Yes/No| 0 Yes_0 No |
	|61-39| Brace - Yes/No| 0 Yes_0 No |
	|61-40| Brace - Yes/No| 0 Yes_0 No |
	|61-41| Brace - Yes/No| 0 Yes_0 No |
	|61-42| Brace - Yes/No| 0 Yes_0 No |
	|61-43| Brace - Yes/No| 0 Yes_0 No |
	|61-44| Brace - Yes/No| 0 Yes_0 No |
	|61-45| Brace - Yes/No| 0 Yes_0 No |
	|61-46| Brace - Yes/No| 0 Yes_0 No |
	|61-47| Brace - Yes/No| 0 Yes_0 No |
	|61-48| Brace - Yes/No| 0 Yes_0 No |
	|61-49| Brace - Yes/No| 0 Yes_0 No |
	|61-50| Brace - Yes/No| 0 Yes_0 No |
	|61-51| Brace - Yes/No| 0 Yes_0 No |
	|61-52| Brace - Yes/No| 0 Yes_0 No |
	|61-53| Brace - Yes/No| 0 Yes_0 No |
	|61-54| Brace - Yes/No| 0 Yes_0 No |
	|61-55| Brace - Yes/No| 0 Yes_0 No |
	|61-56| Brace - Yes/No| 0 Yes_0 No |
	|61-57| Brace - Yes/No| 0 Yes_0 No |
	|61-58| Brace - Yes/No| 0 Yes_0 No |
	|61-59| Brace - Yes/No| 0 Yes_0 No |
	|61-60| Brace - Yes/No| 0 Yes_0 No |
	|61-61| Brace - Yes/No| 0 Yes_0 No |
	|61-62| Brace - Yes/No| 0 Yes_0 No |
	|61-63| Brace - Yes/No| 0 Yes_0 No |
	|61-64| Brace - Yes/No| 0 Yes_0 No |
	|61-65| Brace - Yes/No| 0 Yes_0 No |
	|61-66| Brace - Yes/No| 0 Yes_0 No |
	|61-67| Brace - Yes/No| 0 Yes_0 No |
	|61-68| Brace - Yes/No| 0 Yes_0 No |
	|61-69| Brace - Yes/No| 0 Yes_0 No |
	|61-70| Brace - Yes/No| 0 Yes_0 No |
	|61-71| Brace - Yes/No| 0 Yes_0 No |
	|61-72| Brace - Yes/No| 0 Yes_0 No |
	|61-73| Brace - Yes/No| 0 Yes_0 No |
	|61-74| Brace - Yes/No| 0 Yes_0 No |
	|61-75| Brace - Yes/No| 0 Yes_0 No |
	|61-76| Brace - Yes/No| 0 Yes_0 No |
	|61-77| Brace - Yes/No| 0 Yes_0 No |
	|61-78| Brace - Yes/No| 0 Yes_0 No |
	|61-79| Brace - Yes/No| 0 Yes_0 No |
	|61-80| Brace - Yes/No| 0 Yes_0 No |
	|62-1| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-2| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-3| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-4| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-5| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-6| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-7| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-8| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-9| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-10| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-11| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-12| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-13| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-14| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-15| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-16| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-17| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-18| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-19| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-20| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-21| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-22| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-23| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-24| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-25| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-26| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-27| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-28| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-29| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-30| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-31| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-32| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-33| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-34| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-35| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-36| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-37| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-38| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-39| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-40| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-41| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-42| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-43| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-44| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-45| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-46| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-47| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-48| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-49| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-50| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-51| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-52| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-53| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-54| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-55| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-56| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-57| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-58| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-59| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-60| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-61| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-62| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-63| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-64| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-65| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-66| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-67| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-68| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-69| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-70| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-71| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-72| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-73| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-74| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-75| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-76| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-77| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-78| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-79| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-80| Hat-trick - Yes/No| 0 Yes_0 No |
	|63-1| 1st Goalscorer Shirt - Under/Over 6.5| Under 6.5_Over 6.5_No Goal |
	|63-2| 2nd Goalscorer Shirt - Under/Over 6.5| Under 6.5_Over 6.5_No Goal |
	|63-3| 3rd Goalscorer Shirt - Under/Over 6.5| Under 6.5_Over 6.5_No Goal |
	|63-4| 4th Goalscorer Shirt - Under/Over 6.5| Under 6.5_Over 6.5_No Goal |
	|63-5| 5th Goalscorer Shirt - Under/Over 6.5| Under 6.5_Over 6.5_No Goal |
	|63-6| 6th Goalscorer Shirt - Under/Over 6.5| Under 6.5_Over 6.5_No Goal |
	|63-7| 1st Goalscorer Shirt - Under/Over 8.5| Under 8.5_Over 8.5_No Goal |
	|63-8| 2nd Goalscorer Shirt - Under/Over 8.5| Under 8.5_Over 8.5_No Goal |
	|63-9| 3rd Goalscorer Shirt - Under/Over 8.5| Under 8.5_Over 8.5_No Goal |
	|63-10| 4th Goalscorer Shirt - Under/Over 8.5| Under 8.5_Over 8.5_No Goal |
	|63-11| 5th Goalscorer Shirt - Under/Over 8.5| Under 8.5_Over 8.5_No Goal |
	|63-12| 6th Goalscorer Shirt - Under/Over 8.5| Under 8.5_Over 8.5_No Goal |
	|63-13| 1st Goalscorer Shirt - Under/Over 10.5| Under 10.5_Over 10.5_No Goal |
	|63-14| 2nd Goalscorer Shirt - Under/Over 10.5| Under 10.5_Over 10.5_No Goal |
	|63-15| 3rd Goalscorer Shirt - Under/Over 10.5| Under 10.5_Over 10.5_No Goal |
	|63-16| 4th Goalscorer Shirt - Under/Over 10.5| Under 10.5_Over 10.5_No Goal |
	|63-17| 5th Goalscorer Shirt - Under/Over 10.5| Under 10.5_Over 10.5_No Goal |
	|63-18| 6th Goalscorer Shirt - Under/Over 10.5| Under 10.5_Over 10.5_No Goal |
	|63-19| 1st Goalscorer Shirt - Under/Over 12.5| Under 12.5_Over 12.5_No Goal |
	|63-20| 2nd Goalscorer Shirt - Under/Over 12.5| Under 12.5_Over 12.5_No Goal |
	|63-21| 3rd Goalscorer Shirt - Under/Over 12.5| Under 12.5_Over 12.5_No Goal |
	|63-22| 4th Goalscorer Shirt - Under/Over 12.5| Under 12.5_Over 12.5_No Goal |
	|63-23| 5th Goalscorer Shirt - Under/Over 12.5| Under 12.5_Over 12.5_No Goal |
	|63-24| 6th Goalscorer Shirt - Under/Over 12.5| Under 12.5_Over 12.5_No Goal |
	|63-25| 1st Goalscorer Shirt - Under/Over 14.5| Under 14.5_Over 14.5_No Goal |
	|63-26| 2nd Goalscorer Shirt - Under/Over 14.5| Under 14.5_Over 14.5_No Goal |
	|63-27| 3rd Goalscorer Shirt - Under/Over 14.5| Under 14.5_Over 14.5_No Goal |
	|63-28| 4th Goalscorer Shirt - Under/Over 14.5| Under 14.5_Over 14.5_No Goal |
	|63-29| 5th Goalscorer Shirt - Under/Over 14.5| Under 14.5_Over 14.5_No Goal |
	|63-30| 6th Goalscorer Shirt - Under/Over 14.5| Under 14.5_Over 14.5_No Goal |
	|63-31| 1st Goalscorer Shirt - Under/Over 16.5| Under 16.5_Over 16.5_No Goal |
	|63-32| 2nd Goalscorer Shirt - Under/Over 16.5| Under 16.5_Over 16.5_No Goal |
	|63-33| 3rd Goalscorer Shirt - Under/Over 16.5| Under 16.5_Over 16.5_No Goal |
	|63-34| 4th Goalscorer Shirt - Under/Over 16.5| Under 16.5_Over 16.5_No Goal |
	|63-35| 5th Goalscorer Shirt - Under/Over 16.5| Under 16.5_Over 16.5_No Goal |
	|63-36| 6th Goalscorer Shirt - Under/Over 16.5| Under 16.5_Over 16.5_No Goal |
	|63-37| 1st Goalscorer Shirt - Under/Over 18.5| Under 18.5_Over 18.5_No Goal |
	|63-38| 2nd Goalscorer Shirt - Under/Over 18.5| Under 18.5_Over 18.5_No Goal |
	|63-39| 3rd Goalscorer Shirt - Under/Over 18.5| Under 18.5_Over 18.5_No Goal |
	|63-40| 4th Goalscorer Shirt - Under/Over 18.5| Under 18.5_Over 18.5_No Goal |
	|63-41| 5th Goalscorer Shirt - Under/Over 18.5| Under 18.5_Over 18.5_No Goal |
	|63-42| 6th Goalscorer Shirt - Under/Over 18.5| Under 18.5_Over 18.5_No Goal |
	|64-1| Winner Of Tie| Team1_Team2 |
	|65-1| Winner And Match Portion| Team1 Normal Time_Team2 Normal Time_Team1 Extra Time_Team2 Extra Time_Team1 Penalties_Team2 Penalties |
	|66-1| Double Chance| Team1 - Draw_Team2 - Draw_Team1 - Team2 |
	|67-1| Anytime Goalscorer| Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0 |
	|68-1| Brace Goalscorer| Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0 |
	|69-1| Hat-trick Goalscorer| Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0 |
	|70-1| 1st Half Goals - Under/Over 0.5| Under 0.5_Over 0.5 |
	|70-2| 1st Half Goals - Under/Over 1.5| Under 1.5_Over 1.5 |
	|70-3| 1st Half Goals - Under/Over 2.5| Under 2.5_Over 2.5 |
	|70-4| 1st Half Goals - Under/Over 3.5| Under 3.5_Over 3.5 |
	|70-5| 1st Half Goals - Under/Over 4.5| Under 4.5_Over 4.5 |
	|70-6| 1st Half Goals - Under/Over 5.5| Under 5.5_Over 5.5 |
	|70-7| 1st Half Goals - Under/Over 6.5| Under 6.5_Over 6.5 |
	|73-1| Team1 Win Both Havles| Yes_No |
	|73-2| Team2 Win Both Havles| Yes_No |
	|74-1| Team To Score Last Goal| Team1_Team2_Not Scored |
	|75-1| 1st Goal own goal?| Yes_No |
	|75-2| 2nd Goal own goal?| Yes_No |
	|75-3| 3rd Goal own goal?| Yes_No |
	|75-4| 4th Goal own goal?| Yes_No |
	|75-5| 5th Goal own goal?| Yes_No |
	|75-6| 6th Goal own goal?| Yes_No |
	|75-7| 7th Goal own goal?| Yes_No |
	|75-8| 8th Goal own goal?| Yes_No |
	|75-9| 9th Goal own goal?| Yes_No |
	|75-10| 10th Goal own goal?| Yes_No |
	|76-1| Last goal own goal?| Yes_No |
	|77-1| Own Goal in 90 minutes?| Yes_No |
	|78-1| Winrush| Team1 and Yes_Team1 and No_Team2 and Yes_Team2 and No_Draw and Yes_Draw and No |
	|36-2| Total Corners 4 - 6| Under 4_Between 4 And 6 Inclusive_Over 6 |
	|36-3| Total Corners 7 - 9| Under 7_Between 7 And 9 Inclusive_Over 9 |
	|36-4| Total Corners 13 - 15| Under 13_Between 13 And 15 Inclusive_Over 15 |
	|36-5| Total Corners 16 - 18| Under 16_Between 16 And 18 Inclusive_Over 18 |
	|79-1| Total Team1 Corners 0.5| Under 0.5_Over 0.5 |
	|79-2| Total Team1 Corners 1.5| Under 1.5_Over 1.5 |
	|79-3| Total Team1 Corners 2.5| Under 2.5_Over 2.5 |
	|79-4| Total Team1 Corners 3.5| Under 3.5_Over 3.5 |
	|79-5| Total Team1 Corners 4.5| Under 4.5_Over 4.5 |
	|79-6| Total Team1 Corners 5.5| Under 5.5_Over 5.5 |
	|79-7| Total Team1 Corners 6.5| Under 6.5_Over 6.5 |
	|79-8| Total Team1 Corners 7.5| Under 7.5_Over 7.5 |
	|79-9| Total Team1 Corners 8.5| Under 8.5_Over 8.5 |
	|79-10| Total Team1 Corners 9.5| Under 9.5_Over 9.5 |
	|79-11| Total Team1 Corners 10.5| Under 10.5_Over 10.5 |
	|79-12| Total Team1 Corners 11.5| Under 11.5_Over 11.5 |
	|79-13| Total Team1 Corners 12.5| Under 12.5_Over 12.5 |
	|79-14| Total Team1 Corners 13.5| Under 13.5_Over 13.5 |
	|79-15| Total Team1 Corners 14.5| Under 14.5_Over 14.5 |
	|79-16| Total Team1 Corners 15.5| Under 15.5_Over 15.5 |
	|79-17| Total Team1 Corners 16.5| Under 16.5_Over 16.5 |
	|79-18| Total Team1 Corners 17.5| Under 17.5_Over 17.5 |
	|79-19| Total Team1 Corners 18.5| Under 18.5_Over 18.5 |
	|79-20| Total Team1 Corners 19.5| Under 19.5_Over 19.5 |
	|79-21| Total Team1 Corners 20.5| Under 20.5_Over 20.5 |
	|79-22| Total Team2 Corners 0.5| Under 0.5_Over 0.5 |
	|79-23| Total Team2 Corners 1.5| Under 1.5_Over 1.5 |
	|79-24| Total Team2 Corners 2.5| Under 2.5_Over 2.5 |
	|79-25| Total Team2 Corners 3.5| Under 3.5_Over 3.5 |
	|79-26| Total Team2 Corners 4.5| Under 4.5_Over 4.5 |
	|79-27| Total Team2 Corners 5.5| Under 5.5_Over 5.5 |
	|79-28| Total Team2 Corners 6.5| Under 6.5_Over 6.5 |
	|79-29| Total Team2 Corners 7.5| Under 7.5_Over 7.5 |
	|79-30| Total Team2 Corners 8.5| Under 8.5_Over 8.5 |
	|79-31| Total Team2 Corners 9.5| Under 9.5_Over 9.5 |
	|79-32| Total Team2 Corners 10.5| Under 10.5_Over 10.5 |
	|79-33| Total Team2 Corners 11.5| Under 11.5_Over 11.5 |
	|79-34| Total Team2 Corners 12.5| Under 12.5_Over 12.5 |
	|79-35| Total Team2 Corners 13.5| Under 13.5_Over 13.5 |
	|79-36| Total Team2 Corners 14.5| Under 14.5_Over 14.5 |
	|79-37| Total Team2 Corners 15.5| Under 15.5_Over 15.5 |
	|79-38| Total Team2 Corners 16.5| Under 16.5_Over 16.5 |
	|79-39| Total Team2 Corners 17.5| Under 17.5_Over 17.5 |
	|79-40| Total Team2 Corners 18.5| Under 18.5_Over 18.5 |
	|79-41| Total Team2 Corners 19.5| Under 19.5_Over 19.5 |
	|79-42| Total Team2 Corners 20.5| Under 20.5_Over 20.5 |
	|80-1| Team1 Corner Bands 2 - 3| Under 2_Between 2 And 3 Inclusive_Over 3 |
	|80-2| Team1 Corner Bands 4 - 5| Under 4_Between 4 And 5 Inclusive_Over 5 |
	|80-3| Team1 Corner Bands 6 - 7| Under 6_Between 6 And 7 Inclusive_Over 7 |
	|80-4| Team1 Corner Bands 8 - 9| Under 8_Between 8 And 9 Inclusive_Over 9 |
	|80-5| Team1 Corner Bands 10 - 11| Under 10_Between 10 And 11 Inclusive_Over 11 |
	|80-6| Team2 Corner Bands 2 - 3| Under 2_Between 2 And 3 Inclusive_Over 3 |
	|80-7| Team2 Corner Bands 4 - 5| Under 4_Between 4 And 5 Inclusive_Over 5 |
	|80-8| Team2 Corner Bands 6 - 7| Under 6_Between 6 And 7 Inclusive_Over 7 |
	|80-9| Team2 Corner Bands 8 - 9| Under 8_Between 8 And 9 Inclusive_Over 9 |
	|80-10| Team2 Corner Bands 10 - 11| Under 10_Between 10 And 11 Inclusive_Over 11 |
	|81-1| 1st Half Red Card| Yes_No |
	|81-2| 2nd Half Red Card| Yes_No |
	|82-1| 1st Half Penalty Awarded| Yes_No |
	|82-2| 2nd Half Penalty Awarded| Yes_No |
	|83-1| Total Team1 Goals Under/Over 0.5| Under 0.5_Over 0.5 |
	|83-2| Total Team1 Goals Under/Over 1.5| Under 1.5_Over 1.5 |
	|83-3| Total Team1 Goals Under/Over 2.5| Under 2.5_Over 2.5 |
	|83-4| Total Team1 Goals Under/Over 3.5| Under 3.5_Over 3.5 |
	|83-5| Total Team1 Goals Under/Over 4.5| Under 4.5_Over 4.5 |
	|83-6| Total Team1 Goals Under/Over 5.5| Under 5.5_Over 5.5 |
	|83-7| Total Team1 Goals Under/Over 6.5| Under 6.5_Over 6.5 |
	|83-8| Total Team1 Goals Under/Over 7.5| Under 7.5_Over 7.5 |
	|83-9| Total Team1 Goals Under/Over 8.5| Under 8.5_Over 8.5 |
	|83-10| Total Team1 Goals Under/Over 9.5| Under 9.5_Over 9.5 |
	|83-11| Total Team2 Goals Under/Over 0.5| Under 0.5_Over 0.5 |
	|83-12| Total Team2 Goals Under/Over 1.5| Under 1.5_Over 1.5 |
	|83-13| Total Team2 Goals Under/Over 2.5| Under 2.5_Over 2.5 |
	|83-14| Total Team2 Goals Under/Over 3.5| Under 3.5_Over 3.5 |
	|83-15| Total Team2 Goals Under/Over 4.5| Under 4.5_Over 4.5 |
	|83-16| Total Team2 Goals Under/Over 5.5| Under 5.5_Over 5.5 |
	|83-17| Total Team2 Goals Under/Over 6.5| Under 6.5_Over 6.5 |
	|83-18| Total Team2 Goals Under/Over 7.5| Under 7.5_Over 7.5 |
	|83-19| Total Team2 Goals Under/Over 8.5| Under 8.5_Over 8.5 |
	|83-20| Total Team2 Goals Under/Over 9.5| Under 9.5_Over 9.5 |
	|84-1| 2nd Half Result| Team1_Draw_Team2 |
	|85-1| A Goal to be Scored in 1 - 15 Minutes| Yes_No |
	|85-2| A Goal to be Scored in 16 - 30 Minutes| Yes_No |
	|85-3| A Goal to be Scored in 31 - 45 Minutes| Yes_No |
	|85-4| A Goal to be Scored in 46 - 60 Minutes| Yes_No |
	|85-5| A Goal to be Scored in 61 - 75 Minutes| Yes_No |
	|85-6| A Goal to be Scored in 76 - 90 Minutes| Yes_No |
	|86-1| Team1 to score a Goal in 1 - 15 Minutes| Yes_No |
	|86-2| Team1 to score a Goal in 16 - 30 Minutes| Yes_No |
	|86-3| Team1 to score a Goal in 31 - 45 Minutes| Yes_No |
	|86-4| Team1 to score a Goal in 46 - 60 Minutes| Yes_No |
	|86-5| Team1 to score a Goal in 61 - 75 Minutes| Yes_No |
	|86-6| Team1 to score a Goal in 76 - 90 Minutes| Yes_No |
	|86-7| Team2 to score a Goal in 1 - 15 Minutes| Yes_No |
	|86-8| Team2 to score a Goal in 16 - 30 Minutes| Yes_No |
	|86-9| Team2 to score a Goal in 31 - 45 Minutes| Yes_No |
	|86-10| Team2 to score a Goal in 46 - 60 Minutes| Yes_No |
	|86-11| Team2 to score a Goal in 61 - 75 Minutes| Yes_No |
	|86-12| Team2 to score a Goal in 76 - 90 Minutes| Yes_No |
	|87-1| Both Teams Score In 1st Half| Yes_No |
	|87-2| Both Teams Score In 2nd Half| Yes_No |
	|88-1| Both Teams To Score In Both Halves| Yes_No |
	|89-1| Match Winner + Goals| Team1 And Under 2.5 Goals_Team1 And Over 2.5 Goals_Draw And Under 2.5 Goals_Draw And Over 2.5 Goals_Team2 And Under 2.5 Goals_Team2 And Over 2.5 Goals |
	|90-1| Match Winning Margin| Score Draw_Exactly 1 Goal_Exactly 2 Goals_3 Goals Or More |
	|91-1| Team1 To Win Either Half| Yes_No |
	|91-2| Team2 To Win Either Half| Yes_No |
	|92-1| Winning Team Between 1 And 15 Minutes| Team1_Match Drawn_Team2 |
	|92-2| Winning Team Between 16 And 30 Minutes| Team1_Match Drawn_Team2 |
	|92-3| Winning Team Between 31 And 45 Minutes| Team1_Match Drawn_Team2 |
	|92-4| Winning Team Between 46 And 60 Minutes| Team1_Match Drawn_Team2 |
	|92-5| Winning Team Between 61 And 75 Minutes| Team1_Match Drawn_Team2 |
	|92-6| Winning Team Between 76 And 90 Minutes| Team1_Match Drawn_Team2 |
	|93-1| Player To Score In Both Halves| Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0 |
	|94-1| Player To Score In Minutes 1-10| Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0 |
	|95-1| Team1 - Anytime Wincast Win| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0 |
	|95-2| Team2 - Anytime Wincast Win| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0 |
	|95-3| Team1 - Anytime Wincast Lose| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0 |
	|95-4| Team2 - Anytime Wincast Lose| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0 |
	|95-5| Team1 - Anytime Wincast Draw| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0 |
	|95-6| Team2 - Anytime Wincast Draw| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0 |
	|101-1| ET: Winner| Team1_Draw_Team2 |
	|103-1| ET: Total Goals Under/Over 0.5| Under 0.5_Over 0.5 |
	|103-2| ET: Total Goals Under/Over 1.5| Under 1.5_Over 1.5 |
	|103-3| ET: Total Goals Under/Over 2.5| Under 2.5_Over 2.5 |
	|104-1| ET: Total Goals| Exactly 0_Exactly 1_2 Goals Or More |
	|105-1| ET: Corners Under/Over 0.5| Under 0.5_Over 0.5 |
	|105-2| ET: Corners Under/Over 1.5| Under 1.5_Over 1.5 |
	|105-3| ET: Corners Under/Over 2.5| Under 2.5_Over 2.5 |
	|105-4| ET: Corners Under/Over 3.5| Under 3.5_Over 3.5 |
	|105-5| ET: Corners Under/Over 4.5| Under 4.5_Over 4.5 |
	|105-6| ET: Corners Under/Over 5.5| Under 5.5_Over 5.5 |
	|106-1| ET: Corners Exact Middle 1| Under 1_Exactly 1_Over 1 |
	|106-2| ET: Corners Exact Middle 2| Under 2_Exactly 2_Over 2 |
	|106-3| ET: Corners Exact Middle 3| Under 3_Exactly 3_Over 3 |
	|106-4| ET: Corners Exact Middle 4| Under 4_Exactly 4_Over 4 |
	|106-5| ET: Corners Exact Middle 5| Under 5_Exactly 5_Over 5 |
	|107-1| ET: Total Bookings Points  20  | Under 20_Exactly 20_Over 20 |
	|107-2| ET: Total Bookings Points  25 and 30 | Under 25_Between 25 And 30 Inclusive_Over 30 |
	|107-3| ET: Total Bookings Points  35 and 40 | Under 35_Between 35 And 40 Inclusive_Over 40 |
	|108-1| ET: 1st Match Goal Minutes| Goal 1 Between 1 And 10 Minutes_Goal 1 Between 11 And 20 Minutes_Goal 1 Between 21 And 30 Minutes_Goal 1 No Goal |
	|108-2| ET: 2nd Match Goal Minutes| Goal 2 Between 1 And 10 Minutes_Goal 2 Between 11 And 20 Minutes_Goal 2 Between 21 And 30 Minutes_Goal 2 No Goal |
	|108-3| ET: 3rd Match Goal Minutes| Goal 3 Between 1 And 10 Minutes_Goal 3 Between 11 And 20 Minutes_Goal 3 Between 21 And 30 Minutes_Goal 3 No Goal |
	|109-1| ET: Time Of Team1 Goal 1| Goal 1 Between 1 And 10 Minutes_Goal 1 Between 11 And 20 Minutes_Goal 1 Between 21 And 30 Minutes_Goal 1 No Goal |
	|109-2| ET: Time Of Team1 Goal 2| Goal 2 Between 1 And 10 Minutes_Goal 2 Between 11 And 20 Minutes_Goal 2 Between 21 And 30 Minutes_Goal 2 No Goal |
	|109-3| ET: Time Of Team1 Goal 3| Goal 3 Between 1 And 10 Minutes_Goal 3 Between 11 And 20 Minutes_Goal 3 Between 21 And 30 Minutes_Goal 3 No Goal |
	|109-4| ET: Time Of Team2 Goal 1| Goal 1 Between 1 And 10 Minutes_Goal 1 Between 11 And 20 Minutes_Goal 1 Between 21 And 30 Minutes_Goal 1 No Goal |
	|109-5| ET: Time Of Team2 Goal 2| Goal 2 Between 1 And 10 Minutes_Goal 2 Between 11 And 20 Minutes_Goal 2 Between 21 And 30 Minutes_Goal 2 No Goal |
	|109-6| ET: Time Of Team2 Goal 3| Goal 3 Between 1 And 10 Minutes_Goal 3 Between 11 And 20 Minutes_Goal 3 Between 21 And 30 Minutes_Goal 3 No Goal |
	|110-1| ET: Team1 To Score| Yes_No |
	|110-2| ET: Team2 To Score| Yes_No |
	|111-1| ET: Number Of Teams To Score| None_One_Both |
	|112-1| ET: Half Time/Full Time| Team1 And Team1_Draw And Team1_Team2 And Team1_Team1 And Draw_Draw And Draw_Team2 And Draw_Team1 And Team2_Draw And Team2_Team2 And Team2 |
	|113-1| ET: Correct Score| Draw  0 - 0_Draw  1 - 1_Draw  2 - 2_Draw Any Other Score  - _Team1  1 - 0_Team1  2 - 0_Team1  2 - 1_Team1 Any Other Score  - _Team2  1 - 0_Team2  2 - 0_Team2  2 - 1_Team2 Any Other Score  -  |
	|114-1| ET: Red Card| Yes_No |
	|115-1| ET: Half Time Result| Team1_Draw_Team2 |
	|116-1| ET: Half Time Correct Score| Draw  0 - 0_Draw  1 - 1_Draw  2 - 2_Draw Any Other Score  - _Team1  1 - 0_Team1  2 - 0_Team1  2 - 1_Team1 Any Other Score  - _Team2  1 - 0_Team2  2 - 0_Team2  2 - 1_Team2 Any Other Score  -  |
	|117-1| ET: Half Time Total Goals Under/Over 0.5| Under 0.5_Over 0.5 |
	|117-2| ET: Half Time Total Goals Under/Over 1.5| Under 1.5_Over 1.5 |
	|117-3| ET: Half Time Total Goals Under/Over 2.5| Under 2.5_Over 2.5 |
	|118-1| ET: 1st Goal| Team1_Team2_No Goal |
	|118-2| ET: 2nd Goal| Team1_Team2_No Goal |
	|118-3| ET: 3rd Goal| Team1_Team2_No Goal |
	|118-4| ET: 4th Goal| Team1_Team2_No Goal |
	|118-5| ET: 5th Goal| Team1_Team2_No Goal |
	|119-1| ET: Player To Score 1st Goal| Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_No Goal |
	|119-2| ET: Player To Score 2nd Goal| Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_No Goal |
	|119-3| ET: Player To Score 3rd Goal| Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_No Goal |
	|119-4| ET: Player To Score 4th Goal| Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_No Goal |
	|119-5| ET: Player To Score 5th Goal| Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_No Goal |
	|119-6| ET: Player To Score 6th Goal| Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_No Goal |

	      

Scenario: Extra time, penalties
	Given I have created a linked fixture for Football with the following base variables 
	| Name            | Value |
	| MatchLength     | 90    |
	| EtMatchLength   | 30    |
	| ExtratimeActive | true  |
	| PenaltiesActive | true  |

	When I request the last response without modifiying any display metadata
	Then The last response should contain the following default market and selection names

	| Market Id | Market Display Name                           | Selection Display Names |
	| 1-1       | Match Winner                                  | Team1_Draw_Team2 |
	|2-1| Double Chance 1| Team1 - Draw_Team2  |
	|2-2| Double Chance 2| Team2 - Draw_Team1  |
	|2-3| Double Chance 3| Team1 - Team2_Draw  |
	|3-1| Winning Margin| Team1 By Exactly 1 Goal_Team1 By Exactly 2 Goals_Team1 By Exactly 3 Goals_Team1 By 4 Or More Goals_Team2 By Exactly 1 Goal_Team2 By Exactly 2 Goals_Team2 By Exactly 3 Goals_Team2 By 4 Or More Goals_0-0 Draw_Score Draw |
	|4-1| Team1 To Score In Both Halves| Yes_No |
	|4-2| Team2 To Score In Both Halves| Yes_No |
	|5-1| Total Goals - Under/Over 0.5| Under 0.5_Over 0.5 |
	|5-2| Total Goals - Under/Over 1.5| Under 1.5_Over 1.5 |
	|5-3| Total Goals - Under/Over 2.5| Under 2.5_Over 2.5 |
	|5-4| Total Goals - Under/Over 3.5| Under 3.5_Over 3.5 |
	|5-5| Total Goals - Under/Over 4.5| Under 4.5_Over 4.5 |
	|5-6| Total Goals - Under/Over 5.5| Under 5.5_Over 5.5 |
	|5-7| Total Goals - Under/Over 6.5| Under 6.5_Over 6.5 |
	|5-8| Total Goals - Under/Over 7.5| Under 7.5_Over 7.5 |
	|5-9| Total Goals - Under/Over 8.5| Under 8.5_Over 8.5 |
	|5-10| Total Goals - Under/Over 9.5| Under 9.5_Over 9.5 |
	|5-11| Total Goals - Under/Over 10.5| Under 10.5_Over 10.5 |
	|5-12| Total Goals - Under/Over 11.5| Under 11.5_Over 11.5 |
	|5-13| Total Goals - Under/Over 12.5| Under 12.5_Over 12.5 |
	|6-1| Number Of Goals In Match| Under 2_Exactly 2_Over 2 |
	|7-1| Number Of Goals In 1st Half| Under 1_Exactly 1_Over 1 |
	|7-2| Number Of Goals In 2nd Half| Under 1_Exactly 1_Over 1 |
	|8-18| Asian Handicap -5| Team1 -5_Team2 +5 |
	|8-19| Asian Handicap -4.75| Team1 -4.75_Team2 +4.75 |
	|8-20| Asian Handicap -4.5| Team1 -4.5_Team2 +4.5 |
	|8-21| Asian Handicap -4.25| Team1 -4.25_Team2 +4.25 |
	|8-22| Asian Handicap -4| Team1 -4_Team2 +4 |
	|8-23| Asian Handicap -3.75| Team1 -3.75_Team2 +3.75 |
	|8-24| Asian Handicap -3.5| Team1 -3.5_Team2 +3.5 |
	|8-25| Asian Handicap -3.25| Team1 -3.25_Team2 +3.25 |
	|8-26| Asian Handicap -3| Team1 -3_Team2 +3 |
	|8-27| Asian Handicap -2.75| Team1 -2.75_Team2 +2.75 |
	|8-28| Asian Handicap -2.5| Team1 -2.5_Team2 +2.5 |
	|8-29| Asian Handicap -2.25| Team1 -2.25_Team2 +2.25 |
	|8-1| Asian Handicap -2| Team1 -2_Team2 +2 |
	|8-2| Asian Handicap -1.75| Team1 -1.75_Team2 +1.75 |
	|8-3| Asian Handicap -1.5| Team1 -1.5_Team2 +1.5 |
	|8-4| Asian Handicap -1.25| Team1 -1.25_Team2 +1.25 |
	|8-5| Asian Handicap -1| Team1 -1_Team2 +1 |
	|8-6| Asian Handicap -0.75| Team1 -0.75_Team2 +0.75 |
	|8-7| Asian Handicap -0.5| Team1 -0.5_Team2 +0.5 |
	|8-8| Asian Handicap -0.25| Team1 -0.25_Team2 +0.25 |
	|8-9| Asian Handicap 0| Team1 0_Team2 0 |
	|8-10| Asian Handicap +0.25| Team1 +0.25_Team2 -0.25 |
	|8-11| Asian Handicap +0.5| Team1 +0.5_Team2 -0.5 |
	|8-12| Asian Handicap +0.75| Team1 +0.75_Team2 -0.75 |
	|8-13| Asian Handicap +1| Team1 +1_Team2 -1 |
	|8-14| Asian Handicap +1.25| Team1 +1.25_Team2 -1.25 |
	|8-15| Asian Handicap +1.5| Team1 +1.5_Team2 -1.5 |
	|8-16| Asian Handicap +1.75| Team1 +1.75_Team2 -1.75 |
	|8-17| Asian Handicap +2| Team1 +2_Team2 -2 |
	|8-30| Asian Handicap +2.25| Team1 +2.25_Team2 -2.25 |
	|8-31| Asian Handicap +2.5| Team1 +2.5_Team2 -2.5 |
	|8-32| Asian Handicap +2.75| Team1 +2.75_Team2 -2.75 |
	|8-33| Asian Handicap +3| Team1 +3_Team2 -3 |
	|8-34| Asian Handicap +3.25| Team1 +3.25_Team2 -3.25 |
	|8-35| Asian Handicap +3.5| Team1 +3.5_Team2 -3.5 |
	|8-36| Asian Handicap +3.75| Team1 +3.75_Team2 -3.75 |
	|8-37| Asian Handicap +4| Team1 +4_Team2 -4 |
	|8-38| Asian Handicap +4.25| Team1 +4.25_Team2 -4.25 |
	|8-39| Asian Handicap +4.5| Team1 +4.5_Team2 -4.5 |
	|8-40| Asian Handicap +4.75| Team1 +4.75_Team2 -4.75 |
	|8-41| Asian Handicap +5| Team1 +5_Team2 -5 |
	|9-1| Handicap -5| Team1 -5_Draw (Team1 -5)_Team2 +5 |
	|9-2| Handicap -4| Team1 -4_Draw (Team1 -4)_Team2 +4 |
	|9-3| Handicap -3| Team1 -3_Draw (Team1 -3)_Team2 +3 |
	|9-4| Handicap -2| Team1 -2_Draw (Team1 -2)_Team2 +2 |
	|9-5| Handicap -1| Team1 -1_Draw (Team1 -1)_Team2 +1 |
	|9-6| Handicap 0| Team1 0_Draw (Team1 0)_Team2 0 |
	|9-7| Handicap +1| Team1 +1_Draw (Team1 +1)_Team2 -1 |
	|9-8| Handicap +2| Team1 +2_Draw (Team1 +2)_Team2 -2 |
	|9-9| Handicap +3| Team1 +3_Draw (Team1 +3)_Team2 -3 |
	|9-10| Handicap +4| Team1 +4_Draw (Team1 +4)_Team2 -4 |
	|9-11| Handicap +5| Team1 +5_Draw (Team1 +5)_Team2 -5 |
	|10-1| Draw No Bet| Team1_Team2 |
	|11-1| Team1 - Win To Nil| Yes_No |
	|11-2| Team2 - Win To Nil| Yes_No |
	|12-1| Full Time Correct Score| Team1  1 - 0_Team1  2 - 0_Team1  2 - 1_Team1  3 - 0_Team1  3 - 1_Team1  3 - 2_Team1  4 - 0_Team1  4 - 1_Team1  4 - 2_Team1  4 - 3_Team1  5 - 0_Team1  5 - 1_Team1  5 - 2_Team1  5 - 3_Team1  5 - 4_Team1  6 - 0_Team1  6 - 1_Team1  6 - 2_Team1  6 - 3_Team1  6 - 4_Team1  6 - 5_Team1  7 - 0_Team1  7 - 1_Team1  7 - 2_Team1  7 - 3_Team1  7 - 4_Team1  7 - 5_Team1  7 - 6_Team1  8 - 0_Team1  8 - 1_Team1  8 - 2_Team1  8 - 3_Team1  8 - 4_Team1  8 - 5_Team1  8 - 6_Team1  8 - 7_Team1  9 - 0_Team1  9 - 1_Team1  9 - 2_Team1  9 - 3_Team1  9 - 4_Team1  9 - 5_Team1  9 - 6_Team1  9 - 7_Team1  9 - 8_Team1  10 - 0_Team1  10 - 1_Team1  10 - 2_Team1  10 - 3_Team1  10 - 4_Team1  10 - 5_Team1  10 - 6_Team1  10 - 7_Team1  10 - 8_Team1  10 - 9_Team1  11 - 0_Team1  11 - 1_Team1  11 - 2_Team1  11 - 3_Team1  11 - 4_Team1  11 - 5_Team1  11 - 6_Team1  11 - 7_Team1  11 - 8_Team1  11 - 9_Team1  11 - 10_Team1  12 - 0_Team1  12 - 1_Team1  12 - 2_Team1  12 - 3_Team1  12 - 4_Team1  12 - 5_Team1  12 - 6_Team1  12 - 7_Team1  12 - 8_Team1  12 - 9_Team1  12 - 10_Team1  12 - 11_Draw  0 - 0_Draw  1 - 1_Draw  2 - 2_Draw  3 - 3_Draw  4 - 4_Draw  5 - 5_Draw  6 - 6_Draw  7 - 7_Draw  8 - 8_Draw  9 - 9_Draw  10 - 10_Draw  11 - 11_Draw  12 - 12_Team2  1 - 0_Team2  2 - 0_Team2  2 - 1_Team2  3 - 0_Team2  3 - 1_Team2  3 - 2_Team2  4 - 0_Team2  4 - 1_Team2  4 - 2_Team2  4 - 3_Team2  5 - 0_Team2  5 - 1_Team2  5 - 2_Team2  5 - 3_Team2  5 - 4_Team2  6 - 0_Team2  6 - 1_Team2  6 - 2_Team2  6 - 3_Team2  6 - 4_Team2  6 - 5_Team2  7 - 0_Team2  7 - 1_Team2  7 - 2_Team2  7 - 3_Team2  7 - 4_Team2  7 - 5_Team2  7 - 6_Team2  8 - 0_Team2  8 - 1_Team2  8 - 2_Team2  8 - 3_Team2  8 - 4_Team2  8 - 5_Team2  8 - 6_Team2  8 - 7_Team2  9 - 0_Team2  9 - 1_Team2  9 - 2_Team2  9 - 3_Team2  9 - 4_Team2  9 - 5_Team2  9 - 6_Team2  9 - 7_Team2  9 - 8_Team2  10 - 0_Team2  10 - 1_Team2  10 - 2_Team2  10 - 3_Team2  10 - 4_Team2  10 - 5_Team2  10 - 6_Team2  10 - 7_Team2  10 - 8_Team2  10 - 9_Team2  11 - 0_Team2  11 - 1_Team2  11 - 2_Team2  11 - 3_Team2  11 - 4_Team2  11 - 5_Team2  11 - 6_Team2  11 - 7_Team2  11 - 8_Team2  11 - 9_Team2  11 - 10_Team2  12 - 0_Team2  12 - 1_Team2  12 - 2_Team2  12 - 3_Team2  12 - 4_Team2  12 - 5_Team2  12 - 6_Team2  12 - 7_Team2  12 - 8_Team2  12 - 9_Team2  12 - 10_Team2  12 - 11_Any Other Score  |
	|13-1| Correct Score| Team1  1 - 0_Team1  2 - 0_Team1  2 - 1_Team1  3 - 0_Team1  3 - 1_Team1  3 - 2_Team1  4 - 0_Team1  4 - 1_Team1  4 - 2_Team1  5 - 0_Team1  5 - 1_Team1  6 - 0_Draw  0 - 0_Draw  1 - 1_Draw  2 - 2_Draw  3 - 3_Team2  1 - 0_Team2  2 - 0_Team2  2 - 1_Team2  3 - 0_Team2  3 - 1_Team2  3 - 2_Team2  4 - 0_Team2  4 - 1_Team2  4 - 2_Team2  5 - 0_Team2  5 - 1_Team2  6 - 0_Any Other Score  |
	|14-1| Team To Score 1st Goal| Team1_No Goal_Team2 |
	|14-2| Team To Score 2nd Goal| Team1_No Goal_Team2 |
	|14-3| Team To Score 3rd Goal| Team1_No Goal_Team2 |
	|14-4| Team To Score 4th Goal| Team1_No Goal_Team2 |
	|14-5| Team To Score 5th Goal| Team1_No Goal_Team2 |
	|14-6| Team To Score 6th Goal| Team1_No Goal_Team2 |
	|14-7| Team To Score 7th Goal| Team1_No Goal_Team2 |
	|14-8| Team To Score 8th Goal| Team1_No Goal_Team2 |
	|14-9| Team To Score 9th Goal| Team1_No Goal_Team2 |
	|14-10| Team To Score 10th Goal| Team1_No Goal_Team2 |
	|14-11| Team To Score 11th Goal| Team1_No Goal_Team2 |
	|14-12| Team To Score 12th Goal| Team1_No Goal_Team2 |
	|14-13| Team To Score 13th Goal| Team1_No Goal_Team2 |
	|14-14| Team To Score 14th Goal| Team1_No Goal_Team2 |
	|14-15| Team To Score 15th Goal| Team1_No Goal_Team2 |
	|14-16| Team To Score 16th Goal| Team1_No Goal_Team2 |
	|14-17| Team To Score 17th Goal| Team1_No Goal_Team2 |
	|14-18| Team To Score 18th Goal| Team1_No Goal_Team2 |
	|14-19| Team To Score 19th Goal| Team1_No Goal_Team2 |
	|14-20| Team To Score 20th Goal| Team1_No Goal_Team2 |
	|15-1| Team1 - Clean Sheet| Yes_No |
	|15-2| Team2 - Clean Sheet| Yes_No |
	|16-1| Both Teams To Score| Yes_No |
	|17-1| Number Of Teams To Score| None_One_Both |
	|18-1| Team1 To Score| Yes_No |
	|18-2| Team2 To Score| Yes_No |
	|19-1| Which Teams To Score?| Only Team1 Score_Only Team2 Score_Both Teams Score_Neither Team Scores |
	|20-1| Total Goals| No Goal_Exactly 1 Goal_Exactly 2 Goals_Exactly 3 Goals_Exactly 4 Goals_Exactly 5 Goals_Exactly 6 Goals_Exactly 7 Goals_Exactly 8 Goals_Exactly 9 Goals_10 Goals Or More |
	|71-1| Total Goals (Reduced)| No Goals_Exactly 1 Goal_Exactly 2 Goals_Exactly 3 Goals_4 Goals Or More |
	|21-1| Team1 - Total Goals| No Goal_Exactly 1 Goal_Exactly 2 Goals_Exactly 3 Goals_Exactly 4 Goals_Exactly 5 Goals_Exactly 6 Goals_Exactly 7 Goals_Exactly 8 Goals_Exactly 9 Goals_10 Goals Or More |
	|21-2| Team2 - Total Goals| No Goal_Exactly 1 Goal_Exactly 2 Goals_Exactly 3 Goals_Exactly 4 Goals_Exactly 5 Goals_Exactly 6 Goals_Exactly 7 Goals_Exactly 8 Goals_Exactly 9 Goals_10 Goals Or More |
	|72-1| Team1 Total Goals (Reduced)| No Goals_Exactly 1 Goal_Exactly 2 Goals_Exactly 3 Goals_4 Goals Or More |
	|72-2| Team2 Total Goals (Reduced)| No Goals_Exactly 1 Goal_Exactly 2 Goals_Exactly 3 Goals_4 Goals Or More |
	|22-1| Time Of First Goal| Between 1 And 10 Minutes_Between 11 And 20 Minutes_Between 21 And 30 Minutes_Between 31 And 40 Minutes_Between 41 And 50 Minutes_Between 51 And 60 Minutes_Between 61 And 70 Minutes_Between 71 And 80 Minutes_Between 81 And 90 Minutes_No Goal |
	|23-1| 1st Half - Time Of First Goal| Between 1 And 5 Minutes_Between 6 And 10 Minutes_Between 11 And 15 Minutes_Between 16 And 20 Minutes_Between 21 And 25 Minutes_Between 26 And 30 Minutes_Between 31 And 35 Minutes_Between 36 And 40 Minutes_Between 41 And 45 Minutes_No 1st Half Goal |
	|23-2| 2nd Half - Time Of First Goal| Between 46 And 50 Minutes_Between 51 And 55 Minutes_Between 56 And 60 Minutes_Between 61 And 65 Minutes_Between 66 And 70 Minutes_Between 71 And 75 Minutes_Between 76 And 80 Minutes_Between 81 And 85 Minutes_Between 86 And 90 Minutes_No 2nd Half Goal |
	|24-1| Time Of 1st Match Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|24-2| Time Of 2nd Match Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|24-3| Time Of 3rd Match Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|24-4| Time Of 4th Match Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|24-5| Time Of 5th Match Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|24-6| Time Of 6th Match Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|24-7| Time Of 7th Match Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|24-8| Time Of 8th Match Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|24-9| Time Of 9th Match Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|24-10| Time Of 10th Match Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-1| Time Of 1st Team1 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-2| Time Of 2nd Team1 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-3| Time Of 3rd Team1 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-4| Time Of 4th Team1 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-5| Time Of 5th Team1 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-6| Time Of 6th Team1 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-7| Time Of 7th Team1 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-8| Time Of 8th Team1 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-9| Time Of 9th Team1 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-10| Time Of 10th Team1 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-11| Time Of 1st Team2 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-12| Time Of 2nd Team2 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-13| Time Of 3rd Team2 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-14| Time Of 4th Team2 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-15| Time Of 5th Team2 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-16| Time Of 6th Team2 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-17| Time Of 7th Team2 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-18| Time Of 8th Team2 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-19| Time Of 9th Team2 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|25-20| Time Of 10th Team2 Goal| Between 1 And 15 Minutes_Between 16 And 30 Minutes_Between 31 And 45 Minutes_Between 46 And 60 Minutes_Between 61 And 75 Minutes_Between 76 And 90 Minutes_No Goal |
	|26-1| Time Of 1st Match Goal - Under/Over/No Goal| Under 30 Minutes_Over 30 Minutes_No Goal |
	|26-2| Time Of 2nd Match Goal - Under/Over/No Goal| Under 50 Minutes_Over 50 Minutes_No Goal |
	|26-3| Time Of 3rd Match Goal - Under/Over/No Goal| Under 70 Minutes_Over 70 Minutes_No Goal |
	|27-1| Time Of 1st Team1 Goal - Under/Over/No Goal| Up To And Including 30 Minutes_After 30 Minutes_No Goal |
	|27-2| Time Of 2nd Team1 Goal - Under/Over/No Goal| Up To And Including 50 Minutes_After 50 Minutes_No Goal |
	|27-3| Time Of 3rd Team1 Goal - Under/Over/No Goal| Up To And Including 70 Minutes_After 70 Minutes_No Goal |
	|27-4| Time Of 1st Team2 Goal - Under/Over/No Goal| Up To And Including 30 Minutes_After 30 Minutes_No Goal |
	|27-5| Time Of 2nd Team2 Goal - Under/Over/No Goal| Up To And Including 50 Minutes_After 50 Minutes_No Goal |
	|27-6| Time Of 3rd Team2 Goal - Under/Over/No Goal| Up To And Including 70 Minutes_After 70 Minutes_No Goal |
	|28-1| 1st Half - Total Goals| No Goals_Exactly 1 Goal_Exactly 2 Goals_3 Or More Goals |
	|29-1| Half With The Most Goals| 1st Half_2nd Half_Tie |
	|30-1| Half Time/Full Time| Team1 - Team1_Team1 - Draw_Team1 - Team2_Draw - Team1_Draw - Draw_Draw - Team2_Team2 - Team1_Team2 - Draw_Team2 - Team2 |
	|31-1| Half Time Result| Team1_Draw_Team2 |
	|32-1| Half Time Correct Score| Team1  1 - 0_Team1  2 - 0_Team1  2 - 1_Team1  3 - 0_Team1  3 - 1_Team1  3 - 2_Team1  4 - 0_Team1  4 - 1_Team1  4 - 2_Team1  4 - 3_Team1  5 - 0_Team1  5 - 1_Team1  5 - 2_Team1  5 - 3_Team1  5 - 4_Draw  0 - 0_Draw  1 - 1_Draw  2 - 2_Draw  3 - 3_Draw  4 - 4_Draw  5 - 5_Team2  1 - 0_Team2  2 - 0_Team2  2 - 1_Team2  3 - 0_Team2  3 - 1_Team2  3 - 2_Team2  4 - 0_Team2  4 - 1_Team2  4 - 2_Team2  4 - 3_Team2  5 - 0_Team2  5 - 1_Team2  5 - 2_Team2  5 - 3_Team2  5 - 4_Any Other Score  |
	|33-1| Total Goals - Odd/Even| Odd_Even |
	|34-1| Which Half Will The 1st Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|35-1| Which Half Will The 1st Team1 Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|35-2| Which Half Will The 1st Team2 Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|34-2| Which Half Will The 2nd Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|35-3| Which Half Will The 2nd Team1 Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|35-4| Which Half Will The 2nd Team2 Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|34-3| Which Half Will The 3rd Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|35-5| Which Half Will The 3rd Team1 Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|35-6| Which Half Will The 3rd Team2 Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|34-4| Which Half Will The 4th Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|35-7| Which Half Will The 4th Team1 Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|35-8| Which Half Will The 4th Team2 Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|34-5| Which Half Will The 5th Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|35-9| Which Half Will The 5th Team1 Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|35-10| Which Half Will The 5th Team2 Goal Be Scored?| 1st Half_2nd Half_No Goal |
	|36-11| Total Corners 10 - 12| Under 10_Between 10 And 12 Inclusive_Over 12 |
	|37-2| Total Corners - Under/Over 0.5| Under 0.5_Over 0.5 |
	|37-3| Total Corners - Under/Over 1.5| Under 1.5_Over 1.5 |
	|37-4| Total Corners - Under/Over 2.5| Under 2.5_Over 2.5 |
	|37-5| Total Corners - Under/Over 3.5| Under 3.5_Over 3.5 |
	|37-6| Total Corners - Under/Over 4.5| Under 4.5_Over 4.5 |
	|37-7| Total Corners - Under/Over 5.5| Under 5.5_Over 5.5 |
	|37-8| Total Corners - Under/Over 6.5| Under 6.5_Over 6.5 |
	|37-9| Total Corners - Under/Over 7.5| Under 7.5_Over 7.5 |
	|37-10| Total Corners - Under/Over 8.5| Under 8.5_Over 8.5 |
	|37-11| Total Corners - Under/Over 9.5| Under 9.5_Over 9.5 |
	|37-1| Total Corners - Under/Over 10.5| Under 10.5_Over 10.5 |
	|37-12| Total Corners - Under/Over 11.5| Under 11.5_Over 11.5 |
	|37-13| Total Corners - Under/Over 12.5| Under 12.5_Over 12.5 |
	|37-14| Total Corners - Under/Over 13.5| Under 13.5_Over 13.5 |
	|37-15| Total Corners - Under/Over 14.5| Under 14.5_Over 14.5 |
	|37-16| Total Corners - Under/Over 15.5| Under 15.5_Over 15.5 |
	|37-17| Total Corners - Under/Over 16.5| Under 16.5_Over 16.5 |
	|37-18| Total Corners - Under/Over 17.5| Under 17.5_Over 17.5 |
	|37-19| Total Corners - Under/Over 18.5| Under 18.5_Over 18.5 |
	|37-20| Total Corners - Under/Over 19.5| Under 19.5_Over 19.5 |
	|37-21| Total Corners - Under/Over 20.5| Under 20.5_Over 20.5 |
	|37-22| Total Corners - Under/Over 21.5| Under 21.5_Over 21.5 |
	|37-23| Total Corners - Under/Over 22.5| Under 22.5_Over 22.5 |
	|37-24| Total Corners - Under/Over 23.5| Under 23.5_Over 23.5 |
	|37-25| Total Corners - Under/Over 24.5| Under 24.5_Over 24.5 |
	|38-2| Corners Handicap -10.5| Team1 -10.5_Team2 +10.5 |
	|38-3| Corners Handicap -9.5| Team1 -9.5_Team2 +9.5 |
	|38-4| Corners Handicap -8.5| Team1 -8.5_Team2 +8.5 |
	|38-5| Corners Handicap -7.5| Team1 -7.5_Team2 +7.5 |
	|38-6| Corners Handicap -6.5| Team1 -6.5_Team2 +6.5 |
	|38-7| Corners Handicap -5.5| Team1 -5.5_Team2 +5.5 |
	|38-8| Corners Handicap -4.5| Team1 -4.5_Team2 +4.5 |
	|38-9| Corners Handicap -3.5| Team1 -3.5_Team2 +3.5 |
	|38-1| Corners Handicap -2.5| Team1 -2.5_Team2 +2.5 |
	|38-10| Corners Handicap -1.5| Team1 -1.5_Team2 +1.5 |
	|38-11| Corners Handicap -0.5| Team1 -0.5_Team2 +0.5 |
	|38-12| Corners Handicap +0.5| Team2 -0.5_Team1 +0.5 |
	|38-13| Corners Handicap +1.5| Team2 -1.5_Team1 +1.5 |
	|38-14| Corners Handicap +2.5| Team2 -2.5_Team1 +2.5 |
	|38-15| Corners Handicap +3.5| Team2 -3.5_Team1 +3.5 |
	|38-16| Corners Handicap +4.5| Team2 -4.5_Team1 +4.5 |
	|38-17| Corners Handicap +5.5| Team2 -5.5_Team1 +5.5 |
	|38-18| Corners Handicap +6.5| Team2 -6.5_Team1 +6.5 |
	|38-19| Corners Handicap +7.5| Team2 -7.5_Team1 +7.5 |
	|38-20| Corners Handicap +8.5| Team2 -8.5_Team1 +8.5 |
	|38-21| Corners Handicap +9.5| Team2 -9.5_Team1 +9.5 |
	|38-22| Corners Handicap +10.5| Team2 -10.5_Team1 +10.5 |
	|39-1| Team With Most Corners| Team1_Draw_Team2 |
	|40-9| Corners Handicap -10| Team1 -10_Draw -10_Team2 +10 |
	|40-10| Corners Handicap -9| Team1 -9_Draw -9_Team2 +9 |
	|40-11| Corners Handicap -8| Team1 -8_Draw -8_Team2 +8 |
	|40-12| Corners Handicap -7| Team1 -7_Draw -7_Team2 +7 |
	|40-13| Corners Handicap -6| Team1 -6_Draw -6_Team2 +6 |
	|40-14| Corners Handicap -5| Team1 -5_Draw -5_Team2 +5 |
	|40-1| Corners Handicap -4| Team1 -4_Draw -4_Team2 +4 |
	|40-2| Corners Handicap -3| Team1 -3_Draw -3_Team2 +3 |
	|40-3| Corners Handicap -2| Team1 -2_Draw -2_Team2 +2 |
	|40-4| Corners Handicap -1| Team1 -1_Draw -1_Team2 +1 |
	|40-15| Corners Handicap +10| Team1 +10_Draw +10_Team2 -10 |
	|40-16| Corners Handicap +9| Team1 +9_Draw +9_Team2 -9 |
	|40-17| Corners Handicap +8| Team1 +8_Draw +8_Team2 -8 |
	|40-18| Corners Handicap +7| Team1 +7_Draw +7_Team2 -7 |
	|40-19| Corners Handicap +6| Team1 +6_Draw +6_Team2 -6 |
	|40-20| Corners Handicap +5| Team1 +5_Draw +5_Team2 -5 |
	|40-5| Corners Handicap +4| Team1 +4_Draw +4_Team2 -4 |
	|40-6| Corners Handicap +3| Team1 +3_Draw +3_Team2 -3 |
	|40-7| Corners Handicap +2| Team1 +2_Draw +2_Team2 -2 |
	|40-8| Corners Handicap +1| Team1 +1_Draw +1_Team2 -1 |
	|41-1| Time Of First Corner| Between 1 And 10 Minutes_Between 11 And 20 Minutes_Between 21 And 30 Minutes_Between 31 And 40 Minutes_Between 41 And 50 Minutes_Between 51 And 60 Minutes_Between 61 And 70 Minutes_Between 71 And 80 Minutes_Between 81 And 90 Minutes_No Corner |
	|42-1| Team To Take The First Corner| Team1_No Corner_Team2 |
	|43-3| Exact 1st Half Corners - Under/Over 1| Under 1_Exactly 1_Over 1 |
	|43-4| Exact 1st Half Corners - Under/Over 2| Under 2_Exactly 2_Over 2 |
	|43-5| Exact 1st Half Corners - Under/Over 3| Under 3_Exactly 3_Over 3 |
	|43-6| Exact 1st Half Corners - Under/Over 4| Under 4_Exactly 4_Over 4 |
	|43-1| Exact 1st Half Corners - Under/Over 5| Under 5_Exactly 5_Over 5 |
	|43-7| Exact 1st Half Corners - Under/Over 6| Under 6_Exactly 6_Over 6 |
	|43-8| Exact 1st Half Corners - Under/Over 7| Under 7_Exactly 7_Over 7 |
	|43-9| Exact 1st Half Corners - Under/Over 8| Under 8_Exactly 8_Over 8 |
	|43-10| Exact 1st Half Corners - Under/Over 9| Under 9_Exactly 9_Over 9 |
	|43-11| Exact 1st Half Corners - Under/Over 10| Under 10_Exactly 10_Over 10 |
	|43-12| Exact 2nd Half Corners - Under/Over 1| Under 1_Exactly 1_Over 1 |
	|43-13| Exact 2nd Half Corners - Under/Over 2| Under 2_Exactly 2_Over 2 |
	|43-14| Exact 2nd Half Corners - Under/Over 3| Under 3_Exactly 3_Over 3 |
	|43-15| Exact 2nd Half Corners - Under/Over 4| Under 4_Exactly 4_Over 4 |
	|43-16| Exact 2nd Half Corners - Under/Over 5| Under 5_Exactly 5_Over 5 |
	|43-2| Exact 2nd Half Corners - Under/Over 6| Under 6_Exactly 6_Over 6 |
	|43-17| Exact 2nd Half Corners - Under/Over 7| Under 7_Exactly 7_Over 7 |
	|43-18| Exact 2nd Half Corners - Under/Over 8| Under 8_Exactly 8_Over 8 |
	|43-19| Exact 2nd Half Corners - Under/Over 9| Under 9_Exactly 9_Over 9 |
	|43-20| Exact 2nd Half Corners - Under/Over 10| Under 10_Exactly 10_Over 10 |
	|44-3| 1st Half - Total Corners| Under 5_Between 5 And 6 Inclusive_Over 6 |
	|44-4| 2nd Half - Total Corners| Under 5_Between 5 And 6 Inclusive_Over 6 |
	|45-1| 1st Half - Team To Take The First Corner| Team1_No Corner_Team2 |
	|45-2| 2nd Half - Team To Take The First Corner| Team1_No Corner_Team2 |
	|46-1| Time Of First Team1 Corner| Between 1 And 10_Between 11 And 20_Between 21 And 30_Between 31 And 40_Between 41 And 50_Between 51 And 60_Between 61 And 70_Between 71 And 80_Between 81 And 90_No Corner  |
	|46-2| Time Of First Team2 Corner| Between 1 And 10_Between 11 And 20_Between 21 And 30_Between 31 And 40_Between 41 And 50_Between 51 And 60_Between 61 And 70_Between 71 And 80_Between 81 And 90_No Corner  |
	|47-1| 1st Corner| Team1_No Corner_Team2 |
	|47-2| 2nd Corner| Team1_No Corner_Team2 |
	|47-3| 3rd Corner| Team1_No Corner_Team2 |
	|47-4| 4th Corner| Team1_No Corner_Team2 |
	|47-5| 5th Corner| Team1_No Corner_Team2 |
	|47-6| 6th Corner| Team1_No Corner_Team2 |
	|47-7| 7th Corner| Team1_No Corner_Team2 |
	|47-8| 8th Corner| Team1_No Corner_Team2 |
	|47-9| 9th Corner| Team1_No Corner_Team2 |
	|47-10| 10th Corner| Team1_No Corner_Team2 |
	|47-11| 11th Corner| Team1_No Corner_Team2 |
	|47-12| 12th Corner| Team1_No Corner_Team2 |
	|47-13| 13th Corner| Team1_No Corner_Team2 |
	|47-14| 14th Corner| Team1_No Corner_Team2 |
	|47-15| 15th Corner| Team1_No Corner_Team2 |
	|47-16| 16th Corner| Team1_No Corner_Team2 |
	|47-17| 17th Corner| Team1_No Corner_Team2 |
	|47-18| 18th Corner| Team1_No Corner_Team2 |
	|47-19| 19th Corner| Team1_No Corner_Team2 |
	|47-20| 20th Corner| Team1_No Corner_Team2 |
	|47-21| 21st Corner| Team1_No Corner_Team2 |
	|47-22| 22nd Corner| Team1_No Corner_Team2 |
	|47-23| 23rd Corner| Team1_No Corner_Team2 |
	|47-24| 24th Corner| Team1_No Corner_Team2 |
	|47-25| 25th Corner| Team1_No Corner_Team2 |
	|47-26| 26th Corner| Team1_No Corner_Team2 |
	|47-27| 27th Corner| Team1_No Corner_Team2 |
	|47-28| 28th Corner| Team1_No Corner_Team2 |
	|47-29| 29th Corner| Team1_No Corner_Team2 |
	|47-30| 30th Corner| Team1_No Corner_Team2 |
	|47-31| 31st Corner| Team1_No Corner_Team2 |
	|47-32| 32nd Corner| Team1_No Corner_Team2 |
	|47-33| 33rd Corner| Team1_No Corner_Team2 |
	|47-34| 34th Corner| Team1_No Corner_Team2 |
	|47-35| 35th Corner| Team1_No Corner_Team2 |
	|47-36| 36th Corner| Team1_No Corner_Team2 |
	|47-37| 37th Corner| Team1_No Corner_Team2 |
	|47-38| 38th Corner| Team1_No Corner_Team2 |
	|47-39| 39th Corner| Team1_No Corner_Team2 |
	|47-40| 40th Corner| Team1_No Corner_Team2 |
	|47-41| 41st Corner| Team1_No Corner_Team2 |
	|47-42| 42nd Corner| Team1_No Corner_Team2 |
	|47-43| 43rd Corner| Team1_No Corner_Team2 |
	|47-44| 44th Corner| Team1_No Corner_Team2 |
	|47-45| 45th Corner| Team1_No Corner_Team2 |
	|47-46| 46th Corner| Team1_No Corner_Team2 |
	|47-47| 47th Corner| Team1_No Corner_Team2 |
	|47-48| 48th Corner| Team1_No Corner_Team2 |
	|47-49| 49th Corner| Team1_No Corner_Team2 |
	|47-50| 50th Corner| Team1_No Corner_Team2 |
	|48-1| Total Bookings Points 25-40| Under 25_Between 25 And 40 Inclusive_Over 40 |
	|48-2| Total Bookings Points 45-60| Under 45_Between 45 And 60 Inclusive_Over 60 |
	|48-3| Total Bookings Points 65-80| Under 65_Between 65 And 80 Inclusive_Over 80 |
	|48-4| Total Bookings Points 85-100| Under 85_Between 85 And 100 Inclusive_Over 100 |
	|48-5| Total Bookings Points 105-120| Under 105_Between 105 And 120 Inclusive_Over 120 |
	|48-6| Total Bookings Points 125-140| Under 125_Between 125 And 140 Inclusive_Over 140 |
	|48-7| Total Bookings Points 145-160| Under 145_Between 145 And 160 Inclusive_Over 160 |
	|49-1| Total Bookings Under/Over 22.5| Under 22.5_Over 22.5 |
	|49-2| Total Bookings Under/Over 42.5| Under 42.5_Over 42.5 |
	|49-3| Total Bookings Under/Over 62.5| Under 62.5_Over 62.5 |
	|49-4| Total Bookings Under/Over 82.5| Under 82.5_Over 82.5 |
	|49-5| Total Bookings Under/Over 102.5| Under 102.5_Over 102.5 |
	|49-6| Total Bookings Under/Over 122.5| Under 122.5_Over 122.5 |
	|49-7| Total Bookings Under/Over 142.5| Under 142.5_Over 142.5 |
	|50-1| Team With Most Bookings| Team1_Draw_Team2 |
	|51-1| First Team To Be Booked| Team1 _No Card_Team2  |
	|52-1| Will There Be A Red Card?| Yes_No |
	|53-1| Will Team1 Get A Red Card?| Yes_No |
	|53-2| Will Team2 Get A Red Card?| Yes_No |
	|54-1| 1st Card| Team1_No Card_Team2 |
	|54-2| 2nd Card| Team1_No Card_Team2 |
	|54-3| 3rd Card| Team1_No Card_Team2 |
	|54-4| 4th Card| Team1_No Card_Team2 |
	|54-5| 5th Card| Team1_No Card_Team2 |
	|54-6| 6th Card| Team1_No Card_Team2 |
	|54-7| 7th Card| Team1_No Card_Team2 |
	|54-8| 8th Card| Team1_No Card_Team2 |
	|54-9| 9th Card| Team1_No Card_Team2 |
	|54-10| 10th Card| Team1_No Card_Team2 |
	|54-11| 11th Card| Team1_No Card_Team2 |
	|54-12| 12th Card| Team1_No Card_Team2 |
	|54-13| 13th Card| Team1_No Card_Team2 |
	|54-14| 14th Card| Team1_No Card_Team2 |
	|54-15| 15th Card| Team1_No Card_Team2 |
	|54-16| 16th Card| Team1_No Card_Team2 |
	|54-17| 17th Card| Team1_No Card_Team2 |
	|54-18| 18th Card| Team1_No Card_Team2 |
	|54-19| 19th Card| Team1_No Card_Team2 |
	|54-20| 20th Card| Team1_No Card_Team2 |
	|54-21| 21st Card| Team1_No Card_Team2 |
	|54-22| 22nd Card| Team1_No Card_Team2 |
	|54-23| 23rd Card| Team1_No Card_Team2 |
	|54-24| 24th Card| Team1_No Card_Team2 |
	|54-25| 25th Card| Team1_No Card_Team2 |
	|54-26| 26th Card| Team1_No Card_Team2 |
	|54-27| 27th Card| Team1_No Card_Team2 |
	|54-28| 28th Card| Team1_No Card_Team2 |
	|54-29| 29th Card| Team1_No Card_Team2 |
	|54-30| 30th Card| Team1_No Card_Team2 |
	|55-1| Will There Be A Penalty Awarded?| Yes_No |
	|56-1| Will There Be A Penalty Scored?| Yes_No |
	|57-1| First Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|57-2| Second Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|57-3| Third Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|57-4| Fourth Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|57-5| Fifth Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|57-6| Sixth Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|57-7| Seventh Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|57-8| Eighth Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|57-9| Ninth Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|57-10| Tenth Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|58-1| First Team1 Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|58-2| Second Team1 Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|58-3| Third Team1 Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|58-4| Fourth Team1 Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|58-5| Fifth Team1 Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|58-6| Sixth Team1 Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|58-7| First Team2 Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|58-8| Second Team2 Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|58-9| Third Team2 Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|58-10| Fourth Team2 Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|58-11| Fifth Team2 Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|58-12| Sixth Team2 Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|59-1| Last Goalscorer| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_No Goal |
	|60-1| Anytime - Yes/No| 0 Yes_0 No |
	|60-2| Anytime - Yes/No| 0 Yes_0 No |
	|60-3| Anytime - Yes/No| 0 Yes_0 No |
	|60-4| Anytime - Yes/No| 0 Yes_0 No |
	|60-5| Anytime - Yes/No| 0 Yes_0 No |
	|60-6| Anytime - Yes/No| 0 Yes_0 No |
	|60-7| Anytime - Yes/No| 0 Yes_0 No |
	|60-8| Anytime - Yes/No| 0 Yes_0 No |
	|60-9| Anytime - Yes/No| 0 Yes_0 No |
	|60-10| Anytime - Yes/No| 0 Yes_0 No |
	|60-11| Anytime - Yes/No| 0 Yes_0 No |
	|60-12| Anytime - Yes/No| 0 Yes_0 No |
	|60-13| Anytime - Yes/No| 0 Yes_0 No |
	|60-14| Anytime - Yes/No| 0 Yes_0 No |
	|60-15| Anytime - Yes/No| 0 Yes_0 No |
	|60-16| Anytime - Yes/No| 0 Yes_0 No |
	|60-17| Anytime - Yes/No| 0 Yes_0 No |
	|60-18| Anytime - Yes/No| 0 Yes_0 No |
	|60-19| Anytime - Yes/No| 0 Yes_0 No |
	|60-20| Anytime - Yes/No| 0 Yes_0 No |
	|60-21| Anytime - Yes/No| 0 Yes_0 No |
	|60-22| Anytime - Yes/No| 0 Yes_0 No |
	|60-23| Anytime - Yes/No| 0 Yes_0 No |
	|60-24| Anytime - Yes/No| 0 Yes_0 No |
	|60-25| Anytime - Yes/No| 0 Yes_0 No |
	|60-26| Anytime - Yes/No| 0 Yes_0 No |
	|60-27| Anytime - Yes/No| 0 Yes_0 No |
	|60-28| Anytime - Yes/No| 0 Yes_0 No |
	|60-29| Anytime - Yes/No| 0 Yes_0 No |
	|60-30| Anytime - Yes/No| 0 Yes_0 No |
	|60-31| Anytime - Yes/No| 0 Yes_0 No |
	|60-32| Anytime - Yes/No| 0 Yes_0 No |
	|60-33| Anytime - Yes/No| 0 Yes_0 No |
	|60-34| Anytime - Yes/No| 0 Yes_0 No |
	|60-35| Anytime - Yes/No| 0 Yes_0 No |
	|60-36| Anytime - Yes/No| 0 Yes_0 No |
	|60-37| Anytime - Yes/No| 0 Yes_0 No |
	|60-38| Anytime - Yes/No| 0 Yes_0 No |
	|60-39| Anytime - Yes/No| 0 Yes_0 No |
	|60-40| Anytime - Yes/No| 0 Yes_0 No |
	|60-41| Anytime - Yes/No| 0 Yes_0 No |
	|60-42| Anytime - Yes/No| 0 Yes_0 No |
	|60-43| Anytime - Yes/No| 0 Yes_0 No |
	|60-44| Anytime - Yes/No| 0 Yes_0 No |
	|60-45| Anytime - Yes/No| 0 Yes_0 No |
	|60-46| Anytime - Yes/No| 0 Yes_0 No |
	|60-47| Anytime - Yes/No| 0 Yes_0 No |
	|60-48| Anytime - Yes/No| 0 Yes_0 No |
	|60-49| Anytime - Yes/No| 0 Yes_0 No |
	|60-50| Anytime - Yes/No| 0 Yes_0 No |
	|60-51| Anytime - Yes/No| 0 Yes_0 No |
	|60-52| Anytime - Yes/No| 0 Yes_0 No |
	|60-53| Anytime - Yes/No| 0 Yes_0 No |
	|60-54| Anytime - Yes/No| 0 Yes_0 No |
	|60-55| Anytime - Yes/No| 0 Yes_0 No |
	|60-56| Anytime - Yes/No| 0 Yes_0 No |
	|60-57| Anytime - Yes/No| 0 Yes_0 No |
	|60-58| Anytime - Yes/No| 0 Yes_0 No |
	|60-59| Anytime - Yes/No| 0 Yes_0 No |
	|60-60| Anytime - Yes/No| 0 Yes_0 No |
	|60-61| Anytime - Yes/No| 0 Yes_0 No |
	|60-62| Anytime - Yes/No| 0 Yes_0 No |
	|60-63| Anytime - Yes/No| 0 Yes_0 No |
	|60-64| Anytime - Yes/No| 0 Yes_0 No |
	|60-65| Anytime - Yes/No| 0 Yes_0 No |
	|60-66| Anytime - Yes/No| 0 Yes_0 No |
	|60-67| Anytime - Yes/No| 0 Yes_0 No |
	|60-68| Anytime - Yes/No| 0 Yes_0 No |
	|60-69| Anytime - Yes/No| 0 Yes_0 No |
	|60-70| Anytime - Yes/No| 0 Yes_0 No |
	|60-71| Anytime - Yes/No| 0 Yes_0 No |
	|60-72| Anytime - Yes/No| 0 Yes_0 No |
	|60-73| Anytime - Yes/No| 0 Yes_0 No |
	|60-74| Anytime - Yes/No| 0 Yes_0 No |
	|60-75| Anytime - Yes/No| 0 Yes_0 No |
	|60-76| Anytime - Yes/No| 0 Yes_0 No |
	|60-77| Anytime - Yes/No| 0 Yes_0 No |
	|60-78| Anytime - Yes/No| 0 Yes_0 No |
	|60-79| Anytime - Yes/No| 0 Yes_0 No |
	|60-80| Anytime - Yes/No| 0 Yes_0 No |
	|61-1| Brace - Yes/No| 0 Yes_0 No |
	|61-2| Brace - Yes/No| 0 Yes_0 No |
	|61-3| Brace - Yes/No| 0 Yes_0 No |
	|61-4| Brace - Yes/No| 0 Yes_0 No |
	|61-5| Brace - Yes/No| 0 Yes_0 No |
	|61-6| Brace - Yes/No| 0 Yes_0 No |
	|61-7| Brace - Yes/No| 0 Yes_0 No |
	|61-8| Brace - Yes/No| 0 Yes_0 No |
	|61-9| Brace - Yes/No| 0 Yes_0 No |
	|61-10| Brace - Yes/No| 0 Yes_0 No |
	|61-11| Brace - Yes/No| 0 Yes_0 No |
	|61-12| Brace - Yes/No| 0 Yes_0 No |
	|61-13| Brace - Yes/No| 0 Yes_0 No |
	|61-14| Brace - Yes/No| 0 Yes_0 No |
	|61-15| Brace - Yes/No| 0 Yes_0 No |
	|61-16| Brace - Yes/No| 0 Yes_0 No |
	|61-17| Brace - Yes/No| 0 Yes_0 No |
	|61-18| Brace - Yes/No| 0 Yes_0 No |
	|61-19| Brace - Yes/No| 0 Yes_0 No |
	|61-20| Brace - Yes/No| 0 Yes_0 No |
	|61-21| Brace - Yes/No| 0 Yes_0 No |
	|61-22| Brace - Yes/No| 0 Yes_0 No |
	|61-23| Brace - Yes/No| 0 Yes_0 No |
	|61-24| Brace - Yes/No| 0 Yes_0 No |
	|61-25| Brace - Yes/No| 0 Yes_0 No |
	|61-26| Brace - Yes/No| 0 Yes_0 No |
	|61-27| Brace - Yes/No| 0 Yes_0 No |
	|61-28| Brace - Yes/No| 0 Yes_0 No |
	|61-29| Brace - Yes/No| 0 Yes_0 No |
	|61-30| Brace - Yes/No| 0 Yes_0 No |
	|61-31| Brace - Yes/No| 0 Yes_0 No |
	|61-32| Brace - Yes/No| 0 Yes_0 No |
	|61-33| Brace - Yes/No| 0 Yes_0 No |
	|61-34| Brace - Yes/No| 0 Yes_0 No |
	|61-35| Brace - Yes/No| 0 Yes_0 No |
	|61-36| Brace - Yes/No| 0 Yes_0 No |
	|61-37| Brace - Yes/No| 0 Yes_0 No |
	|61-38| Brace - Yes/No| 0 Yes_0 No |
	|61-39| Brace - Yes/No| 0 Yes_0 No |
	|61-40| Brace - Yes/No| 0 Yes_0 No |
	|61-41| Brace - Yes/No| 0 Yes_0 No |
	|61-42| Brace - Yes/No| 0 Yes_0 No |
	|61-43| Brace - Yes/No| 0 Yes_0 No |
	|61-44| Brace - Yes/No| 0 Yes_0 No |
	|61-45| Brace - Yes/No| 0 Yes_0 No |
	|61-46| Brace - Yes/No| 0 Yes_0 No |
	|61-47| Brace - Yes/No| 0 Yes_0 No |
	|61-48| Brace - Yes/No| 0 Yes_0 No |
	|61-49| Brace - Yes/No| 0 Yes_0 No |
	|61-50| Brace - Yes/No| 0 Yes_0 No |
	|61-51| Brace - Yes/No| 0 Yes_0 No |
	|61-52| Brace - Yes/No| 0 Yes_0 No |
	|61-53| Brace - Yes/No| 0 Yes_0 No |
	|61-54| Brace - Yes/No| 0 Yes_0 No |
	|61-55| Brace - Yes/No| 0 Yes_0 No |
	|61-56| Brace - Yes/No| 0 Yes_0 No |
	|61-57| Brace - Yes/No| 0 Yes_0 No |
	|61-58| Brace - Yes/No| 0 Yes_0 No |
	|61-59| Brace - Yes/No| 0 Yes_0 No |
	|61-60| Brace - Yes/No| 0 Yes_0 No |
	|61-61| Brace - Yes/No| 0 Yes_0 No |
	|61-62| Brace - Yes/No| 0 Yes_0 No |
	|61-63| Brace - Yes/No| 0 Yes_0 No |
	|61-64| Brace - Yes/No| 0 Yes_0 No |
	|61-65| Brace - Yes/No| 0 Yes_0 No |
	|61-66| Brace - Yes/No| 0 Yes_0 No |
	|61-67| Brace - Yes/No| 0 Yes_0 No |
	|61-68| Brace - Yes/No| 0 Yes_0 No |
	|61-69| Brace - Yes/No| 0 Yes_0 No |
	|61-70| Brace - Yes/No| 0 Yes_0 No |
	|61-71| Brace - Yes/No| 0 Yes_0 No |
	|61-72| Brace - Yes/No| 0 Yes_0 No |
	|61-73| Brace - Yes/No| 0 Yes_0 No |
	|61-74| Brace - Yes/No| 0 Yes_0 No |
	|61-75| Brace - Yes/No| 0 Yes_0 No |
	|61-76| Brace - Yes/No| 0 Yes_0 No |
	|61-77| Brace - Yes/No| 0 Yes_0 No |
	|61-78| Brace - Yes/No| 0 Yes_0 No |
	|61-79| Brace - Yes/No| 0 Yes_0 No |
	|61-80| Brace - Yes/No| 0 Yes_0 No |
	|62-1| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-2| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-3| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-4| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-5| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-6| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-7| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-8| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-9| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-10| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-11| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-12| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-13| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-14| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-15| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-16| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-17| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-18| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-19| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-20| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-21| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-22| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-23| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-24| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-25| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-26| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-27| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-28| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-29| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-30| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-31| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-32| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-33| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-34| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-35| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-36| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-37| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-38| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-39| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-40| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-41| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-42| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-43| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-44| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-45| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-46| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-47| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-48| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-49| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-50| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-51| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-52| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-53| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-54| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-55| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-56| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-57| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-58| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-59| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-60| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-61| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-62| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-63| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-64| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-65| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-66| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-67| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-68| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-69| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-70| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-71| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-72| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-73| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-74| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-75| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-76| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-77| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-78| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-79| Hat-trick - Yes/No| 0 Yes_0 No |
	|62-80| Hat-trick - Yes/No| 0 Yes_0 No |
	|63-1| 1st Goalscorer Shirt - Under/Over 6.5| Under 6.5_Over 6.5_No Goal |
	|63-2| 2nd Goalscorer Shirt - Under/Over 6.5| Under 6.5_Over 6.5_No Goal |
	|63-3| 3rd Goalscorer Shirt - Under/Over 6.5| Under 6.5_Over 6.5_No Goal |
	|63-4| 4th Goalscorer Shirt - Under/Over 6.5| Under 6.5_Over 6.5_No Goal |
	|63-5| 5th Goalscorer Shirt - Under/Over 6.5| Under 6.5_Over 6.5_No Goal |
	|63-6| 6th Goalscorer Shirt - Under/Over 6.5| Under 6.5_Over 6.5_No Goal |
	|63-7| 1st Goalscorer Shirt - Under/Over 8.5| Under 8.5_Over 8.5_No Goal |
	|63-8| 2nd Goalscorer Shirt - Under/Over 8.5| Under 8.5_Over 8.5_No Goal |
	|63-9| 3rd Goalscorer Shirt - Under/Over 8.5| Under 8.5_Over 8.5_No Goal |
	|63-10| 4th Goalscorer Shirt - Under/Over 8.5| Under 8.5_Over 8.5_No Goal |
	|63-11| 5th Goalscorer Shirt - Under/Over 8.5| Under 8.5_Over 8.5_No Goal |
	|63-12| 6th Goalscorer Shirt - Under/Over 8.5| Under 8.5_Over 8.5_No Goal |
	|63-13| 1st Goalscorer Shirt - Under/Over 10.5| Under 10.5_Over 10.5_No Goal |
	|63-14| 2nd Goalscorer Shirt - Under/Over 10.5| Under 10.5_Over 10.5_No Goal |
	|63-15| 3rd Goalscorer Shirt - Under/Over 10.5| Under 10.5_Over 10.5_No Goal |
	|63-16| 4th Goalscorer Shirt - Under/Over 10.5| Under 10.5_Over 10.5_No Goal |
	|63-17| 5th Goalscorer Shirt - Under/Over 10.5| Under 10.5_Over 10.5_No Goal |
	|63-18| 6th Goalscorer Shirt - Under/Over 10.5| Under 10.5_Over 10.5_No Goal |
	|63-19| 1st Goalscorer Shirt - Under/Over 12.5| Under 12.5_Over 12.5_No Goal |
	|63-20| 2nd Goalscorer Shirt - Under/Over 12.5| Under 12.5_Over 12.5_No Goal |
	|63-21| 3rd Goalscorer Shirt - Under/Over 12.5| Under 12.5_Over 12.5_No Goal |
	|63-22| 4th Goalscorer Shirt - Under/Over 12.5| Under 12.5_Over 12.5_No Goal |
	|63-23| 5th Goalscorer Shirt - Under/Over 12.5| Under 12.5_Over 12.5_No Goal |
	|63-24| 6th Goalscorer Shirt - Under/Over 12.5| Under 12.5_Over 12.5_No Goal |
	|63-25| 1st Goalscorer Shirt - Under/Over 14.5| Under 14.5_Over 14.5_No Goal |
	|63-26| 2nd Goalscorer Shirt - Under/Over 14.5| Under 14.5_Over 14.5_No Goal |
	|63-27| 3rd Goalscorer Shirt - Under/Over 14.5| Under 14.5_Over 14.5_No Goal |
	|63-28| 4th Goalscorer Shirt - Under/Over 14.5| Under 14.5_Over 14.5_No Goal |
	|63-29| 5th Goalscorer Shirt - Under/Over 14.5| Under 14.5_Over 14.5_No Goal |
	|63-30| 6th Goalscorer Shirt - Under/Over 14.5| Under 14.5_Over 14.5_No Goal |
	|63-31| 1st Goalscorer Shirt - Under/Over 16.5| Under 16.5_Over 16.5_No Goal |
	|63-32| 2nd Goalscorer Shirt - Under/Over 16.5| Under 16.5_Over 16.5_No Goal |
	|63-33| 3rd Goalscorer Shirt - Under/Over 16.5| Under 16.5_Over 16.5_No Goal |
	|63-34| 4th Goalscorer Shirt - Under/Over 16.5| Under 16.5_Over 16.5_No Goal |
	|63-35| 5th Goalscorer Shirt - Under/Over 16.5| Under 16.5_Over 16.5_No Goal |
	|63-36| 6th Goalscorer Shirt - Under/Over 16.5| Under 16.5_Over 16.5_No Goal |
	|63-37| 1st Goalscorer Shirt - Under/Over 18.5| Under 18.5_Over 18.5_No Goal |
	|63-38| 2nd Goalscorer Shirt - Under/Over 18.5| Under 18.5_Over 18.5_No Goal |
	|63-39| 3rd Goalscorer Shirt - Under/Over 18.5| Under 18.5_Over 18.5_No Goal |
	|63-40| 4th Goalscorer Shirt - Under/Over 18.5| Under 18.5_Over 18.5_No Goal |
	|63-41| 5th Goalscorer Shirt - Under/Over 18.5| Under 18.5_Over 18.5_No Goal |
	|63-42| 6th Goalscorer Shirt - Under/Over 18.5| Under 18.5_Over 18.5_No Goal |
	|64-1| Winner Of Tie| Team1_Team2 |
	|65-1| Winner And Match Portion| Team1 Normal Time_Team2 Normal Time_Team1 Extra Time_Team2 Extra Time_Team1 Penalties_Team2 Penalties |
	|66-1| Double Chance| Team1 - Draw_Team2 - Draw_Team1 - Team2 |
	|67-1| Anytime Goalscorer| Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0 |
	|68-1| Brace Goalscorer| Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0 |
	|69-1| Hat-trick Goalscorer| Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0 |
	|70-1| 1st Half Goals - Under/Over 0.5| Under 0.5_Over 0.5 |
	|70-2| 1st Half Goals - Under/Over 1.5| Under 1.5_Over 1.5 |
	|70-3| 1st Half Goals - Under/Over 2.5| Under 2.5_Over 2.5 |
	|70-4| 1st Half Goals - Under/Over 3.5| Under 3.5_Over 3.5 |
	|70-5| 1st Half Goals - Under/Over 4.5| Under 4.5_Over 4.5 |
	|70-6| 1st Half Goals - Under/Over 5.5| Under 5.5_Over 5.5 |
	|70-7| 1st Half Goals - Under/Over 6.5| Under 6.5_Over 6.5 |
	|73-1| Team1 Win Both Havles| Yes_No |
	|73-2| Team2 Win Both Havles| Yes_No |
	|74-1| Team To Score Last Goal| Team1_Team2_Not Scored |
	|75-1| 1st Goal own goal?| Yes_No |
	|75-2| 2nd Goal own goal?| Yes_No |
	|75-3| 3rd Goal own goal?| Yes_No |
	|75-4| 4th Goal own goal?| Yes_No |
	|75-5| 5th Goal own goal?| Yes_No |
	|75-6| 6th Goal own goal?| Yes_No |
	|75-7| 7th Goal own goal?| Yes_No |
	|75-8| 8th Goal own goal?| Yes_No |
	|75-9| 9th Goal own goal?| Yes_No |
	|75-10| 10th Goal own goal?| Yes_No |
	|76-1| Last goal own goal?| Yes_No |
	|77-1| Own Goal in 90 minutes?| Yes_No |
	|78-1| Winrush| Team1 and Yes_Team1 and No_Team2 and Yes_Team2 and No_Draw and Yes_Draw and No |
	|36-2| Total Corners 4 - 6| Under 4_Between 4 And 6 Inclusive_Over 6 |
	|36-3| Total Corners 7 - 9| Under 7_Between 7 And 9 Inclusive_Over 9 |
	|36-4| Total Corners 13 - 15| Under 13_Between 13 And 15 Inclusive_Over 15 |
	|36-5| Total Corners 16 - 18| Under 16_Between 16 And 18 Inclusive_Over 18 |
	|79-1| Total Team1 Corners 0.5| Under 0.5_Over 0.5 |
	|79-2| Total Team1 Corners 1.5| Under 1.5_Over 1.5 |
	|79-3| Total Team1 Corners 2.5| Under 2.5_Over 2.5 |
	|79-4| Total Team1 Corners 3.5| Under 3.5_Over 3.5 |
	|79-5| Total Team1 Corners 4.5| Under 4.5_Over 4.5 |
	|79-6| Total Team1 Corners 5.5| Under 5.5_Over 5.5 |
	|79-7| Total Team1 Corners 6.5| Under 6.5_Over 6.5 |
	|79-8| Total Team1 Corners 7.5| Under 7.5_Over 7.5 |
	|79-9| Total Team1 Corners 8.5| Under 8.5_Over 8.5 |
	|79-10| Total Team1 Corners 9.5| Under 9.5_Over 9.5 |
	|79-11| Total Team1 Corners 10.5| Under 10.5_Over 10.5 |
	|79-12| Total Team1 Corners 11.5| Under 11.5_Over 11.5 |
	|79-13| Total Team1 Corners 12.5| Under 12.5_Over 12.5 |
	|79-14| Total Team1 Corners 13.5| Under 13.5_Over 13.5 |
	|79-15| Total Team1 Corners 14.5| Under 14.5_Over 14.5 |
	|79-16| Total Team1 Corners 15.5| Under 15.5_Over 15.5 |
	|79-17| Total Team1 Corners 16.5| Under 16.5_Over 16.5 |
	|79-18| Total Team1 Corners 17.5| Under 17.5_Over 17.5 |
	|79-19| Total Team1 Corners 18.5| Under 18.5_Over 18.5 |
	|79-20| Total Team1 Corners 19.5| Under 19.5_Over 19.5 |
	|79-21| Total Team1 Corners 20.5| Under 20.5_Over 20.5 |
	|79-22| Total Team2 Corners 0.5| Under 0.5_Over 0.5 |
	|79-23| Total Team2 Corners 1.5| Under 1.5_Over 1.5 |
	|79-24| Total Team2 Corners 2.5| Under 2.5_Over 2.5 |
	|79-25| Total Team2 Corners 3.5| Under 3.5_Over 3.5 |
	|79-26| Total Team2 Corners 4.5| Under 4.5_Over 4.5 |
	|79-27| Total Team2 Corners 5.5| Under 5.5_Over 5.5 |
	|79-28| Total Team2 Corners 6.5| Under 6.5_Over 6.5 |
	|79-29| Total Team2 Corners 7.5| Under 7.5_Over 7.5 |
	|79-30| Total Team2 Corners 8.5| Under 8.5_Over 8.5 |
	|79-31| Total Team2 Corners 9.5| Under 9.5_Over 9.5 |
	|79-32| Total Team2 Corners 10.5| Under 10.5_Over 10.5 |
	|79-33| Total Team2 Corners 11.5| Under 11.5_Over 11.5 |
	|79-34| Total Team2 Corners 12.5| Under 12.5_Over 12.5 |
	|79-35| Total Team2 Corners 13.5| Under 13.5_Over 13.5 |
	|79-36| Total Team2 Corners 14.5| Under 14.5_Over 14.5 |
	|79-37| Total Team2 Corners 15.5| Under 15.5_Over 15.5 |
	|79-38| Total Team2 Corners 16.5| Under 16.5_Over 16.5 |
	|79-39| Total Team2 Corners 17.5| Under 17.5_Over 17.5 |
	|79-40| Total Team2 Corners 18.5| Under 18.5_Over 18.5 |
	|79-41| Total Team2 Corners 19.5| Under 19.5_Over 19.5 |
	|79-42| Total Team2 Corners 20.5| Under 20.5_Over 20.5 |
	|80-1| Team1 Corner Bands 2 - 3| Under 2_Between 2 And 3 Inclusive_Over 3 |
	|80-2| Team1 Corner Bands 4 - 5| Under 4_Between 4 And 5 Inclusive_Over 5 |
	|80-3| Team1 Corner Bands 6 - 7| Under 6_Between 6 And 7 Inclusive_Over 7 |
	|80-4| Team1 Corner Bands 8 - 9| Under 8_Between 8 And 9 Inclusive_Over 9 |
	|80-5| Team1 Corner Bands 10 - 11| Under 10_Between 10 And 11 Inclusive_Over 11 |
	|80-6| Team2 Corner Bands 2 - 3| Under 2_Between 2 And 3 Inclusive_Over 3 |
	|80-7| Team2 Corner Bands 4 - 5| Under 4_Between 4 And 5 Inclusive_Over 5 |
	|80-8| Team2 Corner Bands 6 - 7| Under 6_Between 6 And 7 Inclusive_Over 7 |
	|80-9| Team2 Corner Bands 8 - 9| Under 8_Between 8 And 9 Inclusive_Over 9 |
	|80-10| Team2 Corner Bands 10 - 11| Under 10_Between 10 And 11 Inclusive_Over 11 |
	|81-1| 1st Half Red Card| Yes_No |
	|81-2| 2nd Half Red Card| Yes_No |
	|82-1| 1st Half Penalty Awarded| Yes_No |
	|82-2| 2nd Half Penalty Awarded| Yes_No |
	|83-1| Total Team1 Goals Under/Over 0.5| Under 0.5_Over 0.5 |
	|83-2| Total Team1 Goals Under/Over 1.5| Under 1.5_Over 1.5 |
	|83-3| Total Team1 Goals Under/Over 2.5| Under 2.5_Over 2.5 |
	|83-4| Total Team1 Goals Under/Over 3.5| Under 3.5_Over 3.5 |
	|83-5| Total Team1 Goals Under/Over 4.5| Under 4.5_Over 4.5 |
	|83-6| Total Team1 Goals Under/Over 5.5| Under 5.5_Over 5.5 |
	|83-7| Total Team1 Goals Under/Over 6.5| Under 6.5_Over 6.5 |
	|83-8| Total Team1 Goals Under/Over 7.5| Under 7.5_Over 7.5 |
	|83-9| Total Team1 Goals Under/Over 8.5| Under 8.5_Over 8.5 |
	|83-10| Total Team1 Goals Under/Over 9.5| Under 9.5_Over 9.5 |
	|83-11| Total Team2 Goals Under/Over 0.5| Under 0.5_Over 0.5 |
	|83-12| Total Team2 Goals Under/Over 1.5| Under 1.5_Over 1.5 |
	|83-13| Total Team2 Goals Under/Over 2.5| Under 2.5_Over 2.5 |
	|83-14| Total Team2 Goals Under/Over 3.5| Under 3.5_Over 3.5 |
	|83-15| Total Team2 Goals Under/Over 4.5| Under 4.5_Over 4.5 |
	|83-16| Total Team2 Goals Under/Over 5.5| Under 5.5_Over 5.5 |
	|83-17| Total Team2 Goals Under/Over 6.5| Under 6.5_Over 6.5 |
	|83-18| Total Team2 Goals Under/Over 7.5| Under 7.5_Over 7.5 |
	|83-19| Total Team2 Goals Under/Over 8.5| Under 8.5_Over 8.5 |
	|83-20| Total Team2 Goals Under/Over 9.5| Under 9.5_Over 9.5 |
	|84-1| 2nd Half Result| Team1_Draw_Team2 |
	|85-1| A Goal to be Scored in 1 - 15 Minutes| Yes_No |
	|85-2| A Goal to be Scored in 16 - 30 Minutes| Yes_No |
	|85-3| A Goal to be Scored in 31 - 45 Minutes| Yes_No |
	|85-4| A Goal to be Scored in 46 - 60 Minutes| Yes_No |
	|85-5| A Goal to be Scored in 61 - 75 Minutes| Yes_No |
	|85-6| A Goal to be Scored in 76 - 90 Minutes| Yes_No |
	|86-1| Team1 to score a Goal in 1 - 15 Minutes| Yes_No |
	|86-2| Team1 to score a Goal in 16 - 30 Minutes| Yes_No |
	|86-3| Team1 to score a Goal in 31 - 45 Minutes| Yes_No |
	|86-4| Team1 to score a Goal in 46 - 60 Minutes| Yes_No |
	|86-5| Team1 to score a Goal in 61 - 75 Minutes| Yes_No |
	|86-6| Team1 to score a Goal in 76 - 90 Minutes| Yes_No |
	|86-7| Team2 to score a Goal in 1 - 15 Minutes| Yes_No |
	|86-8| Team2 to score a Goal in 16 - 30 Minutes| Yes_No |
	|86-9| Team2 to score a Goal in 31 - 45 Minutes| Yes_No |
	|86-10| Team2 to score a Goal in 46 - 60 Minutes| Yes_No |
	|86-11| Team2 to score a Goal in 61 - 75 Minutes| Yes_No |
	|86-12| Team2 to score a Goal in 76 - 90 Minutes| Yes_No |
	|87-1| Both Teams Score In 1st Half| Yes_No |
	|87-2| Both Teams Score In 2nd Half| Yes_No |
	|88-1| Both Teams To Score In Both Halves| Yes_No |
	|89-1| Match Winner + Goals| Team1 And Under 2.5 Goals_Team1 And Over 2.5 Goals_Draw And Under 2.5 Goals_Draw And Over 2.5 Goals_Team2 And Under 2.5 Goals_Team2 And Over 2.5 Goals |
	|90-1| Match Winning Margin| Score Draw_Exactly 1 Goal_Exactly 2 Goals_3 Goals Or More |
	|91-1| Team1 To Win Either Half| Yes_No |
	|91-2| Team2 To Win Either Half| Yes_No |
	|92-1| Winning Team Between 1 And 15 Minutes| Team1_Match Drawn_Team2 |
	|92-2| Winning Team Between 16 And 30 Minutes| Team1_Match Drawn_Team2 |
	|92-3| Winning Team Between 31 And 45 Minutes| Team1_Match Drawn_Team2 |
	|92-4| Winning Team Between 46 And 60 Minutes| Team1_Match Drawn_Team2 |
	|92-5| Winning Team Between 61 And 75 Minutes| Team1_Match Drawn_Team2 |
	|92-6| Winning Team Between 76 And 90 Minutes| Team1_Match Drawn_Team2 |
	|93-1| Player To Score In Both Halves| Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0 |
	|94-1| Player To Score In Minutes 1-10| Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0 |
	|95-1| Team1 - Anytime Wincast Win| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0 |
	|95-2| Team2 - Anytime Wincast Win| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0 |
	|95-3| Team1 - Anytime Wincast Lose| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0 |
	|95-4| Team2 - Anytime Wincast Lose| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0 |
	|95-5| Team1 - Anytime Wincast Draw| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0 |
	|95-6| Team2 - Anytime Wincast Draw| 0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0 |
	|101-1| ET: Winner| Team1_Draw_Team2 |
	|103-1| ET: Total Goals Under/Over 0.5| Under 0.5_Over 0.5 |
	|103-2| ET: Total Goals Under/Over 1.5| Under 1.5_Over 1.5 |
	|103-3| ET: Total Goals Under/Over 2.5| Under 2.5_Over 2.5 |
	|104-1| ET: Total Goals| Exactly 0_Exactly 1_2 Goals Or More |
	|105-1| ET: Corners Under/Over 0.5| Under 0.5_Over 0.5 |
	|105-2| ET: Corners Under/Over 1.5| Under 1.5_Over 1.5 |
	|105-3| ET: Corners Under/Over 2.5| Under 2.5_Over 2.5 |
	|105-4| ET: Corners Under/Over 3.5| Under 3.5_Over 3.5 |
	|105-5| ET: Corners Under/Over 4.5| Under 4.5_Over 4.5 |
	|105-6| ET: Corners Under/Over 5.5| Under 5.5_Over 5.5 |
	|106-1| ET: Corners Exact Middle 1| Under 1_Exactly 1_Over 1 |
	|106-2| ET: Corners Exact Middle 2| Under 2_Exactly 2_Over 2 |
	|106-3| ET: Corners Exact Middle 3| Under 3_Exactly 3_Over 3 |
	|106-4| ET: Corners Exact Middle 4| Under 4_Exactly 4_Over 4 |
	|106-5| ET: Corners Exact Middle 5| Under 5_Exactly 5_Over 5 |
	|107-1| ET: Total Bookings Points  20  | Under 20_Exactly 20_Over 20 |
	|107-2| ET: Total Bookings Points  25 and 30 | Under 25_Between 25 And 30 Inclusive_Over 30 |
	|107-3| ET: Total Bookings Points  35 and 40 | Under 35_Between 35 And 40 Inclusive_Over 40 |
	|108-1| ET: 1st Match Goal Minutes| Goal 1 Between 1 And 10 Minutes_Goal 1 Between 11 And 20 Minutes_Goal 1 Between 21 And 30 Minutes_Goal 1 No Goal |
	|108-2| ET: 2nd Match Goal Minutes| Goal 2 Between 1 And 10 Minutes_Goal 2 Between 11 And 20 Minutes_Goal 2 Between 21 And 30 Minutes_Goal 2 No Goal |
	|108-3| ET: 3rd Match Goal Minutes| Goal 3 Between 1 And 10 Minutes_Goal 3 Between 11 And 20 Minutes_Goal 3 Between 21 And 30 Minutes_Goal 3 No Goal |
	|109-1| ET: Time Of Team1 Goal 1| Goal 1 Between 1 And 10 Minutes_Goal 1 Between 11 And 20 Minutes_Goal 1 Between 21 And 30 Minutes_Goal 1 No Goal |
	|109-2| ET: Time Of Team1 Goal 2| Goal 2 Between 1 And 10 Minutes_Goal 2 Between 11 And 20 Minutes_Goal 2 Between 21 And 30 Minutes_Goal 2 No Goal |
	|109-3| ET: Time Of Team1 Goal 3| Goal 3 Between 1 And 10 Minutes_Goal 3 Between 11 And 20 Minutes_Goal 3 Between 21 And 30 Minutes_Goal 3 No Goal |
	|109-4| ET: Time Of Team2 Goal 1| Goal 1 Between 1 And 10 Minutes_Goal 1 Between 11 And 20 Minutes_Goal 1 Between 21 And 30 Minutes_Goal 1 No Goal |
	|109-5| ET: Time Of Team2 Goal 2| Goal 2 Between 1 And 10 Minutes_Goal 2 Between 11 And 20 Minutes_Goal 2 Between 21 And 30 Minutes_Goal 2 No Goal |
	|109-6| ET: Time Of Team2 Goal 3| Goal 3 Between 1 And 10 Minutes_Goal 3 Between 11 And 20 Minutes_Goal 3 Between 21 And 30 Minutes_Goal 3 No Goal |
	|110-1| ET: Team1 To Score| Yes_No |
	|110-2| ET: Team2 To Score| Yes_No |
	|111-1| ET: Number Of Teams To Score| None_One_Both |
	|112-1| ET: Half Time/Full Time| Team1 And Team1_Draw And Team1_Team2 And Team1_Team1 And Draw_Draw And Draw_Team2 And Draw_Team1 And Team2_Draw And Team2_Team2 And Team2 |
	|113-1| ET: Correct Score| Draw  0 - 0_Draw  1 - 1_Draw  2 - 2_Draw Any Other Score  - _Team1  1 - 0_Team1  2 - 0_Team1  2 - 1_Team1 Any Other Score  - _Team2  1 - 0_Team2  2 - 0_Team2  2 - 1_Team2 Any Other Score  -  |
	|114-1| ET: Red Card| Yes_No |
	|115-1| ET: Half Time Result| Team1_Draw_Team2 |
	|116-1| ET: Half Time Correct Score| Draw  0 - 0_Draw  1 - 1_Draw  2 - 2_Draw Any Other Score  - _Team1  1 - 0_Team1  2 - 0_Team1  2 - 1_Team1 Any Other Score  - _Team2  1 - 0_Team2  2 - 0_Team2  2 - 1_Team2 Any Other Score  -  |
	|117-1| ET: Half Time Total Goals Under/Over 0.5| Under 0.5_Over 0.5 |
	|117-2| ET: Half Time Total Goals Under/Over 1.5| Under 1.5_Over 1.5 |
	|117-3| ET: Half Time Total Goals Under/Over 2.5| Under 2.5_Over 2.5 |
	|118-1| ET: 1st Goal| Team1_Team2_No Goal |
	|118-2| ET: 2nd Goal| Team1_Team2_No Goal |
	|118-3| ET: 3rd Goal| Team1_Team2_No Goal |
	|118-4| ET: 4th Goal| Team1_Team2_No Goal |
	|118-5| ET: 5th Goal| Team1_Team2_No Goal |
	|119-1| ET: Player To Score 1st Goal| Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_No Goal |
	|119-2| ET: Player To Score 2nd Goal| Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_No Goal |
	|119-3| ET: Player To Score 3rd Goal| Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_No Goal |
	|119-4| ET: Player To Score 4th Goal| Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_No Goal |
	|119-5| ET: Player To Score 5th Goal| Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_No Goal |
	|119-6| ET: Player To Score 6th Goal| Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team1 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_Team2 - 0_No Goal |
	|201-1| Penalty Shootout Winner| Team1_Team2 |
	|202-1| Total Penalties Taken Between 8.5 and 12.5| Under 8.5_Between 8.5 And 12.5 Inclusive_Over 12.5 |
	|203-1| Total Penalties Scored Between 6.5 and 8.5| Under 6.5_Between 6.5 And 8.5 Inclusive_Over 8.5 |
	|204-1| Penalties Until A Miss| 1 or 2_3 or 4_5 or 6_7 or 8_9 or More |
	|205-1| Penalty 1 Scored?| Yes_No |
	|205-2| Penalty 2 Scored?| Yes_No |
	|205-3| Penalty 3 Scored?| Yes_No |
	|205-4| Penalty 4 Scored?| Yes_No |
	|205-5| Penalty 5 Scored?| Yes_No |
	|205-6| Penalty 6 Scored?| Yes_No |
	|205-7| Penalty 7 Scored?| Yes_No |
	|205-8| Penalty 8 Scored?| Yes_No |
	|205-9| Penalty 9 Scored?| Yes_No |
	|205-10| Penalty 10 Scored?| Yes_No |
	|205-11| Penalty 11 Scored?| Yes_No |
	|205-12| Penalty 12 Scored?| Yes_No |
	|205-13| Penalty 13 Scored?| Yes_No |
	|205-14| Penalty 14 Scored?| Yes_No |
	|205-15| Penalty 15 Scored?| Yes_No |
	|205-16| Penalty 16 Scored?| Yes_No |
	|205-17| Penalty 17 Scored?| Yes_No |
	|205-18| Penalty 18 Scored?| Yes_No |
	|205-19| Penalty 19 Scored?| Yes_No |
	|205-20| Penalty 20 Scored?| Yes_No |
	|205-21| Penalty 21 Scored?| Yes_No |
	|205-22| Penalty 22 Scored?| Yes_No |
	|205-23| Penalty 23 Scored?| Yes_No |
	|205-24| Penalty 24 Scored?| Yes_No |
	|205-25| Penalty 25 Scored?| Yes_No |
	|205-26| Penalty 26 Scored?| Yes_No |
	|205-27| Penalty 27 Scored?| Yes_No |
	|205-28| Penalty 28 Scored?| Yes_No |
	|205-29| Penalty 29 Scored?| Yes_No |
	|205-30| Penalty 30 Scored?| Yes_No |
	|205-31| Penalty 31 Scored?| Yes_No |
	|205-32| Penalty 32 Scored?| Yes_No |
	|205-33| Penalty 33 Scored?| Yes_No |
	|205-34| Penalty 34 Scored?| Yes_No |
	|205-35| Penalty 35 Scored?| Yes_No |
	|205-36| Penalty 36 Scored?| Yes_No |
	|205-37| Penalty 37 Scored?| Yes_No |
	|205-38| Penalty 38 Scored?| Yes_No |
	|205-39| Penalty 39 Scored?| Yes_No |
	|205-40| Penalty 40 Scored?| Yes_No |
	|205-41| Penalty 41 Scored?| Yes_No |
	|205-42| Penalty 42 Scored?| Yes_No |
	|205-43| Penalty 43 Scored?| Yes_No |
	|205-44| Penalty 44 Scored?| Yes_No |
	|205-45| Penalty 45 Scored?| Yes_No |
	|205-46| Penalty 46 Scored?| Yes_No |
	|205-47| Penalty 47 Scored?| Yes_No |
	|205-48| Penalty 48 Scored?| Yes_No |
	|205-49| Penalty 49 Scored?| Yes_No |
	|205-50| Penalty 50 Scored?| Yes_No |

