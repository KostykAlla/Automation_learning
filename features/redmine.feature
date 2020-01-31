Feature: Redmine
  Scenario: Create new user from main page
    When I visit main page
    And click on "Register" link
    And Fill in register "Login" with "Veg"
    And Fill in register "Password" with "Fresh"
    And Fill in register "Confirmation" with "Fresh"
    And Fill in register "Firstname" with "veg"
    And Fill in register "Lastname" with "etab"
    And Fill in register "Email" with "dgad@gds.re"
    And click on "Submit" button
    Then I should see "My page"
