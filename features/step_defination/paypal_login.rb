
require  'selenium-webdriver'
require 'pry'
$LOAD_PATH.unshift("#{file.dirname(__file__)}/../..testsite")
require'testsite'

#driver = Selenium::WebDriver.for :chrome

Given (/^I am on paypal website$/) do
	$browser.login.load
	sleep 4
end

And (/^I click on sign in button$/) do
	$browser.login.login_button_id.click
	sleep 4
end

And (/^I enter username and password$/) do
	#driver.find_element(:id,"email").send_keys("kazd50@yahoo.com")
	#sleep 5
	#driver.find_element(:id,"btnNext").click
	#sleep 5
	#driver.find_element(:id,"password").send_keys("123456azad")
	#sleep 4
	$browser.login.user_id.set(user)
	$browser.login.login_next.click
	$browser.login.password_id.set(pass)
	sleep 5
end

When (/^I click on log in button$/) do
	driver.find_element(:id,"btnLogin").click
	sleep 4
end

Then (/^I should be able to see details and log out$/) do
	driver.find_element(:id,"header-logout").click
	sleep 2
end

 And(/^I validate the background image$/) do
 	binding.pry 
	$browser.login.backgroundimage.style("background")
	end

