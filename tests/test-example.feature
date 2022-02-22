@fast @example-tests

Feature: Running Cucumber with TestCafe - test feature example
  As a user of Google
  I should be able to search "Rent Ready"
  to learn more about the company.


  Scenario: Google page title should contain "Rent Ready"
    Given I go to URL "https://www.google.com/"
    # Put missing steps here
    Then the title should contain "Rent Ready"