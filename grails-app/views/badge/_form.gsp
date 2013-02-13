<%@ page import="org.isima.sof.Badge" %>



<div class="fieldcontain ${hasErrors(bean: badgeInstance, field: 'type', 'error')} ">
	<label for="type">
		<g:message code="badge.type.label" default="Type" />
		
	</label>
	<g:textField name="type" value="${badgeInstance?.type}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: badgeInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="badge.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${org.isima.sof.User.list()}" optionKey="id" required="" value="${badgeInstance?.user?.id}" class="many-to-one"/>
</div>

