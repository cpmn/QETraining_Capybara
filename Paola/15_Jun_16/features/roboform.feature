Feature: Testing RoboForm Page
   In order to buy products from RoboForm PAge
   User should be able to fill personal data into form

Scenario: Fill all required data into RoboForm Page
	Given I visit RoboForm page
	When I fill form
		|Input|First Name|Paola|
		|Input|Last Name |Munoz|
		|Select|State|TEXAS|
		|Select|Payment Method|Visa (Preferred)|
		|Input|Name on Credit Card or Check |Paola Munoz.|
		|Input|Credit Card Number |123456789|
		|Input|Enter your Email Address|claudia.paola@gmail.com|
		|Input|Choose A Password|Passwd12345|
		|Input|Verify Your Password|Passwd12345|
		|Input|Hint (Optional)|pwd12345|
	And I click on Reset button
	Then I should see all fields with empty data
		|First Name|
		|Last Name|
		|State|
		|Payment Method|
		|Name on Credit Card or Check |
		|Credit Card Number |
		|Enter your Email Address|
		|Choose A Password|
		|Verify Your Password|
		|Hint (Optional)|
	
	

		
	