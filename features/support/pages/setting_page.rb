class SettingPage
  include(PageObject)
  link :tab_members, id: 'tab-members'
  link :icon_add, class: 'icon-add'
  def add_user

    tab_members.when_visible.click
    icon_add.when_visible.click
    wait.until { @browser.find_element(:id =>"principal_search") }
    @browser.find_element(:id, 'principal_search').send_keys 'SHTNlogin123456'
    sleep(2)
    #@browser.find_element(:id, 'principals').find_element(:type, 'checkbox').click
    @browser.find_element(:xpath,'/html/body/div[2]/div[2]/form/fieldset[1]/div/div/div/label[1]/input').click
    @browser.find_element(:class, 'roles-selection').find_element(:xpath, './/*[contains(., "Manager")]').click
    @browser.find_element(:id, 'member-add-submit').click

  end
end