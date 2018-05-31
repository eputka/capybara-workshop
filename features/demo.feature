Feature: Demo Feature

    Scenario: Open Sign Up screen and close it
        Given I am on Appimation home page
        When I select Sign Up button
        When I submit Sign Up form
        Then I close Sign Up form

    Scenario: Log in with invalid data
        Given I am on Appimation home page
        When I select Log In button
        When I submit invalid Sign Up form
        Then I validate if error is visible