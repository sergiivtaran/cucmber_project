class PasswordPage
  include PageObject
  page_url "http://demo.redmine.org/my/password"
  text_field :password, id: 'password'
  text_field :new_password, id: 'new_password'
  text_field :new_password_conf, id: 'new_password_confirmation'
  # text_field :new_password, id: 'new_password_confirmation'
  button :submit, name: 'commit'
  div :logout, class: 'icon-passwd'


  def change_password
    logout_element.click if logout_element.visible?
    self.password = "Password1"
    some_password = "Password2"
    self.new_password = some_password
    self.new_password_conf = some_password
    submit

  end
end
