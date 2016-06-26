Feature: Test robo form page

Scenario: Fill robot form
Given Navigate to robotform page
When Fill fields
|field     		 |value          |
|First Name		 |virginia       |
|Last Name       |sanabria       |
|Address 1  	 |quillacollo    |
|Address 2  	 |vinto          |
|City      		 |Cbba           |
|State     		 |ALASKA	     |
|Shipping Method |Second Day Air |
|Payment Method  |Master Card    |
|Account Type    |Government     |
When Fill fields
|field     		 |value        |
|First Name 	 |virginia2    |
|Last Name       |sanabria2    |
|Address 1  	 |quillacollo  |
|Address 2  	 |vinto2       |
|City            |lapas        |
|State           |IOWA	       |
|Shipping Method |Next Day Air |
|Payment Method  |Discover     |
|Account Type    |Education    |
When Click on reset button
Then Verify all fields are empty
|field     		 |value                  |
|First Name		 |                       |
|Last Name 		 |                       |
|Address 1 		 |                       |
|Address 2 		 |                       |
|City      		 |                       |
|State     		 | Select State          |
|Shipping Method | Standard Shipping     |
|Payment Method  | Choose Payment Method |
|Account Type    | Select Account Type   |