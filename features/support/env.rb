require 'selenium-webdriver'
require 'rspec'
require 'page-object'
World(PageObject::PageFactory)
World(RSpec::Matchers)
