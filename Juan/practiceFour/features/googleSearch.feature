Feature:Search a world
	Background:
		Given the page to test

		@tc1
		Scenario:verify a google search 
		When "Automation testing with Capybara" is writen on search text field
		And click button is pressed
		Then expected result of the search is returned