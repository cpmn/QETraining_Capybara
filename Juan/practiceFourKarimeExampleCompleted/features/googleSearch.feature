Feature:Search a word
	#Background:
	#	Given the page to test

		@tc1
		Scenario Outline:happy path for a search
		
		Given I open the search page
		When I set teh search phrase "<Phrase>"
		 And I click on button "Buscar"
		Then I should see the result "<Expected_result>"

		Examples:
		|Phrase                          |Expected_result        |
		|Automation testing with Capybara|Capybara - GitHub Pages|
		|rubygems documentation          |RubyGems Guides: Guides|