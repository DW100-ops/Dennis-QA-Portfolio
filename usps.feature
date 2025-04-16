@usps
Feature: USPS test suite

  @usps1
  Scenario: Validate ZIP code for Portnov Computer School
    Given I navigate to "usps lookup by address" page
    When I fill out "4970 El Camino Real" street, "Los Altos" city, "CA" state
    And I submit lookup by address form
    Then I validate "94022" zip code exists in the result


  @search
  Scenario: Boardreader smoke test
    Given I navigate to "boardreader" page
    When I search for "cucumber test" on boardreader
    Then I validate "io.cucumber" shows on boardreader results