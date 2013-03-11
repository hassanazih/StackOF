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
															<div class="viewcount">${message(code: 'votes.label', default: 'Votes')}</div>
														</div>
													</div>
													<div class="answers">
														<strong>0</strong>
														${message(code: 'answers.label', default: 'Answers')}
													</div>
												</div>
												<div class="views " title="${fieldValue(bean: questionInstance, field: "viewsNb")} ${message(code: 'views.label', default: 'Views')}"> ${fieldValue(bean: questionInstance, field: "viewsNb")} ${message(code: 'views.label', default: 'Views')} </div>
											</div>
											<g:link action="show" id="${questionInstance.id}" ><h4 class="question-hyperlink"> ${fieldValue(bean: questionInstance, field: "titre")}</h4></g:link>
											<div class="excerpt"> ${fieldValue(bean: questionInstance, field: "description")} </div>
											
											
											<div class="started fr">
												<div class="user-info ">
													<div class="user-action-time">
														${message(code: 'created.label', default: 'Created')}
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
												
												
								        </div><!--/span-->
									</g:each>
									</ul>
							    <!-- </div><!--/row-->
						<div class="pagination">
							<g:paginate total="${questionInstanceTotal}" />
						</div>
