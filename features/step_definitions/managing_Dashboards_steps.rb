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
    expect(page).to have_content("Test automation")
end 