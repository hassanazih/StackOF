package org.isima.sof

class User {

	Date inscriptionDate;
	int reputationScore;
	String avatar;
	String name;
	int profileViews;
	String website;
	Date birthday;
	String location;
	String password;
	String username;
	String email;
	Boolean admin;
	
	static hasMany = [badges:Badge, answers:Answer, questions:Question, comments:Comment];
    static constraints = {
		username(unique : true,nullable : false,blank:false)
		password(password : true,nullable : false,blank:false)
		answers(nullable : true)
		badges(nullable : true)
		questions(nullable : true)
		comments(nullable : true)
		profileViews(nullable : true)
		website(nullable : true)
		email(nullable : false,blank:false, email:true)
		
		
    }
	
	String toString()
	{
		name
	}
}
