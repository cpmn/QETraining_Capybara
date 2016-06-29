@registration

Feature: Registrstion.

  Background: Open application and select registration option

    Given I open the testing page
    When I select "Registration" option
    Then I should see that "Registration" title is displayed

  Scenario: Add User, Validate information, verify message for duplicated user

    #Add User
    When I click on "Submit" button
    Then I should see "7" validation message with "* This field is required"
    
    When I fill the passanger information fields in New Request screen
    | First Name | Gustavo |  
    
    And I click on "Submit" button
    Then I should see "7" validation message with "* This field is required"

    When I fill the passanger information fields in New Request screen
    | Last Name | Perz |
    
    And I click on "Submit" button
    Then I should see "6" validation message with "* This field is required"

    When I fill the passanger information fields in New Request screen
    | Marital Status | single |
    
    And I click on "Submit" button
    Then I should see "6" validation message with "* This field is required"

    When I fill the passanger information fields in New Request screen
    | Hobby | reading |
    
    And I click on "Submit" button
    Then I should see "5" validation message with "* This field is required"

    When I fill the passanger information fields in New Request screen
    | Country | Austria |
    
    And I click on "Submit" button
    Then I should see "5" validation message with "* This field is required"

    When I fill the passanger information fields in New Request screen
    | Date of Birth | 2-26-1989 |
    
    And I click on "Submit" button
    Then I should see "5" validation message with "* This field is required"

    When I fill the passanger information fields in New Request screen
    | Phone Number | 95176423965 |
    
    And I click on "Submit" button
    Then I should see "4" validation message with "* This field is required"

    When I fill the passanger information fields in New Request screen
    | Username | gpz |
    
    And I click on "Submit" button
    Then I should see "3" validation message with "* This field is required"

    When I fill the passanger information fields in New Request screen
    | E-mail | gpz.123@email2.com |
    
    And I click on "Submit" button
    Then I should see "2" validation message with "* This field is required"

    When I fill the passanger information fields in New Request screen
    | About Yourself | Hi, I am Mario |
    
    And I click on "Submit" button
    Then I should see "2" validation message with "* This field is required"

    When I fill the passanger information fields in New Request screen
    | Password | password12345 |
    
    And I click on "Submit" button
    Then I should see "1" validation message with "* This field is required"

    When I fill the passanger information fields in New Request screen
    | Confirm Password | password12345 |
    
    And I click on "Submit" button
    
    #Validate information
    Then I should see a confirmation message saying "Thank you for your registration"
    And I should see the same information displayed in the form
    | First Name     | Gustavo            |
    | Last Name      | Perz               |
    | Marital Status | single             |
    | Hobby          | reading            |
    | Phone Number   | 95176423965        |
    | Username       | gpz                |
    | E-mail         | gpz.123@email2.com |
    | About Yourself | Hi, I am Mario     |

    #verify message for duplicated user
    When I fill the passanger information fields in New Request screen
    | Password | password12345 |
    | Confirm Password | password12345 |
    And I click on "Submit" button
    Then I should see an error message saying "Error: Username already exists"