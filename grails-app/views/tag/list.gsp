
<%@ page import="org.isima.sof.Tag" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tag.label', default: 'Tag')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<richui:tabView id="usersTabs"> 
			<richui:tabLabels> 
				<richui:tabLabel selected="true" title="new users" /> 
				<richui:tabLabel title="voters" /> 
				<richui:tabLabel title="editors" />
				<richui:tabLabel title="editors" />  	   
			</richui:tabLabels>

			<richui:tabContents>
				<richui:tabContent>
					<div id="list-tag" class="content scaffold-list" role="main">
						<h1>Tags</h1>
						<g:if test="${flash.message}">
						<div class="message" role="status">${flash.message}</div>
						</g:if>
						<div class="row-fluid">
							
				        		<g:each in="${tagInstanceList}" status="i" var="tagInstance">
				        			<div class="tag-summary span3">
										<i class="icon-tag"></i><g:link action="show" id="${tagInstance.id}">${fieldValue(bean: tagInstance, field: "name")}</g:link></i>
									</div>
								</g:each>
							
				        		
				        	
				        </div>
				    </div>
					</richui:tabContent>
				<richui:tabContent> 
					<p>nameTab</p> 
				</richui:tabContent>
				<richui:tabContent> 
					<p>newTab</p> 
				</richui:tabContent>
			</richui:tabContents> 
		</richui:tabView>				     
			
			<div class="pagination">
				<g:paginate total="${tagInstanceTotal}" />
			</div>
		
	</body>
</html>
