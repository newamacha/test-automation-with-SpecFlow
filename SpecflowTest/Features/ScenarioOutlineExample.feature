Feature: ScenarioOutlineExample

@add
Scenario Outline: Add two numbers using scenario outline
	Given the first number is <number1>
	And the second number is <number2>
	When the two numbers are added
	Then the result should be <expectedSum>

@positive
Examples: 1 add positive numbers
	| SN  | number1 | number2 | expectedSum |
	| 101 | 50      | 70      | 120         |
	| 102 | 10      | 5       | 15          |
	| 103 | 2       | 60      | 62          |

@negative
Examples: 2 add negative numbers
	| SN  | number1 | number2 | expectedSum |
	| 201 | -50     | -70     | -120        |
	| 202 | -10     | -5      | -15         |
	| 203 | -2      | -60     | -62         |