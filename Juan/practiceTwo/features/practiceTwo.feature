@practice2
Feature:Form filler
	Background:
		Given the page to test

        @tc1
		Scenario:Fill all information required in robo page
		Given the data:
		| name1| lastName1|591|703|5363|address1|address2|city1|ALASKA|591|companyName1|creditCardName1|1|name1@test.com|Control123|Control123|
		When all information is filled data should be modified
		Then the data should look like this:
		| name2| lastName2|591|703|5363|address11|address22|city2|ALABAMA|592|companyName2|creditCardName2|2|name2@test.com|Control123|Control123|
		And after press reset button all information should be empty
