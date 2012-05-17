Feature: factorial cli (command line interface) prompts for errors

	In order to report an accurate factorial
	As a user of the factorial cli
	I should see "Please input a positive integer" if I input something incorrectly.

	Scenario: factorial cli reprompts for non-integers
		Given a factorial cli is running
		When I send it a non-integer
		Then I should see "Please enter a positive integer."

	Scenario: factorial cli reprompts for negative numbers
		Given a factorial cli is running
		When I send it a negative number
		Then I should see "Please enter a positive integer."
