@predefined
Feature: Smoke steps

  @predefined1
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    And element with xpath "//*[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//*[@name='q']"
    And I click on element with xpath "(//input[@name='btnK'])[2]"
    And I wait for element with xpath "//*[@id='res']" to be present
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"

  @predefined2
  Scenario: Predefined steps for Bing
    Given I open url "https://www.bing.com"
    Then I should see page title contains "Bing"
    And element with xpath "//*[@id='sb_form_q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//*[@id='sb_form_q']"
    And I click on element with xpath "//label[@id='search_icon']"
    Then I wait for element with xpath "//ol[@id='b_results']" to be present
    And element with xpath "//ol[@id='b_results']" should contain text "Cucumber"
    And I wait for 2 sec
