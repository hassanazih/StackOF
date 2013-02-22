import org.isima.sof.SecRole
import org.isima.sof.SecUser
import org.isima.sof.SecUserSecRole
import org.isima.sof.User

class BootStrap {

	def springSecurityService
	
    def init = { servletContext ->
		//new User(name:"test",username:"test",password:"test").save(failOnError:true)
		
		
		def userRole = SecRole.findByAuthority("ROLE_USER")?:new SecRole(authority:"ROLE_USER").save(failOnError:true);
		def userAdmin = SecRole.findByAuthority("ROLE_ADMIN")?:new SecRole(authority:"ROLE_ADMIN").save(failOnError:true);
		
		def user = new User(username : "admin",
							password : "123456",
							enabled : true	,
							email: "hassanazih@gmail.com")
		
		//SecUserSecRole.create user, userRole
							
		
		if(user.validate())
		{
			user.save(failOnError:true)
			SecUserSecRole.create user, userRole
		}
    }
    def destroy = {
    }
}
