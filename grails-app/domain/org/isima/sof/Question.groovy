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
    }
}
