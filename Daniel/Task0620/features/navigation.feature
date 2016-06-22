Feature: Search from Google
In order test search action
As google is the most commont Searcher
I want to search an specific word and get specific result

	Scenario Outline: Search in goole 
		Given I open the borwser and go to "http://www.google.com"
		When I search "<word>"
			And click in "Search" button
		Then I should see the result "<result>"
	Examples:
    | word                                  | result                    									 |
    | Automation testing with Capybara      | Capybara - GitHub Pages   									 |
    | Cucumber official page                | Cucumber                  									 |
    | download ruby							| Downloads - RubyInstaller 									 |
    | xpath									| XPath Tutorial - W3Schools									 |
    | test behavior driven development		| Behavior-driven development - Wikipedia, the free encyclopedia |
