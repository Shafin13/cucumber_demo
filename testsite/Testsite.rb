$LOAD_PATH.unshift("#{file.dirname(__file__)}//pages")
require 'login_page'
require 'logout_page'

class Testsite
	def login
		Login_page.new
	end
	def logout
		Logout_page.new
	end
end