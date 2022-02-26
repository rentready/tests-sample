@fast @example-tests

Feature: Running Cucumber with TestCafe - test feature example
  As a user of Google
  I should be able to search "Rent Ready"
  to learn more about the company.


  Scenario: Google page title should contain "Rent Ready"
    Given I go to URL "https://www.google.com/"
    And I type "Rent Ready" in inputSearch from test-page-example
    When I click buttonSearch from test-page-example
    Then the title should contain "Rent Ready"