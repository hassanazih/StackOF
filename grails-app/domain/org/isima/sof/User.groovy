package org.isima.sof

class User extends SecUser{

	Date inscriptionDate;
	String avatar;
	String name;
	int profileViews;
	String website;
	Date birthday;
	String location;
	String email;
	
	static hasMany = [badges:Badge, answers:Answer, questions:Question, comments:Comment];
    static constraints = {
		answers(nullable : true)
		badges(nullable : true)
		questions(nullable : true)
		comments(nullable : true)
		profileViews(nullable : true)
		website(nullable : true)
		email(nullable : false,blank:false, email:true)
		profileViews(nullable:true)
		birthday(nullable:true)
		location(nullable:true)
		name(nullable:true)
		avatar(nullable:true)
		inscriptionDate(nullable:true)

    }
	
	String toString()
	{
		name
	}
}
