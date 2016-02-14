Given(/^on Registration page$/) do
  visit(RegistrationPage)
end

When(/^I submit valid data$/) do
  @user = on(RegistrationPage).register
end

Then(/^I have registered user$/) do
  expect(on(MyAccountPage)).to be_registered
  # expect(on(@current_page)).to be_registered
end

Given(/^I have registered "([^"]*)" user$/) do |arg|
  visit(RegistrationPage)
  @user = on(RegistrationPage).register(arg)
end