@market @regression
Feature: Quote project custom steps

  @market1 @smoke
  Scenario: Quote smoke test
    Given I navigate to "quote" page
    When I fill out the required fields on the form
    And I submit the quote form
    And I wait for 1 sec
    Then I see required fields submitted successfully

  @market2 @smoke
  Scenario: Quote name validation
    Given I navigate to "quote" page
    When I fill out the name field with first name "John" and last name "Doe"
    Then I validate that value in the name field is "John Doe"



