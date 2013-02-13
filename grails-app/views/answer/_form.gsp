<%@ page import="org.isima.sof.Answer" %>



<div class="fieldcontain ${hasErrors(bean: answerInstance, field: 'comments', 'error')} ">
	<label for="comments">
		<g:message code="answer.comments.label" default="Comments" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${answerInstance?.comments?}" var="c">
    <li><g:link controller="comment" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="comment" action="create" params="['answer.id': answerInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'comment.label', default: 'Comment')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: answerInstance, field: 'creationDate', 'error')} required">
	<label for="creationDate">
		<g:message code="answer.creationDate.label" default="Creation Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="creationDate" precision="day"  value="${answerInstance?.creationDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: answerInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="answer.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${answerInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: answerInstance, field: 'question', 'error')} required">
	<label for="question">
		<g:message code="answer.question.label" default="Question" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="question" name="question.id" from="${org.isima.sof.Question.list()}" optionKey="id" required="" value="${answerInstance?.question?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: answerInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="answer.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${org.isima.sof.User.list()}" optionKey="id" required="" value="${answerInstance?.user?.id}" class="many-to-one"/>
</div>

