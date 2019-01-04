require "site_prism"

class Logout_page < sitePrism::Page
	set_url""
	#set_url_matcher /paypal(*.?)\.com/
	element :logout_id, "#header-logout"
end