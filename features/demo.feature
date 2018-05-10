Feature: Sign In with invalid credentials

    Scenario: Open Sign Up screen and close it
        Given I am on Appimation home page
        When I select Sign Up button
        When I enter "edgars@mail.com", "manaparole", "manaparole", "mansprojekts" in Sign Up fields
        Then I close Sign Up screen
    
    Scenario: Log in with invalid data
        Given I am on Appimation home page
        When I select Login button
        When I enter "test123@yopmail.com" in Email Address
        When I enter "test123" in Password
        Then I select Sign In button
        Then I validate if error is visible