And(/^I have changed password$/) do


  on(PasswordPage).change_password
   # class icon-passwd
   #
   # @browser.find_element(:class, 'icon-passwd').click
   # @browser.find_element(:id, 'password').send_keys password_1
   # @browser.find_element(:id, 'new_password').send_keys password_2
   # @browser.find_element(:id, 'new_password_confirmation').send_keys password_2
   # puts "new password is: unique_password#{a+1}"
   # @browser.find_element(:name, 'commit').click
   # @browser.find_element(:id, 'flash_notice').displayed?
   # if @browser.find_element(:id, 'flash_notice').displayed? then puts 'Changing password passed' else puts 'Changing password failed' end
   #
   #
   # end
end