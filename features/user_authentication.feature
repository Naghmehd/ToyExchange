Feature: User Autentication

  Scenario: Existing User Can Visit Login|Register Page

    Given I have an existing account
    When I go to the sign in path
    Then I should see "Log in"

  Scenario: Existing Users Can Log In

    Given I have an existing account
    When I go to the sign in path
    And I fill in "Email" with "1test@example.com" within "#mySignInModal"
    And I fill in "Password" with "password" within "#mySignInModal"
    And I click "Log in"
    When I go to the root path
    Then I should see "Welcome"
