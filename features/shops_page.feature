Feature: Shops Page
  Scenario: Create new shop from main page
    When I visit main page
      And click on "New Shop" link
      And Fill in shop "Title" with "Test E-Shop"
      And Fill in shop "Description" with "Testing shopping creation"
      And Fill in shop "Department" with "Clothing"
      And Fill in shop "Location" with "IF"
      And click on "Create Shop" button
    Then I should see "Test E-Shop" in the shops list
