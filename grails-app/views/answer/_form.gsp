<%@ page import="org.isima.sof.Answer" %>





<div class="fieldcontain ${hasErrors(bean: answerInstance, field: 'description', 'error')} ">
	<resource:richTextEditor type="advanced" />
	
	<richui:richTextEditor name="description" value="${fieldValue(bean:answerInstance,description:'myText').decodeHTML()}" width="525" />
</div>



