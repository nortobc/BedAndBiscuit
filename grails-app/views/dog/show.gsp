
<%@ page import="bedandbiscuit.Dog" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'dog.label', default: 'Dog')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-dog" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-dog" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list dog">
			
				<g:if test="${dogInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="dog.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${dogInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dogInstance?.breed}">
				<li class="fieldcontain">
					<span id="breed-label" class="property-label"><g:message code="dog.breed.label" default="Breed" /></span>
					
						<span class="property-value" aria-labelledby="breed-label"><g:fieldValue bean="${dogInstance}" field="breed"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dogInstance?.dob}">
				<li class="fieldcontain">
					<span id="dob-label" class="property-label"><g:message code="dog.dob.label" default="Dob" /></span>
					
						<span class="property-value" aria-labelledby="dob-label"><g:formatDate date="${dogInstance?.dob}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${dogInstance?.vet}">
				<li class="fieldcontain">
					<span id="vet-label" class="property-label"><g:message code="dog.vet.label" default="Vet" /></span>
					
						<span class="property-value" aria-labelledby="vet-label"><g:fieldValue bean="${dogInstance}" field="vet"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dogInstance?.client}">
				<li class="fieldcontain">
					<span id="client-label" class="property-label"><g:message code="dog.client.label" default="Client" /></span>
					
						<span class="property-value" aria-labelledby="client-label"><g:link controller="client" action="show" id="${dogInstance?.client?.id}">${dogInstance?.client?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${dogInstance?.color}">
				<li class="fieldcontain">
					<span id="color-label" class="property-label"><g:message code="dog.color.label" default="Color" /></span>
					
						<span class="property-value" aria-labelledby="color-label"><g:fieldValue bean="${dogInstance}" field="color"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dogInstance?.neutered}">
				<li class="fieldcontain">
					<span id="neutered-label" class="property-label"><g:message code="dog.neutered.label" default="Neutered" /></span>
					
						<span class="property-value" aria-labelledby="neutered-label"><g:formatBoolean boolean="${dogInstance?.neutered}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${dogInstance?.sex}">
				<li class="fieldcontain">
					<span id="sex-label" class="property-label"><g:message code="dog.sex.label" default="Sex" /></span>
					
						<span class="property-value" aria-labelledby="sex-label"><g:fieldValue bean="${dogInstance}" field="sex"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dogInstance?.timeOwned}">
				<li class="fieldcontain">
					<span id="timeOwned-label" class="property-label"><g:message code="dog.timeOwned.label" default="Time Owned" /></span>
					
						<span class="property-value" aria-labelledby="timeOwned-label"><g:formatDate date="${dogInstance?.timeOwned}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${dogInstance?.vetPhone}">
				<li class="fieldcontain">
					<span id="vetPhone-label" class="property-label"><g:message code="dog.vetPhone.label" default="Vet Phone" /></span>
					
						<span class="property-value" aria-labelledby="vetPhone-label"><g:fieldValue bean="${dogInstance}" field="vetPhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dogInstance?.weight}">
				<li class="fieldcontain">
					<span id="weight-label" class="property-label"><g:message code="dog.weight.label" default="Weight" /></span>
					
						<span class="property-value" aria-labelledby="weight-label"><g:fieldValue bean="${dogInstance}" field="weight"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:dogInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${dogInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
