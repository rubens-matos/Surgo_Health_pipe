############Valid Login test####################
Given('I access the login page using a valid login') do
  goto_login
end

When('I fill my credentials with: {string} and {string}') do |email, password|
  login_admin_with(email, password)
end

Then('I should see the home page for user') do
  expect(page).to have_content("test")
end


#############Invalid login test##################
Given('I access the login page') do
  goto_login
end

When('I submit my credentials with: {string} and {string}') do |email, password|
  login_admin_with(email, password)
end

Then('I should see the message: {string}') do |expect_message|
  expect(find_message(".MuiAlert-message")).to eql expect_message 
end