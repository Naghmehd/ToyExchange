Feature: User Registeration

  Scenario: New User Can Visit Login|Register Page

    Given I am a new user
    When I go to the sign in path
    Then I should see "Register"

  Scenario: New Users Can Register

    Given I am a new user
    When I go to the sign in path
    And I fill in "Email" with "1test@example.com" within ".register-box"
    And I fill in "Password" with "password" within ".register-box"
    And I fill in "Password confirmation" within ".register-box"
    And I click "Sign up"
    Then I should see "Account"
