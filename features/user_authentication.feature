Feature: User Autentication

  Scenario: Existing User Can Visit Login|Register Page

    Given I have an existing account
    When I go to the sign in path
    Then I should see "Log in"

  Scenario: Existing Users Can Log In

    Given I have an existing account
    When I go to the sign in path
    And I fill in "Email" with "1test@example.com" within ".login-box"
    And I fill in "Password" with "password" within ".login-box"
    And I click "Log in"
    Then I should see "Account"
