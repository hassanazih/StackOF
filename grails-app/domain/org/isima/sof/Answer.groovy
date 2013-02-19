package org.isima.sof

class Answer {

	Date creationDate;
	String description;
	
	static hasMany = [comments:Comment];
	static belongsTo = [question:Question,user:User];

    static constraints = {
		creationDate(nullable : false,blank:false)
		description(nullable : false,blank:false)
    }
}
