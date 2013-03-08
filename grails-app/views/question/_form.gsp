<%@ page import="org.isima.sof.Question" %>



<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'titre', 'error')} ">
	<label for="titre">
		<g:message code="question.titre.label" default="Titre" />
		
	</label>
	<g:textField name="titre" value="${questionInstance?.titre}"/>
</div>


<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'description', 'error')} ">
	<resource:richTextEditor type="advanced" />
	
	<richui:richTextEditor name="description" value="${fieldValue(bean:questionInstance,description:'myText').decodeHTML()}" width="525" />
	
</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'tags', 'error')} ">
	<label for="tags">
		<g:message code="question.tags.label" default="Tags" />
		
	</label>
	

<g:each in="${questionInstance?.tags?}" var="t">
    <li><g:link controller="tag" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<resource:autoComplete skin="default"/>
<richui:autoComplete name="tags"  action="${createLinkTo('dir': 'tag/suggestedTags')}"  delimChar=" / " forceSelection="false" shadow="true" class="post-tag"/> 
 

</div>

