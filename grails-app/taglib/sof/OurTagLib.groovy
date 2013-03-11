package sof

class OurTagLib {
	
		def redirectQuestionsPage = {
		  response.sendRedirect("${request.contextPath}/question/")
		}
	  

}
