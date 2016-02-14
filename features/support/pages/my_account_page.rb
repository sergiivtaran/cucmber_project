class MyAccountPage
  include PageObject
  include RSpec::Matchers
  page_url "http://demo.redmine.org/my/account"
  div :flash_notice, id: 'flash_notice'
  div :logout, class: 'logout'
  div :login, class: 'login'
  div :projects, class: 'projects'
  div :icon_add, class: 'icon-add'
  text_field :project_name, id: 'project_name'
  button :submit, name: 'commit'
  div :tab_versions, id: 'tab-versions'
  element :version, xpath: '/html/body/div/div/div[1]/div[3]/div[2]/div[6]/p[2]/a'
  text_field :version_name, id: 'version_name'
# element :random, :random135, (css, xpath, blabla)
  def registered?
    flash_notice_element.when_visible.visible?
  end


  def logged_in?(login)
    log_approve = @browser.find_element(:id, 'loggedas')
    my_sign = log_approve.find_element(:class, 'user').text
    expect(login).to eql my_sign
  end

  def logout
    logout_element.click if logout_element.visible?
  end

  def logout?
    login_element.visible?
  end

  def create_project(login)
    projects_element.click
    # wait.until { @browser.find_element(:class =>"icon-add") }
    icon_add_element.when_visible.click
    # self.login = login
    v_version_name = login+"_project_#{rand(999)}".to_s
    # sleep 2
    project_name_element.when_visible
    self.project_name = v_version_name
    submit
    tab_versions_element.when_visible.click
    version_element.when_visible.click
    # sleep 2
    version_name_element.when_visible
    self.version_name = v_version_name
    submit
      #
      # @project_trackers = @browser.find_element(:id, 'new_project')
      # @project_trackers.find_element(:name, 'commit').click
      #
      # @browser.find_element(:id, 'flash_notice').displayed?
      # if @browser.find_element(:id, 'flash_notice').displayed? then puts 'New Project creation PASSED' else puts 'New Project creation FAILED' end
      # wait.until { @browser.find_element(:id =>"tab-versions") }
      # @browser.find_element(:id, 'tab-versions').click
      # wait.until { @browser.find_element(:class =>"icon-add") }
      # #@browser.find_element(:class, 'icon-add').click
      # @browser.find_element(:id, 'tab-content-versions').find_element(:class, 'icon-add').click
      # @browser.find_element(:id, 'version_name').send_keys login+"_project_#{a+12231553454}"
      # @browser.find_element(:name, 'commit').click
      # @browser.find_element(:id, 'flash_notice').displayed?
  end

end

