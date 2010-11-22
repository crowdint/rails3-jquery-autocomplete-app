Feature: Autocomplete
  In order to do funky stuff
  As a User
  I want autocomplete!

  @javascript
  Scenario: Autocomplete
    Given the following brands exists:
      | name  |
      | Alpha |
      | Beta  |
      | Gamma |
    And I go to the home page
    And I fill in "Brand name" with "al"
    And I choose "Alpha" in the autocomplete list
    Then the "Brand name" field should contain "Alpha"

  @javascript
  Scenario: Autocomplete ID Element usage example
    Given the following brands exists:
      | id  | name  |
      | 1   | Alpha |
      | 2   | Beta  |
      | 3   | Gamma |
    And I go to the welcome id element example page
    And I fill in "Brand name" with "al"
    And I choose "Alpha" in the autocomplete list
    Then the "Brand name" field should contain "Alpha"
    Then the "Put the id here:" field should contain the id for "Alpha"

  @javascript
  Scenario: Autocomplete with Formtastic
    Given the following brands exists:
      | name  |
      | Alpha |
      | Beta  |
      | Gamma |
    And I go to the welcome formtastic page
    And I fill in "Brand name" with "al"
    And I choose "Alpha" in the autocomplete list
    Then the "Brand name" field should contain "Alpha"
    Then the "Put the id here:" field should contain the id for "Alpha"

  @javascript @focus
  Scenario: Autocomplete with a brand subtype
    Given the following brand_subtypes exists:
      | name  |
      | Alpha |
      | Beta  |
      | Gamma |
    And I go to the welcome subtype page
    And I fill in "Brand name" with "al"
    And I choose "Alpha" in the autocomplete list
    Then the "Brand name" field should contain "Alpha"
