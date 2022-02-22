@fast @example-tests

Feature: Running Cucumber with TestCafe - test feature example
  As a user of Google
  I should be able to search "Rent Ready"
  to learn more about the company.


  Scenario: Google's Products page title should contain "Google"
    Given I go to URL "https://www.google.com/"
    Then the title should contain "Rent Ready"