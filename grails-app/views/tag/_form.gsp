<%@ page import="org.isima.sof.Tag" %>



<div class="fieldcontain ${hasErrors(bean: tagInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="tag.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${tagInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tagInstance, field: 'question', 'error')} required">
	<label for="question">
		<g:message code="tag.question.label" default="Question" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="question" name="question.id" from="${org.isima.sof.Question.list()}" optionKey="id" required="" value="${tagInstance?.question?.id}" class="many-to-one"/>
</div>

