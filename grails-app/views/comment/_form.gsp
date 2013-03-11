<%@ page import="org.isima.sof.Comment" %>




<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'description', 'error')} ">
	<g:hiddenField name="question.id" value="${questionInstance?.id}" />
	<g:textField  class= "comment-text" placeholder="${message(code: 'comment.textbox', default: 'Newest')}"  name="comment.description" value="${commentInstance?.description}"/>
</div>

