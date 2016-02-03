class LoginPage
  include PageObject
  page_url "http://demo.redmine.org/login"
  text_field :login, id: 'username'
  text_field :password, id: 'password'
  button :submit, name: 'login'

  def login_in(login)
    # login_element.when_visible.visible?
    # login = 'SHTN_login' + rand(999)
    self.login = login
    # self.login = "SHTN_login1"
    # password_element.when_visible
    self.password = "Password1"
    submit

  end
end
