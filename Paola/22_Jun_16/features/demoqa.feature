Feature: Registration
   In order I open the demoqa page
   User should be able to navigate to Registration 
   and add new user

   	Background: Open application and select registration option

      	Given I open demoqa page
      	When I select Registration option
      	Then I should see "Registration" title displayed
	
	Scenario: UI validation
		
		When I click on Submit button
		Then I should see "7" validation message with "* This field is required"

		Given I fill the passenger Information fields in New Request Screen
			|First Name|Paola|
		When I click on Submit button
		Then I should see "6" validation message with "* This field is required"