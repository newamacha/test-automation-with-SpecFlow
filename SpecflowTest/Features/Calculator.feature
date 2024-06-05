Feature: Calculator
![Calculator](https://specflow.org/wp-content/uploads/2020/09/calculator.png)
Simple calculator for adding **two** numbers

Link to a feature: [Calculator](SpecflowTest/Features/Calculator.feature)
***Further read***: **[Learn more about how to generate Living Documentation](https://docs.specflow.org/projects/specflow-livingdoc/en/latest/LivingDocGenerator/Generating-Documentation.html)**

@add @regression
Scenario: 1 Add two numbers
	Given the first number is 50
	And the second number is 70
	When the two numbers are added
	Then the result should be 120

@multiply @regression
Scenario: 2 Multiply two numbers
	Given the first number is 2
	And the second number is 5
	When the two numbers are multiplied
	Then the result should be 10

@addWithDataTable
Scenario: 3 Add two number using Data Table
	Given the first  and second number are
	| firstNumber | secondNumber |
	| 5           | 10           |
	When the two numbers are added
	Then the result should be
	| Result |
	| 15     |

	
