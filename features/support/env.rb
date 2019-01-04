require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'respec'
require 'selenium-Webdriver'
$LOAD_PATH.unshift("#{file.dirname(__file__)}/../..testsite")
require 'testsite'

#caypabara configuration
Capybara. configure  do |config|
config.default_driver = :Selenium	
config.javascript_driver = :Selenium
config.default_selector = :css
config.default_max_Wait_time = 60
config.match = :prefer_exact
config.app_host = "https://www.paypal.com/us/home"

end

# Setup Default driver as chrome
Capybara.default_driver = :selenium_chrome

#Chrome capabilites
caps = Selenium::WebDriver::Remote::Capabilities.chrome("chromeOption" =>{"args" =>["--testff-type"]})

#Register capybara driver
Capybara.Register_driver"chrome".to_sym  do |app|
caps = Selenium::Webdriver::Remote::Capabilities.chrome
	Capybara::Selenium::Driver.new(app,
	:browser=>"chrome". to_sym,
	:url=>'http://10.0.0.136:4444/wd/hub',
	:desired_capabilities=>caps)
end


$browser = Testsite.new