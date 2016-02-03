Given(/^on Log in pageone$/) do
  # @browser.get 'http://demo.redmine.org/login'
  visit(LoginPage)
end

When(/^I submit valid credentials1$/) do
  on(LoginPage).login_in(@user)
end



Then(/^I am logged in$/) do
  expect(on(MyAccountPage)).to be_logged_in(@user)
end

Given(/^I have registered new user$/) do
  visit(RegistrationPage)
  @user = on(RegistrationPage).register
  on(MyAccountPage).logout
end

Then(/^I am logged out$/) do
  expect(on(MyAccountPage)).to be_logout
end