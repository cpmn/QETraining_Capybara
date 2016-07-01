Feature: Search a word

Scenario Outline: Search a phrase using google

Given I open google page
When I set the search phrase <Phrase>
   And I click on search "Buscar"
Then I should see the result <Expected>

Examples:
|Phrase						     |Expected				 |
|Automation testing with Capybara|Capybara - GitHub Pages|
|rubygems documentation          |RubyGems Guides: Guides|
