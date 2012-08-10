Feature: Show page
  In order to see what Richard does
  As a customer
  I need to see the pages

  Scenario: Successfully show a page
    Given I am a customer
    And some pages have been created
    When I am viewing a page
    Then there is a title
    And there is some content