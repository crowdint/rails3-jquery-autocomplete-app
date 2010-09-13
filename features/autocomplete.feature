Feature: Autocomplete
  In order to do funky stuff
  As a User
  I want autocomplete!

  @javascript
  Scenario: Autocomplete
    Given I go to the home page
    And the following brands exists:
      | name  |
      | Alpha |
      | Beta  |
      | Gamma |
    And I go to the home page


  
