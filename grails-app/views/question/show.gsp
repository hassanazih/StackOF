
<%@ page import="org.isima.sof.Question" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'question.label', default: 'Question')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="" class="span16" role="main">
			<h2><g:fieldValue bean="${questionInstance}" field="titre"/></h2>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<div class="statscontainer">
				<div class="vote">
	    			<a class="vote-up-off" title="+1">up vote</a>
	    			<span class="property-value" aria-labelledby="votesNb-label"><g:fieldValue bean="${questionInstance}" field="votesNb"/></span>
	    			<a class="vote-down-off" title="-1">down vote</a>
				</div>
			</div>
			<div class="span8">
				<div class="excerpt"> ${fieldValue(bean: questionInstance, field: "description")} </div>
					<div class="started fr">
						<div class="user-info ">
							<div class="user-action-time">
								created
								<span class="relativetime" title="2013-03-04 13:58:32Z">${fieldValue(bean: questionInstance, field: "creationDate")}</span>
							</div>
							<div class="user-gravatar32">
								<a href="/users/138030/rakesh">
										<img width="32" height="32" alt="" src="http://www.gravatar.com/avatar/7fd70fb599d55a9639e248231d1f81ba?s=32&d=identicon&r=PG">
								</a>
							</div>
							<div class="user-details">
								<g:link action="show" id="${questionInstance.user.id}" >	${fieldValue(bean: questionInstance, field: "user")} </g:link>
								
								<br>
								<span class="reputation-score" dir="ltr" title="reputation score">0</span>
							</div>
						</div>
					</div>
					<div class="comments span4">
					<g:if test="${questionInstance?.comments}">
						<g:each in="${questionInstance.comments}" var="c">
						<span aria-labelledby="comments-label">
							${c?.encodeAsHTML()} - 
							<g:link controller="user" action="show" id="${c.user.id}" >${c.user.toString()}</g:link>
							${c.creationDate}
						</span>
						</g:each>
					</g:if>
					</div>
					<g:if test="${questionInstance?.tags}">
					<g:each in="${questionInstance.tags}" var="t">
						<span class="post-tag" aria-labelledby="tags-label"><g:link controller="tag" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
					</g:each>
					</g:if>
			</div>
				
					
			<div class="statscontainer">
				<div class="vote">
	    			<a class="vote-up-off" title="+1">up vote</a>
	    			<span class="property-value" aria-labelledby="votesNb-label"><g:fieldValue bean="${questionInstance}" field="votesNb"/></span>
	    			<a class="vote-down-off" title="-1">down vote</a>
				</div>
			</div>
			<g:if test="${questionInstance?.answers}">
				
				<h3><g:message code="question.answers.label" default="Answers" /></h3>
				<g:each in="${questionInstance.answers}" var="a">
					<div class="span8">
						<div class="excerpt"> ${a.description} </div>
							<div class="started fr">
								<div class="user-info ">
									<div class="user-action-time">
										answered
										<span class="relativetime" title="2013-03-04 13:58:32Z">${a.creationDate}</span>
									</div>
									<div class="user-gravatar32">
										<a href="/users/138030/rakesh">
												<img width="32" height="32" alt="" src="http://www.gravatar.com/avatar/7fd70fb599d55a9639e248231d1f81ba?s=32&d=identicon&r=PG">
										</a>
									</div>
									<div class="user-details">
										<g:link action="show" id="${a.user.id}" >	${a.user.toString()} </g:link>
										
										<br>
										<span class="reputation-score" dir="ltr" title="reputation score">0</span>
									</div>
								</div>
							</div>	
						</div>
					</g:each>
				</g:if>
					
		

		</div>
	</body>
</html>
