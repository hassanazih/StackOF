<%@ page import="org.isima.sof.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} ">
	<label for="username">
		<g:message code="user.username.label" default="Username" />
		
	</label>
	<g:textField name="username" value="${userInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		
	</label>
	<g:field type="password" name="password" value="${userInstance?.password}"/>
</div>


<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'website', 'error')} ">
	<label for="website">
		<g:message code="user.website.label" default="Website" />
		
	</label>
	<g:textField name="website" value="${userInstance?.website}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="user.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${userInstance?.email}"/>
</div>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'avatar', 'error')} ">
	<label for="avatar">
		<g:message code="user.avatar.label" default="Avatar" />
		
	</label>
	<g:textField name="avatar" value="${userInstance?.avatar}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'birthday', 'error')} required">
	<label for="birthday">
		<g:message code="user.birthday.label" default="Birthday" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="birthday" precision="day"  value="${userInstance?.birthday}"  />
</div>


<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'location', 'error')} ">
	<label for="location">
		<g:message code="user.location.label" default="Location" />
		
	</label>
	<g:textField name="location" value="${userInstance?.location}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="user.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${userInstance?.name}"/>
</div>


