require "site_prism"

class Login_page < sitePrism::Page
	set_url""
	#set_url_matcher /paypal(*.?)\.com/
	element :user_id, "#email"
	element :login_next, "#btnNext"
	element :password_id, "#password"
	element :login_button_id "#ul-btn"
	element :login_after_password_button, "#btnLogin"
	element :login_not_now_link, ""
end