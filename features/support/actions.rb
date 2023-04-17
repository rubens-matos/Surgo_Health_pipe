module Actions
  def goto_login()
    visit "/"
    #click_on "Login"
  end

  def login_admin_with(email, password)
    find_and_set("#email-signup", email)
    find_and_set("#outlined-adornment-password", password)
    click_on "Sign In"
  end

  def find_message(property)
    return find(property).text
  end

  def find_and_set(property, value)
    find(property).set value
  end

  def add_new_user()
    find(:xpath, "//*[@id='uncontrolled-company_id']/option[2]").click
    fill_in 'last_name', with: Faker::Movies::StarWars.planet
    fill_in 'first_name', with: Faker::Name.name
    fill_in 'email', with: Faker::Internet.email
    find(:xpath, "(//*[text()='Add account'])[2]").click
  end

  def add_new_company()
    click_on "Add new company"
    fill_in "company_name", with: Faker::Company.name 
    click_button "Save"
  end

  def edit_new_user()
    find(:xpath, "//*[@id='uncontrolled-company_id']/option[3]").click
    fill_in 'last_name', with: Faker::Movies::StarWars.planet
    fill_in 'first_name', with: Faker::Name.name
    click_on "Update account"
  end
  def go_surgo_portal()
    visit "https://consumerdev.surgohealth.com/"
  end
end
