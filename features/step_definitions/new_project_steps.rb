When(/^I create new project$/) do
  on(MyAccountPage).create_project(@user)
end