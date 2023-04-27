Given('I on home page of Surgo Health') do
    go_surgo_portal
    login_admin_with("rmatos@teamarrayo.com","Rub3n5r@")
end
  
When('I click on Map icon and select a theme') do
    @Dashboards = Dashboards.new
    @Dashboards.selectTheme
end
  
When('I select a state and click on Save button') do
    @Dashboards.saveDash.click
    fill_in "dashboardName", with: "Test automation"
    click_on 'Save'
end
  
Then('I should see it on Saved Dashboards') do
    @Dashboards.nameDash
    expect(page).to have_content("Dashboard")
end 
########################## Delete item from Dash #######################
Given(/I logged on home page of Surgo Health/) do
    @Dashboards = Dashboards.new
    steps %{
        Given I on home page of Surgo Health
    }
end
  
When(/I select research saved and click on option to delete/) do
    steps %{
        Then I should see it on Saved Dashboards
    } 
end
  
When('I click on Delete option') do
    @Dashboards.deleteItem
end
  
Then('I should delete it from the Dashboards') do
    page.has_content?('Dashboard')
end