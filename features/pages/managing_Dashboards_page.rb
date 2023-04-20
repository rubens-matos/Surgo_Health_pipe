class Dashboards < SitePrism::Page
    element :savedDashboard, :xpath, "//*[@id='panel1d-header']/div[1]"
    element :mapIcon, :xpath, "//*[@id='root']/div[1]/div[1]/div/ul[1]/li[2]"
    element :theme, :xpath, '//*[@id="root"]/div[1]/div[2]/div[1]/div/div/div/div/div/div[2]/ul/div[1]'
    element :selectAllStates, :xpath, '/html/body/div[1]/div[1]/div[2]/div[2]/div/div/div[4]/div'
    element :selectState, :xpath, '//*[@id="menu-country"]/div[3]/ul/li[5]'
    element :state, :xpath, '//*[@id="menu-country"]/div[3]/ul/li[4]'
    element :saveDash, :xpath, '//*[@id="root"]/div[1]/div[2]/div[3]/div[2]/div[4]/div[3]/button'
    element :btnHome, :xpath, '//*[@id="root"]/div[1]/div[1]/div/ul[1]/li[1]'
    element :btnEditDash, :xpath, '//*[@id="root"]/div[1]/div[2]/div/div/div/div[1]/div/div/div/div[1]/div[2]/button'
    element :optionsSavedItem, :xpath, '//*[@id="root"]/div[1]/div[2]/div/div/div/div[1]/div/div/div/div[1]/div[2]/button'
    elements :btnDeleteItem, :xpath, '//*[@id="menu-appbar"]/div[3]/ul'
    element :dtnConfirmDelete, :xpath, '//*[contains(text(),"Delete")]'
    elements :quantityItemsSaved, :xpath, '//*[@id="root"]/div[1]/div[2]/div/div'
    def selectTheme()
        mapIcon.click
        theme.click
        sleep 2
        selectAllStates.click
        selectState.click
    end
    def nameDash()
        btnHome.click
    end
    def deleteItem()
        optionsSavedItem.click
        btnDeleteItem[0].click(x: 5, y: 5)
        dtnConfirmDelete.click
    end
end
