require 'capybara/cucumber'
require 'selenium-webdriver'
require 'pry'

  Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'http://www.authenticfeet.com.br/'
    config.default_max_wait_time = 5
  end

