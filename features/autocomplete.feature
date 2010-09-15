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

