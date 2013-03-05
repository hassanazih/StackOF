package org.isima.sof

class Badge {
	String type;
	
	static belongsTo= [user:User];
    static constraints = {
		type(nullable : false,blank:false)
    }
	
	String toString()
	{
		return type
	}
}
