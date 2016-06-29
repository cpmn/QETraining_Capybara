Feature: Forms
Scenario: Fill in forms
When I open roboform page
And I fill in the form
|First Name|Scarlen|
|Last Name|Quinsamolle|
|Home Phone Number|123-456-7890|
|Address 1|Av. Melchor Perez|
|Address 2|Av. Villazon|
|City|Cercado|
|Postal Code|12345|
|Company Name|Jalasoft|
|Company Phone|098-765-4521-001|
|Fax Number|999-888-7654|
|Name on Credit Card or Check|Scarlen Quinsamolle|
|Credit Card Number|4567|
|Enter your Email Address|scarlen@gmail.com|
|Choose A Password|Scarlen1!|
|Verify Your Password|Scarlen1!|
|Hint (Optional)|Scarlen1!|
And I select values to complete the form
|State|ALABAMA|
|Shipping Method|Standard Shipping|
|Payment Method|Discover|
|Account Type|Education|

When I click on reset button
	Then All fields should reset values to null
	|First Name|
	|Last Name|
	|Home Phone Number|
	|Address 1|
	|Address 2|
	|City|
	|Postal Code|
	|Company Name|
	|Company Phone|
	|Fax Number|
	|Name on Credit Card or Check|
	|Credit Card Number|
	|Enter your Email Address|
	|Choose A Password|
	|Verify Your Password|
	|Hint (Optional)|








