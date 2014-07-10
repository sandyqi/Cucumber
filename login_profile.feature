Feature: Sign in
  In order to get access to protected sections of the site
  A user
  Should be able to sign in

  

    Scenario: User signs in successfully
      Given I exist as a user
      When I sign in with valid credentials
      Then I see a successful sign in message


