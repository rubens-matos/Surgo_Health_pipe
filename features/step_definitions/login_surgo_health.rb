Given('I access login Surgo Health page') do
    visit 'https://consumerdev.surgohealth.com'
end
  
When('I inform credentials with: {string} and {string}') do |email, password|
    login_admin_with(email, password)
end
  
Then('I should see the home page Surgo Health') do
    expect(page).to have_content("Score")
end

#################### Login Surgo Health invalid credentials #####################
Given(/I access using invalid login Surgo Health/) do
    steps %{
        Given I access login Surgo Health page
    }
end
  
When('I submit the invalid credentials with: {string} and {string}') do |email, password|
    login_admin_with(email, password)
end
  
Then('I should see the allert message: {string}') do |message|
    expect(find_message(".MuiAlert-message")).to eql message
end
