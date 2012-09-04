Feature: Show sign in page
  In order to protect my contact
  As an administrator
  I need to restrict access to certain pages

  Scenario: Display the sign in page
    Given I am an administrator
    When I am trying to sign in
    Then the sign in page is shown
    And there is an "Email" field
    And there is a "Password" field
    And there is a "Sign in" button