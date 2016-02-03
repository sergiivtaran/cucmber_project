Given(/^on Registration page$/) do
  visit(RegistrationPage)
end

When(/^I submit valid data$/) do
  @user = on(RegistrationPage).register
end

Then(/^I have registered user$/) do
  expect(on(MyAccountPage)).to be_registered
end