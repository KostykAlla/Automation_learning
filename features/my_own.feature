Feature: Variaty Shops
  Scenario: Create new shop from main page
    When I visit main page
    And click on "New Shop" link
    And Fill in shop "Title" with "Vegetables"
    And Fill in shop "Description" with "Fresh food"
    And Fill in shop "Department" with "Food"
    And Fill in shop "Location" with "IF"
    And click on "Create Shop" button
    Then I should see "Vegetables" in the shops list
    And click on "Back" link
    Then I should see "Show" in the shops list
    Then I should see "Edit" in the shops list
    Then I should see "Destroy" in the shops list
    And click on "New Shop" link
    And Fill in shop "Title" with "Clothing"
    And Fill in shop "Description" with "Fashion style"
    And Fill in shop "Department" with "Clothes"
    And Fill in shop "Location" with "IF"
    And click on "Create Shop" button
    Then I should see "Clothing" in the shops list
    And click on "Back" link
    Then I should see "Show" in the shops list
    Then I should see "Edit" in the shops list
    Then I should see "Destroy" in the shops list