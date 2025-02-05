Feature: User is able to convert area units

  Background:
    Given I click on Got it button

  Scenario: User is able to swap values
    Given I see "Sq Kilometre" in From header
    And I see "Sq Metre" in To header
    When I click on Swap button
    Then I see "Sq Metre" in From header
    And I see "Sq Kilometre" in To header

  Scenario: User is able to clear input and enter values
    Given I click on Clear button
    When I enter "5" to From field
    Then I get "5000000" in To field
