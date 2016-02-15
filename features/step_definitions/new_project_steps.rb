When(/^I create new project$/) do
  on(MyAccountPage).create_project(@user)
end

And (/^I add my users$/) do
  # visit (SettingPage)
  on(SettingPage).add_users
# puts 'users created'
end