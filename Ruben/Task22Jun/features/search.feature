Feature: Search 
Scenario: Path to search
Given I open a search page
When I fill the phrase "Automation testing with Capybara" in search field
And I click on button "Buscar"
Then I get the result "Capybara - GitHub Pages"