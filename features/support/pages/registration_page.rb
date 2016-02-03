class RegistrationPage
  include PageObject
  page_url "http://demo.redmine.org/account/register"

  text_field :login, id: 'user_login'
  text_field :password, id: 'user_password'
  text_field :password_confirmation, id: 'user_password_confirmation'
  text_field :user_first_name, id: 'user_firstname'
  text_field :user_last_name, id: 'user_lastname'
  text_field :user_mail, id: 'user_mail'
  button :submit, name: 'commit'

  def register
    login_element.when_visible
    login = 'SHTN_login' + rand(999).to_s
    self.login = login
    # self.login = "SHTN_login1"
    # password_element.when_visible
    password = "Password1"
    self.password = password
    # password_confirmation_element.when_visible
    self.password_confirmation = "Password1"
    # user_first_name_element.when_visible
    self.user_first_name = "Somename#{login}"
    # user_last_name_element.when_visible
    self.user_last_name = "Somelastname#{login}"
    # user_mail_element.when_visible
    self.user_mail = "Somemai1l#{login}@goo.com"
    submit
    login
  end
end

