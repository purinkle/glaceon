Feature: Create page
  In order to add content to the site
  As an administrator
  I need to create new pages

  Scenario: Show the new page form
    Given I am an administrator
    And I am signed in
    When I am creating a page
    Then the "Title" field is shown
    And the "Create Page" button is shown
    And the "Cancel" link is shown