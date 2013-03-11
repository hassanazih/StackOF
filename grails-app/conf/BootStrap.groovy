import org.isima.sof.Answer
import org.isima.sof.Question
import org.isima.sof.SecRole
import org.isima.sof.SecUser
import org.isima.sof.SecUserSecRole
import org.isima.sof.Tag
import org.isima.sof.User

class BootStrap {

	def springSecurityService
	
    def init = { servletContext ->

		/* Creating roles to assign privileges to users*/		
		
		def userRole = SecRole.findByAuthority("ROLE_USER")?:new SecRole(authority:"ROLE_USER").save(failOnError:true);
		def adminRole = SecRole.findByAuthority("ROLE_ADMIN")?:new SecRole(authority:"ROLE_ADMIN").save(failOnError:true);
		
		
		/* Creating two users, one normal and one admin*/
		def user = new User(username : "admin",
							password : "123456",
							enabled : true	,
							email: "hassanazih@gmail.com",
							location: "Clermont-Ferrand, France")
		
		/* Validate user to save it safely*/
		if(user.validate())
		{
			user.save(failOnError:true)
			SecUserSecRole.create user, userRole
			log.debug "User "+user.name+" created "
		}
		else
		{
			log.error "Could not save user!!"
			log.error "${user.errors}"
		}
		
		def admin = new User(username : "user",
			password : "123456",
			enabled : true	,
			email: "hassanazih@gmail.com",
			location: "Casablanca, Maroc")

		if(admin.validate())
		{
			admin.save(failOnError:true)
			SecUserSecRole.create admin, adminRole
			log.debug "User "+admin.name+" created "
			
		}
		else
		{
			log.error "Could not save user!!"
			log.error "${admin.errors}"
		}

		
		/*
		 * Defining some tags
		 */
		
		def tag01 = new Tag(name:"Java")
		def tag02 = new Tag(name:"Xml")	
		def tag03 = new Tag(name:"UML")				
		def tag04 = new Tag(name:"C++")
		def tag05 = new Tag(name:"Groovy")
		def tag06 = new Tag(name:"Grails")
		def tag07 = new Tag(name:"Others")
		
		tag01.save(failOnError:true)
		tag02.save(failOnError:true)
		tag03.save(failOnError:true)
		tag04.save(failOnError:true)
		tag05.save(failOnError:true)
		tag06.save(failOnError:true)
		tag07.save(failOnError:true)
		
		
		
		
		
		/*
		 * Creating some questions
		 */
		def today = new Date()
		
		def question01 = new Question(user:user, creationDate:today, titre:"Looking for JExcel API", description:"Hi all, i'm looking for a Java api that can help me edit stylesheets. thank you")
		def question02 = new Question(user:user, creationDate:today, titre:"How to handle date types in xml", description:"Hi all, I want to build xml files automatically by a java program, but i don't know how can i express date expressions in an xml format. please help")
		def question03 = new Question(user:user, creationDate:today, titre:"Smat pointers", description:"Wrong section")
		def question04 = new Question(user:user, creationDate:today, titre:"Any plublicly available EBS snapshot of cyanogenmod sources", description:"Does anyone have a publicly accessible EBS snapshot of android repository for cyanogenmod to start off from. It seems much better than each individual cloning from main github repositories each time. One could then just create EBS volume from same and start using immediately. Is there any loophole to doing this.")
		
		question01.addToTags(tag01)
		question02.addToTags(tag02)
		question01.addToTags(tag04)
		question01.addToTags(tag05)
		
		
		question01.save(failOnError:true)
		question02.save(failOnError:true)
		question03.save(failOnError:true)
		question04.save(failOnError:true)
		
		question01.tags.size()
		/* Some answers */
		
		
		def answer01 = new Answer(user:user,description:"Reponse 1",creationDate:today,question:question01)
		def answer02 = new Answer(user:user,description:"Reponse 2",creationDate:today,question:question01)
		
		answer01.save(failOnError:true)
		answer02.save(failOnError:true)
		
		
    }
    def destroy = {
    }
}
