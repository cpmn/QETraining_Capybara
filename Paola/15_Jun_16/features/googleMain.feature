Feature: Search a word

Scenario: Search a phrase using google

Given I open the search page
When I set the search phrase "Automation testing with Capybara"
   And I click on button "Buscar"
Then I should see the result "Capybara - GitHub Pages"
