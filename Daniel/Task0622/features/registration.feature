@register
Feature: Registration
In order to verify the Registration feature
As I need to verify all functionality
I want to verify Validation of required field and register a new user

	Scenario: Verify the required files shows when click in submit button
		Given I navigate to "http://demoqa.com/registration/"
			And not "* This field is required" message is displayed
		When I Click in "Submit" button
		Then "* This field is required" message are highlighted

	Scenario: Verify when user fill all required fields, it can be registere
		Given I navigate to "http://demoqa.com/registration/"
			 And fill only required field:
			| First Name       | Daniel              |
			| Last Name        | Jauregui            |
			| Hobby            | Dance               |
			| Phone Number     | 7074488598          |
			| Username         | Daniel              |
			| E-mail           | daniel@jauregui.com |
			| Password         | Control.123         |
			| Confirm Password | Control.123         |
		When I Click in "Submit" button
		Then I should see "Thank you for your registration".

	Scenario: Verify when user fill all required fields with existing user, it cannot be register
		Given I navigate to "http://demoqa.com/registration/"
			 And fill only required field:
			| First Name       | Daniel              |
			| Last Name        | Jauregui            |
			| Hobby            | Dance               |
			| Phone Number     | 7074488598          |
			| Username         | Daniel              |
			| E-mail           | daniel@jauregui.com |
			| Password         | Control.123         |
			| Confirm Password | Control.123         |
			And I Clicked in "Submit" button
			And User is registerd
		When I fill password required field:
		| Password         | Control.123         |
		| Confirm Password | Control.123         |
			And I Click in "Submit" button
		Then I should see "Error: Username already exists".
