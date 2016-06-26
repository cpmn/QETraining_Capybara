@roboform @qa

Feature: Fill all the information in Roboform web page
  In order test some capybara methods
  As a user
  I should be available to interact with some web elements.

  
  Scenario: Fill, modify and reset values.

   When I open roboform web page
   When I fill the form with the following values
    | First Name         | Mario                |
    | Last Name          | Perez                |
    | Home Phone         | 123-456-789          |
    | Address            | Av. America          |
    | City               | Cochabamba           |
    | State              | FLORIDA              |
    | Postal Code        | 112233               |
    | Shipping Method    | Second Day Air       |
    | Payment Method     | Master Card          |
    | Credit Card Name   | Mario Perez Zambrana |
    | Credit Card Number | 753698544            |
    | Expiration Date    | 06-2016              |
    | Email Address      | mario.cbba@gmail.com |
    | Account Type       | Personal Use         |
    | Password           | password             |
    | Verify Password    | password             |
    | Hint Password      | pass                 |
    | Newsletter         | Check                |


    # Modify section

    When I fill the form with the following values
    | First Name         | Karime               |
    | Last Name          | Salomon              |
    | Home Phone Number  | 456-963-147          |
    | Address            | Av. Melchor Perez    |
    | City               | Tarija               |
    | State              | TEXAS                |
    | Postal Code        | 852369               |
    | Shipping Method    | Next Day Air         |
    | Payment Method     | Discover             |
    | Credit Card Name   | Karime Salomon       |
    | Credit Card Number | 789456123            |
    | Expiration Date    | 09-2017              |
    | Email Address      | karime.s@gmail.com   |
    | Account Type       | Education            |
    | Password           | password123          |
    | Verify Password    | password123          |
    | Hint Password      | pass123              |
    | Newsletter         | Check                |

    #When I open roboform web page
    #And I insert "Mario" in first name
    #And I insert "Perez" in last name
    #And I insert "123" "456" "789" in home phone number
    #And I insert "Av. America" in address 1
    #And I insert "Cochabamba" in city
    #And I select "FLORIDA" in state
    #And I insert "112233" in postal code
    #And I select "Second Day Air" in shipping method
    #And I select "Master Card" in payment method
    #And I insert "Mario Perez Zambrana" in name on credit card
    #And I insert "753698544" in credit card number
    #And I insert "06" - "2016" in expiration date
    #And I insert "mario.cbba@gmail.com" in email address
    #And I select "Personal Use" in account type
    #And I insert "password" in password
    #And I insert "password" in verify password
    #And I insert "pass" in hint password
    #And I check newsletter checkbox
    
    
    
    #When I insert "Karime" in first name
    #And I insert "Salomon" in last name
    #And I insert "321" "654" "987" in home phone number
    #And I insert "Av. Melchor Perez" in address 1
    #And I insert "La Paz" in city
    #And I select "TEXAS" in state
    #And I insert "332211" in postal code
    #And I select "Next Day Air" in shipping method
    #And I select "Discover" in payment method
    #And I insert "Karime Salomon" in name on credit card
    #And I insert "123456789" in credit card number
    #And I insert "03" - "2017" in expiration date
    #And I insert "karime.salomon@gmail.com" in email address
    #And I select "Education" in account type
    #And I insert "password123" in password
    #And I insert "password123" in verify password
    #And I insert "pass123" in hint password
    
    And I click on reset button
    Then I should see all the fields empties



