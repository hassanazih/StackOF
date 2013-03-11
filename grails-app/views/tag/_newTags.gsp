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