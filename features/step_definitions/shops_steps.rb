When("I visit main page") do
  visit "/"
end

# And click on "New Shop" button
When("click on {string} button") do |string|
  click_button string
end

# And click on "New Shop" link
When("click on {string} link") do |string|
  click_link string
end


# And Fill in shop "Title" with "Test E-Shop"
# And Fill in shop "Description" with "Testing shopping creation"
When("Fill in shop {string} with {string}") do |label, value|
  fill_in label, with: value
end

Then("I should see {string} in the shops list") do |text|
  expect(page).to have_content(text)
end

