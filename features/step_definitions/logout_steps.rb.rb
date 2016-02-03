Given(/^I have loggedin user$/) do
  visit(RegistrationPage)
  @user = on(RegistrationPage).register
  on(MyAccountPage).logout
  visit(LoginPage)

end