
<!DOCTYPE html>
<html lang="en">
  <head>
  	<meta name="layout" content="main">
	<title>Our Stack Overflow</title>
  </head>

  <body>
				
		<div id="" class="span11" role="main">
			<h2>Welcome</h2>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			
				<!-- <div class="row-fluid"> -->
				
            		<!-- <div class="span10">  -->
						<ul>
						<g:each in="${questionInstanceList}" status="i" var="questionInstance">
							<div class="question-summary">
								<div class="statscontainer">
									<div class="statsarrow"></div>
									<div class="stats">
										<div class="vote">
											<div class="votes">
												<span class="vote-count-post ">
													<strong>${fieldValue(bean: questionInstance, field: "votesNb")}</strong>
												</span>
												<div class="viewcount">votes</div>
											</div>
										</div>
										<div class="answers">
											<strong>0</strong>
											answers
										</div>
									</div>
									<div class="views " title="${fieldValue(bean: questionInstance, field: "votesNb")} views"> ${fieldValue(bean: questionInstance, field: "viewsNb")} views </div>
								</div>
								<g:link action="show" id="${questionInstance.id}" ><h4 class="question-hyperlink"> ${fieldValue(bean: questionInstance, field: "titre")}</h4></g:link>
								
								
								
								<div class="started fr">
									<div class="user-info ">
										<div class="user-action-time">
											<span class="relativetime" title="2013-03-04 13:58:32Z">${fieldValue(bean: questionInstance, field: "creationDate")}</span>
										</div>
										
										<div class="user-details">
											<g:link action="show" id="${questionInstance.user.id}" >	${fieldValue(bean: questionInstance, field: "user")} </g:link>
											
											<br>
											<span class="reputation-score" dir="ltr" title="reputation score">0</span>
										</div>
									</div>
								</div>
									
									
					        </div><!--/span-->
					
									
					
							
						</g:each>
						</ul>
						
				    <!-- </div><!--/row-->
			<div class="pagination">
				<g:paginate total="${questionInstanceTotal}" />
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
