
<%@ page import="org.isima.sof.Comment" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'comment.label', default: 'Comment')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-comment" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-comment" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="comment.answer.label" default="Answer" /></th>
					
						<g:sortableColumn property="creationDate" title="${message(code: 'comment.creationDate.label', default: 'Creation Date')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'comment.description.label', default: 'Description')}" />
					
						<th><g:message code="comment.question.label" default="Question" /></th>
					
						<th><g:message code="comment.user.label" default="User" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${commentInstanceList}" status="i" var="commentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${commentInstance.id}">${fieldValue(bean: commentInstance, field: "answer")}</g:link></td>
					
						<td><g:formatDate date="${commentInstance.creationDate}" /></td>
					
						<td>${fieldValue(bean: commentInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: commentInstance, field: "question")}</td>
					
						<td>${fieldValue(bean: commentInstance, field: "user")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${commentInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
