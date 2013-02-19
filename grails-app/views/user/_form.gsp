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

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'answers', 'error')} ">
	<label for="answers">
		<g:message code="user.answers.label" default="Answers" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.answers?}" var="a">
    <li><g:link controller="answer" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="answer" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'answer.label', default: 'Answer')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'badges', 'error')} ">
	<label for="badges">
		<g:message code="user.badges.label" default="Badges" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.badges?}" var="b">
    <li><g:link controller="badge" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="badge" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'badge.label', default: 'Badge')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'questions', 'error')} ">
	<label for="questions">
		<g:message code="user.questions.label" default="Questions" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.questions?}" var="q">
    <li><g:link controller="question" action="show" id="${q.id}">${q?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="question" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'question.label', default: 'Question')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'comments', 'error')} ">
	<label for="comments">
		<g:message code="user.comments.label" default="Comments" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.comments?}" var="c">
    <li><g:link controller="comment" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="comment" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'comment.label', default: 'Comment')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'profileViews', 'error')} required">
	<label for="profileViews">
		<g:message code="user.profileViews.label" default="Profile Views" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="profileViews" type="number" value="${userInstance.profileViews}" required=""/>
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

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'admin', 'error')} ">
	<label for="admin">
		<g:message code="user.admin.label" default="Admin" />
		
	</label>
	<g:checkBox name="admin" value="${userInstance?.admin}" />
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

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'inscriptionDate', 'error')} required">
	<label for="inscriptionDate">
		<g:message code="user.inscriptionDate.label" default="Inscription Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="inscriptionDate" precision="day"  value="${userInstance?.inscriptionDate}"  />
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

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'reputationScore', 'error')} required">
	<label for="reputationScore">
		<g:message code="user.reputationScore.label" default="Reputation Score" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="reputationScore" type="number" value="${userInstance.reputationScore}" required=""/>
</div>

