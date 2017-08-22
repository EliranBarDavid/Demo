Feature: Simple Calculator Sum
       In order to avoid silly mistakes
       As a math idiot
       I want to be told the sum of two numbers

@Sanity @Regression
    
Scenario: Open Calculator
       Given I have entered the calculator URL in my browser
       Then the result should Amazing Calculator visible

Scenario: Add two numbers 
	Add two simple numbers and show the sum 

       Given I have entered "3" into the calculator 
       And I have pressed the Plus button
       And I have also entered "2" into the calculator
       When I press Calculate button
       Then the result should be "5" on the screen


@Sanity @Regression

Scenario: Add Three numbers
       Given I have entered "1" into the calculator 
       And I have pressed the Plus button
       And I have also entered "2" into the calculator
       And I have pressed the Plus button
       And I have also entered "3" into the calculator
       When I press Calculate button
       Then the result should be "6" on the screen

@Regression

Scenario: Add big numbers 
       Given I have entered "11111111" into the calculator 
       And I have pressed the Plus button
       And I have also entered "22222222" into the calculator
       When I press Calculate button
       Then the result should be "33333333" on the screen


Scenario: Long Math of Plus and Minus 
       Given I have entered "10" into the calculator 
       And I have pressed the Plus button
       And I have also entered "20" into the calculator
       And I have pressed the Plus button
       And I have also entered "30" into the calculator
       And I have pressed the Plus button
       And I have also entered "40" into the calculator
       And I have pressed the Plus button
       And I have also entered "50" into the calculator
       And I have pressed the Minus button
       And I have also entered "10" into the calculator
       And I have pressed the Minus button
       And I have also entered "20" into the calculator
       And I have pressed the Minus button
       And I have also entered "30" into the calculator
       And I have pressed the Minus button
       And I have also entered "40" into the calculator
       And I have pressed the Minus button
       And I have also entered "50" into the calculator
       When I press Calculate button
       Then the result should be "0" on the screen