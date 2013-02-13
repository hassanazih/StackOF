<%@ page import="org.isima.sof.Comment" %>



<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'answer', 'error')} required">
	<label for="answer">
		<g:message code="comment.answer.label" default="Answer" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="answer" name="answer.id" from="${org.isima.sof.Answer.list()}" optionKey="id" required="" value="${commentInstance?.answer?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'creationDate', 'error')} required">
	<label for="creationDate">
		<g:message code="comment.creationDate.label" default="Creation Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="creationDate" precision="day"  value="${commentInstance?.creationDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="comment.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${commentInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'question', 'error')} required">
	<label for="question">
		<g:message code="comment.question.label" default="Question" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="question" name="question.id" from="${org.isima.sof.Question.list()}" optionKey="id" required="" value="${commentInstance?.question?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="comment.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${org.isima.sof.User.list()}" optionKey="id" required="" value="${commentInstance?.user?.id}" class="many-to-one"/>
</div>

