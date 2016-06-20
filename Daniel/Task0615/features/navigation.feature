Feature: Fill Form
In order test fill forms
As I am learning how to do this
I want to open a browser of "roboform" page and fill its form.

	Scenario: Fill Billing Address and Payment & Shipping Information form 
		Given I open the borwser "http://www.roboform.com/filling-test-shopping-cart"
			And I fill following data:
			|First Name        | Daniel     |
			|Last Name         | Jauregui   |
			|Home Phone Number | 123456789  |
			|Address 1         | Wiracocha  |
			|Address 2         | Arawi      |
			|City              | Cochabamba |
			|State             | NEW YORK   |
			|Postal Code       | 0000       |
			|Company Name      | Jalasoft   |
			|Company Phone     | 123456789  |
			|Fax Number        | 123456789  |
			And I fill folloqing Payment & Shipping Information:
			| Shipping Method              | Second Day Air              |
			| Payment Method               | Visa (Preferred)            |
			| Name on Credit Card or Check | VISA                        |
			| Credit Card Number           | 12345678901234              |
			| Expiration Date              | 07/2016                     |
			| Enter your Email Address     | daniel.jauregui@outlook.com |
			| Account Type                 | Corporation                 |
			| Choose A Password            | Password                    |
			| Verify Your Password         | Password                    |
			| Hint (Optional)              | Hint Password               |
			| Newsletter                   | check                       |
		When I will click in "Reset" button
		Then The all field will be in initial state
