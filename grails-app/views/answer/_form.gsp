<%@ page import="org.isima.sof.Answer" %>





<div class="fieldcontain ${hasErrors(bean: answerInstance, field: 'description', 'error')} ">
	<g:hiddenField name="question.id" value="${questionInstance?.id}" />
	<resource:richTextEditor type="advanced" />
	
	<richui:richTextEditor name="answer.description" value="${fieldValue(bean:answerInstance,description:'myText').decodeHTML()}" width="525" />
</div>



