Feature: Sign In with invalid credentials

    Scenario: Open Sign Up screen and close it
        Given I am on Appimation home page
        When I select Sign Up button
        When I enter "edgars@mail.com", "manaparole", "manaparole", "mansprojekts" in Sign Up fields
        Then I close Sign Up screen
    
    Scenario: Log in with invalid data
        Given I am on Appimation home page
        When I select Log In button
        When I enter "testetejamnegulam@testdevlab.com", "nameiz" in Log In fields
        Then I select Login
        Then I validate if error is visible