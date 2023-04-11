#####Add an user on Admin####################
Given('I am on Surgo Admin portal {string} and {string}') do |email, password|
    goto_login
    login_admin_with(email, password)
end
  
When('I click on Ádd account') do
    click_button 'Add account'
end
  
When('I fill the data to new user and click on Add account button') do
    add_new_user
end
  
Then('I should see the new user registred') do
    #expect(find('#flash').visible?).to be true
end

##############To Edit an user####################
Given('I am on page to edit an user {string} and {string}') do |email, password|
    goto_login
    login_admin_with(email, password)
end
  
When('I click Edit button an user') do
    find(:xpath, "(//*[text()='Edit'])[1]").click
end
  
When('I edit all datas from user') do
    edit_new_user
end
  
Then('I should see the data edited') do
    #expect(find('#flash').visible?).to be true
end

################DElete an user on Admin#################
Given('I am on page to delete an user {string} and {string}') do |email, password|
    goto_login
    login_admin_with(email, password)
end
  
When('I click Delete button an user') do
    find(:xpath, "(//*[text()='Delete'])[1]").click
    find(:xpath, '/html/body/div[2]/div[3]/div/div[2]/button[2]').click
    #click_on "Delete", match: :first
end
  
Then('the user is deleted from the portal') do
    #expect(find('#flash').visible?).to be true
end

########################Add a repeated user###################

Given('I am on Surgo Admin {string} and {string}') do |email, password|
    goto_login
    login_admin_with(email, password)
end
  
When('I click To Ádd account') do
    click_button 'Add account'
end
  
When('I fill the data to repeated user and click on Add account button') do
    find(:xpath, "//*[@id='uncontrolled-company_id']/option[2]").click
    fill_in 'last_name', with: "TESTE 123"
    fill_in 'first_name', with: "AUTOMATION 123"
    fill_in 'email', with: "test@test.com"
    find(:xpath, "(//*[text()='Add account'])[2]").click
end
  
Then('I should see the nthe allert message') do
    expect(accept_alert).to eq("Error account might already exist")
end