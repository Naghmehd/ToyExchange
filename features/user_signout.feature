Feature: User Signout

Scenario: A User Signs Out
      Given I have an existing account
      When I go to the sign in path
      And I fill in "Email" with "1test@example.com" within ".login-box"
      And I fill in "Password" with "password" within ".login-box"
      And I click "Log in"
      When I go to the root path
      And I press "Account"
      And I press "sign out"
