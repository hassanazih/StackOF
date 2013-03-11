
<%@ page import="org.isima.sof.Tag" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tag.label', default: 'Tag')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="list-tag" class="content scaffold-list" role="main">
			<div id="tabs">
			    <ul id="ulTabView">
					<li onClick="refresh('tabs-1', 'popularTags');">
						<a href="#tabs-1">${message(code: 'popular.label', default: 'Popular')}</a>
					</li>
					<li onClick="refresh('tabs-2', 'nameTgs');">
						<a href="#tabs-2">${message(code: 'name.label', default: 'Name')}</a>
					</li>
					<li onClick="refresh('tabs-3', 'newTags');">
						<a href="#tabs-3">${message(code: 'new.label', default: 'New')}</a>
					</li>
				</ul>
			   <div id="tabs-1">
						<g:render template="popularTags"/>
				</div>
				<div id="tabs-2">
						<g:render template="nameTgs" />
				</div>
				<div id="tabs-3">
						<g:render template="newTags" />
				</div>
			</div>
	    </div>
		<div class="pagination">
			<g:paginate total="${tagInstanceTotal}" />
		</div>
		
	</body>
</html>
