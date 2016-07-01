Feature: Testing Blog Page
   In order to display only testing blog
   User should be able to fill data in the page 

   Scenario: Fill data in the blog
     Given I open testing blog page
     When I check option I have a car
        And I select my gender Female	    
	    And I click on Show Me Alert button
	    And I click on Accept button from Alert
	 Then I should see message "You pressed Cancel!"
