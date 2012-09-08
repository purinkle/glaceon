Feature: List pages
  In order to keep pages up-to-date
  As an administrator
  I need to see all the pages

  Scenario: Redirect to the sign in screen
    Given I am a customer
    When I am looking at all the pages
    Then the sign in page is shown

  Scenario: Display the pages index
    Given I am an administrator
    And some pages have been created
    And I am signed in
    When I am looking at all the pages
    Then the page index is shown
    And the pages are listed

  Scenario: Show the new page page
    Given I am an administrator
    And I am signed in
    When I click the "New" link
    Then the "New Page" page is shown