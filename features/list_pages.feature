Feature: List pages
  In order to keep pages up-to-date
  As an administrator
  I need to see all the pages

  Scenario: Redirect to the sign in screen
    Given I am a customer
    When I am looking at all the pages
    Then the sign in page is shown