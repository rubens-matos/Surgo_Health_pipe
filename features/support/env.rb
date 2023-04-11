require "allure-cucumber"
require "capybara"
require "capybara/cucumber"
require_relative "helpers"
require_relative "actions"
require "faker"
require 'report_builder'
require 'time'

World(Helpers)
World(Actions)
#{"excludeSwitches" => ["enable-automation"]}


Capybara.configure do |config|
  config.default_driver = :selenium_chrome_headless
  #config.default_driver = :selenium_chrome
  config.default_max_wait_time = 10
  config.app_host = "https://admindev.surgohealth.com"
end

AllureCucumber.configure do |config|
  config.results_directory = "/lallure-results"
  config.clean_results_directory = true
end