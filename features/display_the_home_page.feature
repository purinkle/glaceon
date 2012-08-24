Feature: Display the home page
  In order to give a summary of the site
  As a customer
  I need to see the home page

  Scenario: Display the home page
    Given I am a customer
    When I am looking at the site
    Then the home page is shown