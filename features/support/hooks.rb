Before do
  @browser = Selenium::WebDriver.for :firefox
  @wait = Selenium::WebDriver::Wait.new
end
#
# After do
# @browser.quit
# end
