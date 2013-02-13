package org.isima.sof

class Comment {

	Date creationDate;
	String description;
	
	
	static belongsTo = [question:Question, user:User, answer:Answer];
    static constraints = {
    }
}
