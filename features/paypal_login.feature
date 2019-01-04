Feature:  Sign in functionality


Scenario Outline: Sign in to paypal and log out from paypal account with correct credentials
Given I am on paypal website
And I validate the background image
And I click on sign in button
And I enter <username> and <password>
When I click on log in button
Then I should be able to see details and log out

Examples:
|username|password|
|kazd50@yahoo.com|123456azad|







