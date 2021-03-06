package org.isima.sof

class Comment {

	Date creationDate;
	String description;
	
	
	static belongsTo = [question:Question, user:User, answer:Answer];
    static constraints = {
		creationDate(nullable : false,blank:false)
		description(nullable : false,blank:false)
		answer(nullable:true,blank:true)
		question(nullable:true,blank:true)
    }
	
	String toString()
	{
		return description
	}
}
