
<%@ page import="org.isima.sof.Question" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'question.label', default: 'Question')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-question" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-question" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list question">
			
				<g:if test="${questionInstance?.answers}">
				<li class="fieldcontain">
					<span id="answers-label" class="property-label"><g:message code="question.answers.label" default="Answers" /></span>
					
						<g:each in="${questionInstance.answers}" var="a">
						<span class="property-value" aria-labelledby="answers-label"><g:link controller="answer" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${questionInstance?.comments}">
				<li class="fieldcontain">
					<span id="comments-label" class="property-label"><g:message code="question.comments.label" default="Comments" /></span>
					
						<g:each in="${questionInstance.comments}" var="c">
						<span class="property-value" aria-labelledby="comments-label"><g:link controller="comment" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${questionInstance?.creationDate}">
				<li class="fieldcontain">
					<span id="creationDate-label" class="property-label"><g:message code="question.creationDate.label" default="Creation Date" /></span>
					
						<span class="property-value" aria-labelledby="creationDate-label"><g:formatDate date="${questionInstance?.creationDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="question.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${questionInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionInstance?.tags}">
				<li class="fieldcontain">
					<span id="tags-label" class="property-label"><g:message code="question.tags.label" default="Tags" /></span>
					
						<g:each in="${questionInstance.tags}" var="t">
						<span class="property-value" aria-labelledby="tags-label"><g:link controller="tag" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${questionInstance?.titre}">
				<li class="fieldcontain">
					<span id="titre-label" class="property-label"><g:message code="question.titre.label" default="Titre" /></span>
					
						<span class="property-value" aria-labelledby="titre-label"><g:fieldValue bean="${questionInstance}" field="titre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="question.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${questionInstance?.user?.id}">${questionInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionInstance?.viewsNb}">
				<li class="fieldcontain">
					<span id="viewsNb-label" class="property-label"><g:message code="question.viewsNb.label" default="Views Nb" /></span>
					
						<span class="property-value" aria-labelledby="viewsNb-label"><g:fieldValue bean="${questionInstance}" field="viewsNb"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionInstance?.votesNb}">
				<li class="fieldcontain">
					<span id="votesNb-label" class="property-label"><g:message code="question.votesNb.label" default="Votes Nb" /></span>
					
						<span class="property-value" aria-labelledby="votesNb-label"><g:fieldValue bean="${questionInstance}" field="votesNb"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${questionInstance?.id}" />
					<g:link class="edit" action="edit" id="${questionInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>