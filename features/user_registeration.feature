Feature: User Registeration

  Scenario: New User Can Visit Home Page

    Given I am a new user
    When I go to the root path
    Then I should see "Register"

  Scenario: New Users Can Register

    Given I am a new user
    When I go to the root path
    And I click "Register"
    Then I fill in "Email" with "2test@example.com" within "#mySignUpModal"
    And I fill in "Password" with "password" within "#mySignUpModal"
    And I fill in "Password confirmation" with "password" within "#mySignUpModal"
    And I press "Sign up"
    Then I should see "Welcome! You have signed up successfully."
    
