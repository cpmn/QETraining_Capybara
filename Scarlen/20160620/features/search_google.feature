Feature: Search in Google
Scenario: Search a phrase in Google
When I open Google page
Then Google page should be displayed
When I search "Automation Testing with Capybara"
	And I click on Buscar button
Then I should see "Automated Testing Tool - inflectra.com" as a result 
