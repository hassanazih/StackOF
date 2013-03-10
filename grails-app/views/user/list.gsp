



<%@ page import="org.isima.sof.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
 <!--		
		<a href="#list-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
-->		
		<richui:tabView id="usersTabs"> 
			<richui:tabLabels> 
				<richui:tabLabel selected="true" title="reputation" /> 
				<richui:tabLabel title="new users" /> 
				<richui:tabLabel title="voters" />
				<richui:tabLabel title="moderators" />  	   
			</richui:tabLabels>

			<richui:tabContents>
				<richui:tabContent>
					<div id="list-user" class="content scaffold-list" role="main">
						<h1><g:message code="default.list.label" args="[entityName]" /></h1>
						<g:if test="${flash.message}">
						<div class="message" role="status">${flash.message}</div>
						</g:if>
						<div id="user-browser">
						<table>
							<tbody>
							<g:each in="${userInstanceList}" status="i" var="userInstance">
								<g:if test="${i==6}">
								<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
								</g:if>
								
								
								<td>
								<div class="user-info">
									<div class="user-gravatar48">
											<div class="gravatar-wrapper-48">
												<img alt="" src="http://i.stack.imgur.com/FQYB3.jpg?s=48&g=1">
											</div>
									</div>
									<div class="user-details">
											<g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "username")}</g:link>
											<br>
											<span class="user-location">${fieldValue(bean: userInstance, field: "location")}</span>
											<br>
											<span class="reputation-score" dir="ltr" title="">2,585</span>
									</div>
									
								</div>
								</td>
								<g:if test="${i==6}">
								</tr>
								</g:if>
							</g:each>
							</tbody>
						</table>
						</div>
						<div class="pagination">
							<g:paginate total="${userInstanceTotal}" />
						</div>
				</richui:tabContent>
				<richui:tabContent> 
				</richui:tabContent>
				<richui:tabContent> 
				</richui:tabContent>
				<richui:tabContent> 
				</richui:tabContent>
				<richui:tabContent> 
				</richui:tabContent>
			</richui:tabContents> 
		</richui:tabView>
		<div class="pagination">
				<g:paginate total="${userInstanceTotal}" />
		</div>
	</body>
</html>
