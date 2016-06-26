Feature: Search a word

Scenario Outline: Happy path for a search
Given I open the search page
When I set the search phrase "<Phrase>"
   And I click on button "Buscar"
Then I should see the result "<Expected_result>"
Examples:
	|Phrase          				 |Expected_result                    |
	|Automation testing with Capybara|Capybara - GitHub Pages            |
	|rubygems documentation          |Command Reference - RubyGems Guides|