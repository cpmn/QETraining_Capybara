Feature: Form Filler
Scenario: Fill the form and clear fields
Given I navigate to the webpage
When I fill the textboxes:
	|First Name|Mauricio|
	|Last Name|Viscarra|
	|Home Phone Number|111-222-3333|
	|Address 1|Pacata Baja|
	|Address 2|Melchor Perez|
	|City|Cochabamba|
	
And I select the drowpdowns:
	|State|ALASKA|
And  I fill the textboxes:
	|Postal Code|CodePost|
	|Company Name|Jalasoft|
	|Company Phone|111-222-33333-44444|
	|Fax Number|111-222-33333|
And I select the drowpdowns:
	|Shipping Method|Second Day Air|
	|Payment Method|Master Card|	
And  I fill the textboxes:
	|Name on Credit Card or Check|Name on credit|
	|Credit Card Number|123456|
And I select the drowpdowns:
	|Expiration Date|02-2013|
And  I fill the textboxes:	
	|Enter your Email Address|mgviscarra@test.com|
And I select the drowpdowns:
	|Account Type |Personal Use|
And  I fill the textboxes:	
	|Choose A Password|pass|
	|Verify Your Password|pass|
	|Hint (Optional)|HintTest|
And I select the checkboxes:
	|Newsletter|
And I click on "Reset" button:
Then I verify the values of the textboxes:
	|First Name|empty|
	|Last Name|empty|
	|Home Phone Number|empty|
	|Address 1|empty|
	|Address 2|empty|
	|City|empty|
	|Name on Credit Card or Check|empty|
	|Credit Card Number|empty|
	|Enter your Email Address|empty|
	|Choose A Password|empty|
	|Verify Your Password|empty|
	|Hint (Optional)|empty|
Then I verify the values of the dropdowns:
	|State|Select State|
	|Shipping Method|Standard Shipping|
	|Payment Method|Choose Payment Method|
	|Expiration Date|01-2011|

	

	