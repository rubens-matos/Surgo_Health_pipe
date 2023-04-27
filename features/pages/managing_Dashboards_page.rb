class Dashboards < SitePrism::Page
    @vet = ['"AK"', '"CO"', '"IL"', '"IN"', '"IA"'].sample
    element :savedDashboard, :xpath, "//*[@id='panel1d-header']/div[1]"
    element :mapIcon, :xpath, "//*[@id='root']/div[1]/div[1]/div/ul[1]/li[2]"
    element :theme, :xpath, '//*[@id="root"]/div[1]/div[2]/div[1]/div/div/div/div/div/div[2]/ul/div[1]'
    element :selectAllStates, 'div > div > div > div > z'
    element :selectState, :xpath, "//*[@data-value=#{@vet}]"
    element :state, :xpath, '//*[@id="menu-country"]/div[3]/ul/li[4]'
    element :saveDash, :xpath, '//*[@id="root"]/div[1]/div[2]/div[3]/div[2]/div[4]/div[3]/button'
    element :btnHome, :xpath, '//*[@id="root"]/div[1]/div[1]/div/ul[1]/li[1]'
    element :btnEditDash, :xpath, '//*[@id="root"]/div[1]/div[2]/div/div/div/div[1]/div/div/div/div[1]/div[2]/button'
    element :optionsSavedItem, :xpath, '//*[@id="root"]/div[1]/div[2]/div/div/div/div[1]/div/div/div/div[1]/div[2]/button'
    elements :btnDeleteItem, :xpath, '//*[@id="menu-appbar"]/div[3]/ul/li[1]/p'
    elements :btnConfirmDelete, :xpath, "/html/body/div[7]/div[3]/ul/li[1]/p"
    elements :quantityItemsSaved, :xpath, '//*[@id="root"]/div[1]/div[2]/div/div'
    
    def selectTheme() 
        mapIcon.click
        theme.click

        #@page.find('#mui-component-select-country').all[2].find('Button').click
        #find_button(selectAllStates).click
        page.all('.MuiFormControl-root css-13sljp9').each do |el|
        sleep 0.3
            el.click
        end

       
       # selectState.click
    end
    def nameDash()
        btnHome.click
    end
    def deleteItem()
        optionsSavedItem.click
        btnDeleteItem[0].click(x: 5, y: 5)
        click_on "Delete"
    end
end
