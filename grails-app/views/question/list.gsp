
<%@ page import="org.isima.sof.Question" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'question.label', default: 'Question')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		
				<!-- <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>-->
		<div id="" class="span16" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			
				<div class="row-fluid">
            		<div class="span10">
						<ul>
						<g:each in="${questionInstanceList}" status="i" var="questionInstance">
							<li class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
								${fieldValue(bean: questionInstance, field: "viewsNb")}
					
								${fieldValue(bean: questionInstance, field: "votesNb")}
								<g:link action="show" id="${questionInstance.id}">${fieldValue(bean: questionInstance, field: "creationDate")}</g:link>
					
								${fieldValue(bean: questionInstance, field: "description")} 
								
								${fieldValue(bean: questionInstance, field: "titre")}
					
								${fieldValue(bean: questionInstance, field: "user")}
					
									
					
							</li>
						</g:each>
						</ul>
				    </div><!--/row-->
        		</div><!--/span-->
			<div class="pagination">
				<g:paginate total="${questionInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
