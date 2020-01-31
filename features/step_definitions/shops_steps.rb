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

Then("I should see {string} message") do |text|
  expect(page).to have_content(text)
end

Then("I should see {string} in the first row of the list") do |text|
  tr = all('table tbody tr')[0]

  expect(tr).to have_content(text)
end

Then("I should see {string} link in the first row of the list") do |text|
  tr = all('table tbody tr')[0]

  expect(tr).to have_link(text)
end

Then("I should see {string} with links in the {int} row of the table") do |title, row_number, table|
  tr = all('table tbody tr')[row_number - 1] # row_number - 1 for 0 index;
  expect(tr).to have_content(title)

  table.headers.each do |link_text| # ["Show", "Edit", "Destroy"]
    expect(tr).to have_link(link_text)
  end
end
