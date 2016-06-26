Feature: Roboform2 form
Scenario: Fill form test
Given I visit Roboform

And I fill form:
|First Name|Ruber|
|Last Name|Cuellar|
|Home Phone Number|893-345-1234567|
|Address 1|Melchor Perez|
|Address 2|Simon Lopez|
|City|Cochabamba|
|Postal Code|8937|
|Company Name|Jalasoft|
|Company Phone|123-456-7891234-222|
|Fax Number|123-456-7891234|
|Name on Credit Card or Check|VISA|
|Credit Card Number|411111111111|
|Enter your Email Address|ruber.cuellar@jalasoft.com|
|Choose A Password|Password|
|Verify Your Password|Password|
|Hint (Optional)|Optional|

And I select fields:
|State|COLORADO|
|Shipping Method|Second Day Air|
|Payment Method|Master Card|
|Expiration Date|05-2019|
|Account Type|Personal Use|

And I checked Newsletter

When I click Rest button

Then Check all fields are empty
|First Name|Last Name|Address 1|Address 2|City|Postal Code|Company Name|Company Phone|Fax Number|Name on Credit Card or Check|Credit Card Number|Enter your Email Address|Choose A Password|Verify Your Password|Hint (Optional)|State|Shipping Method|Payment Method|Expiration Date|Account Type|

