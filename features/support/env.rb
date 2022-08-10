require 'cucumber'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'selenium-webdriver'
require 'rspec'
require 'pry'

ENVIRONMENT = ENV['ENVIRONMENT']
ENVIRONMENT_CONFIG = YAML.load_file(File.dirname(__FILE__) + "/environment/#{ENVIRONMENT}.yml")
puts ENVIRONMENT_CONFIG
URL = ENVIRONMENT_CONFIG['url']

Capybara.register_driver :my_chrome do |app|
    caps = Selenium::WebDriver::Remote::Capabilities.chrome("goog:chromeOptions" => {"args" => ["--incognito", 
        "--ignore-certificates-erros", "--disable-popup-blocking", "--start-maximized", "--enable-debug",
        "--window-size=1420,835", "--ignore-ssl-errors", "--disable-gpu","--disable-translate","--no-sandbox",
        "--disable-impl-side-painting", "--debug_level=3", "--acceptInsecureCerts=true"]})
    
    if  ENV['HEADLESS']
       caps['goog:chromeOptions']['args'] << '--headless'
       caps['goog:chromeOptions']['args'] << '--disable-site-isolation-trials'
    end
    client = Selenium::WebDriver::Remote::Http::Default.new
          
    options = { browser: :chrome, desired_capabilities: caps }

    puts 'Raising driver'
    Capybara::Selenium::Driver.new(app, options)
end

Capybara.default_driver         = :my_chrome
Capybara.app_host               = URL
Capybara.default_max_wait_time  = 10

