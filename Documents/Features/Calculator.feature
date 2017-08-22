Feature: Calculator Testing

@Regression @SIT

Scenario: Scenario1 Add two numbers 
	Add two simple numbers and show the result 

       Given I have entered "3" into the calculator 
       And I have pressed the Plus button
       And I have also entered "2" into the calculator
       When I press the Calculate button
       Then the result should be "5" on the screen
@ST 

Scenario: Scenario2 Subtract two numbers 
	Subtract two simple numbers and show the result 

       Given I have entered "6" into the calculator 
       And I have pressed the Minus button
       And I have also entered "3" into the calculator
       When I press the Calculate button
       Then the result should be "3" on the screen

@SIT 


Scenario Outline: eating
  Given there are <start> cucumbers
  When I eat <eat> cucumbers
  Then I should have <left> cucumbers

  Examples:
|start|eat|left|
|12   |5  |7   |
|20   |5  |15  |
|33   |22 |11  |
|10   |5  |5   |

