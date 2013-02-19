import org.isima.sof.User

class BootStrap {

    def init = { servletContext ->
		new User(name:"test",username:"test",password:"test").save(failOnError:true)
		
    }
    def destroy = {
    }
}
