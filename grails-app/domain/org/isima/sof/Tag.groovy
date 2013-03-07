package org.isima.sof

import java.util.Date;

class Tag {

	String name

	
    static constraints = {
		name(nullable : false,blank:false)
    }
	
	String toString()
	{
		return name
	}
}
