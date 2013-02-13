package org.isima.sof

class LoginController {

    def index() { }
	
	def login(){
		def username = params["user.username"]
		def password = params["user.password"]
		render text:"User: ${username}"
	}
	
	
	 
	
}
