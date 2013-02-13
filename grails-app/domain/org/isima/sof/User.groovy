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
    }
}
