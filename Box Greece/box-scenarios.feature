Feature: Login feature 

    Background: Feature test setup - Connect to Box
        Given Connect to Box


    Scenario: User forgot password and enters an incorrect Cosmote ID / Phone number:

    Given user is on the login page
    When user clicks on "Forgot Password" link
    And user is directed to the forgot password page
    And user enters an incorrect username
    Then an error message should  be displayed saying "No user found with the provided username"


    Scenario: User tries to register with an existing username:

    Given user is on the homepage
    And user clicks on the register button
    And user is directed to the registration page
    When user fills in the registration form with existing username and password
    And submits the form
    Then an error message should be displayed saying "Username is already in use"


    Scenario: User logs in via Cosmoste ID / Phone number successfully

    Given user navigates to Box.gr
    And user clicks on "Log in / Register button"
    And user is directed to Log in page
    When user enters a valid phone number 
    And password field shows up
    And user enters valid password
    And user clicks Log in button
    Then user logs in successfully 
    And user views shop listing
    

    Scenario: User completes an order 

    Given user navigates to Box.gr
    And user clicks on "Log in / Register button"
    And user is directed to Log in page
    And user enters a valid phone number 
    And password field shows up
    And user enters valid password
    And user clicks Log in button
    And user logs in successfully 
    And new address modal pops up 
    And user inputs a new address
    And user views shop listing
    When user clicks on "Ο Πρόεδρος" shop
    And user is directed to shop's menu list
    And user clicks on item's add button
    And user adds item in cart
    And user clicks on next step button
    And user is directed to checkout page
    And user chooses payment method
    And user clicks on send order button
    Then order is completed successfully 
    And user lands on Thank you page


    Scenario: User completes an order by adding items directly

    Given user navigates to Box.gr
    And user clicks on "Log in / Register" button
    And user is directed to Log in page
    And user enters a valid phone number 
    And password field shows up
    And user enters valid password
    And user clicks Log in button
    And user logs in successfully 
    And new address modal pops up 
    And user inputs a new address
    And user views shop listing
    When user clicks on "Ο Πρόεδρος" shop
    And user is directed to shop's menu list
    And user clicks on an item
    And user views item's contents and reviews
    And user clicks on "Add to cart" button
    And user clicks on next step button
    And user is directed to checkout page
    And user chooses payment method
    And user clicks on send order button
    Then order is completed successfully 
    And user lands on Thank you page


    Scenario: User clicks on delivery schedule

    Given user navigates to Box.gr
    And user clicks on "Log in / Register" button
    And user is directed to Log in page
    And user enters a valid phone number 
    And password field shows up
    And user enters valid password
    And user clicks Log in button
    And user logs in successfully 
    And new address modal pops up 
    And user inputs a new address
    And user views shop listing
    When user clicks on delivery schedule
    And time selection pops up
    And user chooses preferred delivery day and time
    And user clicks verify button
    Then shop listing changes based on chosen delivery schedule preferrences
    