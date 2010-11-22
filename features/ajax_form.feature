Feature: Autocomplete
  In order to do funky stuff
  As a User
  I want autocomplete on my Ajax forms!

  @javascript
  Scenario: Autocomplete
    Given the following brands exists:
      | name  |
      | Alpha |
      | Beta  |
      | Gamma |
    When I go to the welcome ajax form example page
    And I follow "Show the form"
    And I fill in "Brand name" with "al"
    And I choose "Alpha" in the autocomplete list
    Then the "Brand name" field should contain "Alpha"
