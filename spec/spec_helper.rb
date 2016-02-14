require 'selenium-webdriver'
require 'rspec'
require 'page-object'

RSpec.configure do |config|
  config.include PageObject::PageFactory
  config.include RSpec::Matchers
  config.before :all do

    # @browser = Selenium::WebDriver.for :chrome
    @browser = Selenium::WebDriver.for :firefox
    @browser.manage.window.maximize

  end

  config.after :all do
    @browser.quit
  end


end

require_relative '../features/support/pages/login_page'
require_relative '../features/support/pages/my_account_page'
require_relative '../features/support/pages/password_page'
require_relative '../features/support/pages/registration_page'