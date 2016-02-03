class MyAccountPage
  include PageObject
  include RSpec::Matchers
  page_url "http://demo.redmine.org/my/account"
  div :flash_notice, id: 'flash_notice'
  div :logout, class: 'logout'
  div :login, class: 'login'
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
end

