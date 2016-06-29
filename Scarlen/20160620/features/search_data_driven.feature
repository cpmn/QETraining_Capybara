Feature: Search in Google
Scenario Outline: Search
Given I open Google page
When I search "<Phrase>"
	And I click on Buscar button
Then I should see "<Expected_result>" as a result 

Examples:

	|Phrase|Expected_result|
	|Automation Testing with Capybara|Automated Testing Tool - inflectra.com|
	|rubygems documentation server|Run your own gem server - RubyGems Guides|