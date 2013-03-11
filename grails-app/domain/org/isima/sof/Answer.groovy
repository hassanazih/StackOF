package org.isima.sof

class Answer {

	Date creationDate=new Date();
	String description;
	int votesNb=0;
	
	static hasMany = [comments:Comment];
	static belongsTo = [question:Question,user:User];

    static constraints = {
		creationDate(nullable : false,blank:false)
		description(nullable : false,blank:false)
		comments(nullable:true)
    }
	
	String toString()
	{
		return description
	}
}
