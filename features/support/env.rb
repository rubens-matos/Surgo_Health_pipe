require "allure-cucumber"
require "capybara"
require "capybara/cucumber"
require_relative "helpers"
require_relative "actions"
require "faker"
require 'report_builder'
require 'time'
require 'site_prism'

World(Helpers)
World(Actions)

# Registrando o driver
Capybara.register_driver :site_prism do |app|
  Capybara::Selenium::Driver.new(app, browser:  :chrome)  # Vamos utilizar o navegador chrome
end

# Configurando o driver
Capybara.configure do |config|
  config.run_server = false
  Capybara.default_driver = :site_prism
  Capybara.page.driver.browser.manage.window.maximize  # Maximizando a tela
  config.default_max_wait_time = 10  # Tempo máximo que a automação vai esperar para a página carregar ou esperar um elemento
  config.app_host = "https://admindev.surgohealth.com"
end
#{"excludeSwitches" => ["enable-automation"]}
#
#Capybara.register_driver :headless_chrome do |app|
#  capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
#    chromeOptions: { args: %w[ headless
#                               disable-gpu
#                               mute-audio
#                               disable-extensions
#                               disable-password-generation
#                               disable-password-manager-reauthentication
#                               disable-save-password-bubble
#                               window-size=1280,800)
#                             ]
#                    }
#  )
#  Capybara::Selenium::Driver.new(
#    app,
#    browser: :chrome,
#    desired_capabilities: capabilities
#  )
#end

#Capybara.default_driver = :headless_chrome

#Capybara.configure do |config|
  #config.default_driver = :selenium_chrome_headless
#  config.default_driver = :selenium_chrome
#  config.default_max_wait_time = 10
#  config.app_host = "https://admindev.surgohealth.com"
#end

AllureCucumber.configure do |config|
  config.results_directory = "/lallure-results"
  config.clean_results_directory = true
end
