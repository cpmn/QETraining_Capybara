Feature: Forms
Scenario: Fill in forms
When I open roboform page
And I fill in the form
|First Name|Scarlen|
|Last Name|Quinsamolle|
# |home_phone_number|1234567890|
|Address 1|Av. Melchor Perez|
|Address 2|Av. Villazon|
|City|Cercado|
|Postal Code|12345|
|Company Name|Jalasoft|
# |company_phone|1234567890|
# |fax_number|1234567890|
|Name on Credit Card or Check|Scarlen Quinsamolle|
|Credit Card Number|4567|
# |expiration_date|01/2011|
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
	# |home_phone_number|
	|Address 1|
	|Address 2|
	|City|
	|Postal Code|
	|Company Name|
	# |company_phone|
	# |fax_number|
	|Name on Credit Card or Check|
	|Credit Card Number|
	# |expiration_date|
	|Enter your Email Address|
	|Choose A Password|
	|Verify Your Password|
	|Hint (Optional)|








