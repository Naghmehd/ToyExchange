Feature: User Autentication

  Scenario: Existing User Can Visit Home Page Log

    Given I have an existing account
    When I go to the sign in path
    Then I should see "Log in"

  Scenario: Existing Users Can Log In

    Given I have an existing account
    When I go to the root path
    And I fill in "Email" with "1test@example.com" within "#mySignInModal"
    And I fill in "Password" with "password" within "#mySignInModal"
    And I press "Log in"
    Then I should see "Signed in successfully."
    
