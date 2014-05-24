Feature: Get check number

	Scenario Outline: Get check number
		Given the input "<input>"
		When the method runs
		Then the output should be "<output>"

		Examples:

			| input 		| output|
			|	991234		|	6		 	|
			| 5555555 	| 1			|
