Feature: Create user session
  In order to separate user functionality
  As an administrator
  I need to be able to create a privileged session

  Scenario: Successfully create a user session
    Given I am an administrator
    When I am trying to sign in
    And I sign in with valid credentials
    Then the page index is shown