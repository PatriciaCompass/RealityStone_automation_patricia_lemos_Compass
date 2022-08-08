require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'cucumber'

ENVIRONMENT = ENV['ENVIRONMENT']
ENVIRONMENT_CONFIG = YAML.load_file(File.dirname(__FILE__) + "/environment/#{ENVIRONMENT}.yml")
puts ENVIRONMENT_CONFIG
URL = ENVIRONMENT_CONFIG['url']

Capybara.register_driver :my_chrome do |app|
    caps = Selenium::webdriver::Remote::Capabilities.chrome()
    Capybara::Selenium::Driver.new(app, :browser => :chrome, options: options)


Capybara.default_driver = :selenium_chrome
Capybara.app_host = URL