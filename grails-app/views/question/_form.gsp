<%@ page import="org.isima.sof.Question" %>



<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'titre', 'error')} ">
	<label for="titre">
		<g:message code="question.titre.label" default="Titre" />
		
	</label>
	<g:textField name="titre" value="${questionInstance?.titre}"/>
</div>


<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="question.description.label" default="Description" />
		
	</label>
	<g:textArea name="description" maxLength="1000" value="${questionInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'tags', 'error')} ">
	<label for="tags">
		<g:message code="question.tags.label" default="Tags" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${questionInstance?.tags?}" var="t">
    <li><g:link controller="tag" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="tag" action="create" params="['question.id': questionInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'tag.label', default: 'Tag')])}</g:link>
</li>
</ul>

</div>

