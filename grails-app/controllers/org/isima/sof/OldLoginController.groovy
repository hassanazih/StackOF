package org.isima.sof

class OldLoginController {

    def index() { 
		if(session.user)
			redirect(controller:"question",action:"list")
	
	}
	
	def login = {
		if(session.user)
			redirect(controller:"question",action:"list")
	}
	
	def authenticate = {
		def user = User.findByUsernameAndPassword(params.username, params.password)
		
		if(user){
		  session.user = user
		  flash.message = "Hello ${user.name}!"
		  redirect(action:"login")
		}else{
		  flash.message = "The username/password you entered is not correct. Please try again."
		  redirect(action:"index")
		}
	}
	
	def logout = {
		flash.message = "Goodbye ${session.user.name}"
		session.user = null
		redirect(controller:"Question", action:"list")
	  }

	
	
	 
	
}
