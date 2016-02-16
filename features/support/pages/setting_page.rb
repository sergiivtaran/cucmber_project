class SettingPage
  include(PageObject)
  link :tab_members, id: 'tab-members'
  element :icon_add, class: 'icon-add'
  text_field :principal_search, id: 'principal_search'
  checkbox :first_user, xpath: '/html/body/div[2]/div[2]/form/fieldset[1]/div/div/div/label[1]/input'
  checkbox :second_user, xpath: '/html/body/div[2]/div[2]/form/fieldset[1]/div/div/div/label[2]/input'
  checkbox :third_user, xpath: '/html/body/div[2]/div[2]/form/fieldset[1]/div/div/div/label[3]/input'
  checkbox :developer_role, xpath: '/html/body/div[2]/div[2]/form/fieldset[2]/div/label[2]/input'
  element :add_submit, id: 'member-add-submit'

  def add_users

    tab_members_element.when_visible.click
    icon_add_element.when_visible.click
    principal_search_element.when_visible
    self.principal_search = 'SHTN_'
    sleep 2

    #@browser.find_element(:id, 'principals').find_element(:type, 'checkbox').click
    check_first_user
    check_second_user
    check_third_user
    check_developer_role
    add_submit_element.click

  end
end