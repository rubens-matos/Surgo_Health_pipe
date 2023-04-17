class Dashboards < SitePrism::Page
    element :savedDashboard, :xpath, "//*[@id='panel1d-header']/div[1]"
    element :mapIcon, :xpath, "//*[@id='root']/div[1]/div[1]/div/ul[1]/li[2]"
    element :theme, :xpath, '//*[@id="root"]/div[1]/div[2]/div[1]/div/div/div/div/div/div[2]/ul/div[1]'
    element :btnAllStates, :xpath, '/html/body/div[1]/div[1]/div[2]/div[2]/div/div/div[4]/div/div/div'
    element :selectState, :xpath, '//*[@id="menu-country"]/div[3]/ul/li[5]'
    element :state, :xpath, '//*[@id="menu-country"]/div[3]/ul/li[4]'
    element :saveDash, :xpath, '//*[@id="root"]/div[1]/div[2]/div[3]/div[2]/div[4]/div[3]/button'
    element :btnHome, :xpath, '//*[@id="root"]/div[1]/div[1]/div/ul[1]/li[1]'
    def selectTheme()
        mapIcon.click
        theme.click
        btnAllStates.click
        selectState.click
    end
    def nameDash()
        btnHome.click
    end
end
