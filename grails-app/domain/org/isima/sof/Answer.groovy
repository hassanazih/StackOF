package org.isima.sof

class Answer {

	Date creationDate;
	String description;
	
	static hasMany = [comments:Comment];
	static belongsTo = [question:Question,user:User];

    static constraints = {
    }
}
