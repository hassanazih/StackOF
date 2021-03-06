package org.isima.sof

class Question {
	
	Date creationDate;
	int viewsNb;
	String description;
	String titre;
	int votesNb;
	
	static hasMany = [ answers:Answer, comments:Comment, tags:Tag];
	static belongsTo= [user:User];
    static constraints = {
		answers(nullable:true)
		comments(nullable:true)
	//	tags(nullable:true)
		creationDate(nullable : false,blank:false)
		description(nullable : false,blank:false, maxSize : 1000)
		titre(nullable : false,blank:false,maxSize : 400)
		
    }
	
	
}
