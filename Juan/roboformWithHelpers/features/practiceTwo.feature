Feature:Form filler
	Background:
		Given the page to test

        @tc1
		Scenario:Fill all information required in robo page version two with code improvement
		Given the text field data:
		|02frstname|name1|
		|04lastname|lastName1|
		|20homephon_ac|591|
		|20homephon_pr|703|
		|20homephon_sf|5363|
		|10address1|address1|
		|10address2|address2|
		|13adr_city|city1|
	    |16addr_zip|591|
		|05_company|companyName1|
		|41ccnumber|creditCardName1|
		|24emailadr|name1@test.com|
		
		
		Given the select data:
		|/html/body/div[3]/div/div/div/form/table[1]/tbody/tr[4]/td[2]/select|ALASKA|
		
		And reset button is pressed 
		Then all information should be empty:
		|02frstname||
		|04lastname||
		|20homephon_ac||
		|20homephon_pr||
		|20homephon_sf||
		|10address1||
		|10address2||
		|13adr_city||
	    |16addr_zip||
		|05_company||
		|41ccnumber||
		|24emailadr||
		