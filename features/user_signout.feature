Feature: User Signout

Scenario: Existing Users Can Log In

  Given I have an existing account
  When I go to the root path
  And I fill in "Email" with "1test@example.com" within "#mySignInModal"
  And I fill in "Password" with "password" within "#mySignInModal"
  And I press "Log in"
  Then I should see "Signed in successfully."

Scenario: An Existing User Can Signs Out

  Given I am on the rooth path
  When I click "Account"
  And I click "sign out"
  Then I should see "Empty your closet of used toys"
