package org.isima.sof

class Badge {
	String type;
	
	static belongsTo= [user:User];
    static constraints = {
    }
}
