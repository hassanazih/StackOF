
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
					<g:if test="${questionInstance?.comments}">
						<g:each in="${questionInstance.comments}" var="c">
						<span class="comments" aria-labelledby="comments-label"><g:link controller="comment" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					</g:if>
			</div>
					
			
			
			
					
						
					
					
					
			
			<ol class=" " style="">
			
			
			
			
			
			
			
			
				
			
				<g:if test="${questionInstance?.answers}">
				<li class="fieldcontain">
					<span id="answers-label" class="property-label"><g:message code="question.answers.label" default="Answers" /></span>
					
						<g:each in="${questionInstance.answers}" var="a">
						<span class="property-value" aria-labelledby="answers-label"><g:link controller="answer" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				
			
			
				
			
				<g:if test="${questionInstance?.tags}">
				<li class="fieldcontain">
					
					
						<g:each in="${questionInstance.tags}" var="t">
						<span class="post-tag" aria-labelledby="tags-label"><g:link controller="tag" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			
			</ol>

		</div>
	</body>
</html>
