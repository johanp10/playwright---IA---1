Feature: Login functionality
    As a user
    I want to be able to log in to the application
    So that I can access my account

    Background:
        Given I am on the login page

    Scenario: Successful login with valid credentials
        When I enter valid username "user@example.com"
        And I enter valid password "password123"
        And I click the login button
        Then I should be logged in successfully
        And I should be redirected to the dashboard

    Scenario: Failed login with invalid credentials
        When I enter invalid username "wrong@example.com"
        And I enter invalid password "wrongpassword"
        And I click the login button
        Then I should see an error message
        And I should remain on the login page

    Scenario: Login with empty fields
        When I leave the username field empty
        And I leave the password field empty
        And I click the login button
        Then I should see validation messages for required fields