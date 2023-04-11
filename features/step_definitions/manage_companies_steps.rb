Given('I am on page to add a new company on Surgo Health {string} and {string}') do |email, password|
  goto_login
  login_admin_with(email, password)
end
  
When('I click Add new company button') do
  click_on "Companies"
end
  
When('I fill the name from the new company') do
  add_new_company
end
  
Then('the new company is added on the system') do
  page.has_content?('Company name')
end

############### To add repeated company's name ##################
Given('I am on page to add repeated company on Surgo Health {string} and {string}') do |email, password|
  goto_login
  login_admin_with(email, password)
end

When('I click on Add new company button') do
  click_on "Companies"
end

When('I fill the repeated name from the new company') do
  click_on "Add new company"
  fill_in "company_name", with: "Test" 
  click_button "Save"
end

Then('the new system show the message exception') do
  expect(accept_alert).to eq("Error company might already exist")
end