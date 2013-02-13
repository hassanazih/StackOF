package org.isima.sof

class Tag {

	String name;
	
	static belongsTo = [question:Question];
    static constraints = {
    }
}
