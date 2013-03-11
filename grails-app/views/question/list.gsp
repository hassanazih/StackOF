
<%@ page import="org.isima.sof.Question" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'question.label', default: 'Question')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="span11" role="main">	
			<div id="tabs">
				
			    <ul id="ulTabView">
			    
					<li>
						<a href="#tabs-1" onClick="refresh('tabs-1', 'newestQuestions');">
						${message(code: 'newest.label', default: 'Newest')}
						</a>
					</li>
				
					<li onClick="refresh('tabs-2', 'viewedQuestions');">
						<a href="#tabs-2">${message(code: 'mostviewed.label', default: 'Most Viewed')}</a>
					</li>
				
					<li onClick="refresh('tabs-3', 'votedQuestions');">
						<a href="#tabs-3">${message(code: 'mostvoted.label', default: 'Most Voted')}</a>
					</li>
				
				</ul>
			   
			   <div id="tabs-1">
						<g:render template="newestQuestions"/>
				</div>
				<div id="tabs-2">
						<g:render template="viewedQuestions" />
				</div>
				<div id="tabs-3">
						<g:render template="votedQuestions" />
				</div>
			</div>	
		</div>	
		
		<div class="span3">
         		<div class="well sidebar-nav">
            		<ul class="nav nav-list">
              			<li class="nav-header"><g:message code="recent.tags"  /></li>
            				<g:each in="${tagInstanceList}" status="i" var="tagInstance">
								<li></i><g:link action="show" id="${tagInstance.id}">${fieldValue(bean: tagInstance, field: "name")}</g:link></li>
							</g:each>
            		</ul>
          		</div>
        	</div>

		 <hr>
	</body>
</html>
