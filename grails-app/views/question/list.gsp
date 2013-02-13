
<%@ page import="org.isima.sof.Question" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'question.label', default: 'Question')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-question" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-question" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="creationDate" title="${message(code: 'question.creationDate.label', default: 'Creation Date')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'question.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="titre" title="${message(code: 'question.titre.label', default: 'Titre')}" />
					
						<th><g:message code="question.user.label" default="User" /></th>
					
						<g:sortableColumn property="viewsNb" title="${message(code: 'question.viewsNb.label', default: 'Views Nb')}" />
					
						<g:sortableColumn property="votesNb" title="${message(code: 'question.votesNb.label', default: 'Votes Nb')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${questionInstanceList}" status="i" var="questionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${questionInstance.id}">${fieldValue(bean: questionInstance, field: "creationDate")}</g:link></td>
					
						<td>${fieldValue(bean: questionInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: questionInstance, field: "titre")}</td>
					
						<td>${fieldValue(bean: questionInstance, field: "user")}</td>
					
						<td>${fieldValue(bean: questionInstance, field: "viewsNb")}</td>
					
						<td>${fieldValue(bean: questionInstance, field: "votesNb")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${questionInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
