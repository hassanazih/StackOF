<g:if test="${flash.message}">
	<div class="message" role="status">${flash.message}</div>
	</g:if>
	<div id="user-browser">
	<table>
		<tbody>
		<g:each in="${userInstanceList}" status="i" var="userInstance">
			<g:if test="${i==0 || i==6}">
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
			<g:if test="${i==0 || i==6}">
			</tr>
			</g:if>
		</g:each>
		</tbody>
	</table>
	</div>
	<div class="pagination">
		<g:paginate total="${userInstanceTotal}" />
	</div>