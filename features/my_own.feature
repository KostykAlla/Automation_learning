Feature: Variaty Shops
  Scenario: Create new shop from main page
    When I visit main page
      And click on "New Shop" link
      And Fill in shop "Title" with "Vegetables"
      And Fill in shop "Department" with "Fresh food"
      And Fill in shop "Description" with "Food"
      And Fill in shop "Location" with "IF"
      And click on "Create Shop" button
    Then I should see "Shop was successfully created." message
      And click on "Back" link
      And click on "New Shop" link
      And Fill in shop "Title" with "Clothing"
      And Fill in shop "Department" with "Fashion style"
      And Fill in shop "Description" with "Clothes"
      And Fill in shop "Location" with "IF"
      And click on "Create Shop" button
    Then I should see "Shop was successfully created." message
      And click on "Back" link
    Then I should see "Vegetables" with links in the 1 row of the table
        | Show | Edit | Destroy |
      And I should see "Clothing" with links in the 2 row of the table
        | Show | Edit | Destroy |
