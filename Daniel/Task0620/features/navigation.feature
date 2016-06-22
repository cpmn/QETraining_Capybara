Feature: Search from Google
In order test search action
As google is the most commont Searcher
I want to search an specific word and get specific result

	Scenario: Search in goole 
		Given I open the borwser and go to "http://www.google.com"
		When I search "Automation testing with Capybara"
			And click in "Search" button
		Then I should see the result "Capybara - GitHub Pages"