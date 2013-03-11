
<%@ page import="org.isima.sof.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="list-user" class="content scaffold-list" role="main">
			<div id="tabs">
			    <ul id="ulTabView">
					<li onClick="refresh('tabs-1', 'userReputations');">
						<a href="#tabs-1">
						${message(code: 'reputation.label', default: 'Reputation')}
						</a>
					</li>
					<li onClick="refresh('tabs-2', 'newestUsers');">
						<a href="#tabs-2">${message(code: 'newusers.label', default: 'New Users')}</a>
					</li>
					<li onClick="refresh('tabs-3', 'voterUsers');">
						<a href="#tabs-3">${message(code: 'voters.label', default: 'Voters')}</a>
					</li>
					<li onClick="refresh('tabs-4', 'userEditors');">
						<a href="#tabs-3">${message(code: 'editors.label', default: 'Editors')}</a>
					</li>
					<li onClick="refresh('tabs-3', 'voterUsers');">
						<a href="#tabs-3">${message(code: 'moderators.label', default: 'Moderators')}</a>
					</li>
				</ul>
			   <div id="tabs-1">
						<g:render template="userReputations"/>
				</div>
				<div id="tabs-2">
						<g:render template="newestUsers" />
				</div>
				<div id="tabs-3">
						<g:render template="voterUsers" />
				</div>
				<div id="tabs-4">
						<g:render template="userEditors" />
				</div>
				<div id="tabs-5">
						<g:render template="userModerators" />
				</div>
		</div>
	</body>
</html>
