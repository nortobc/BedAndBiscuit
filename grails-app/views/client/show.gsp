
<%@ page import="bedandbiscuit.client.Client" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'client.label', default: 'Client')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-client" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-client" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list client">
			
				<g:if test="${clientInstance?.questionaire}">
				<li class="fieldcontain">
					<span id="questionaire-label" class="property-label"><g:message code="client.questionaire.label" default="Questionaire" /></span>
					
						<span class="property-value" aria-labelledby="questionaire-label"><g:link controller="questionaire" action="show" id="${clientInstance?.questionaire?.id}">${clientInstance?.questionaire?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.dogs}">
				<li class="fieldcontain">
					<span id="dogs-label" class="property-label"><g:message code="client.dogs.label" default="Dogs" /></span>
					
						<g:each in="${clientInstance.dogs}" var="d">
						<span class="property-value" aria-labelledby="dogs-label"><g:link controller="dog" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="client.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${clientInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.cell}">
				<li class="fieldcontain">
					<span id="cell-label" class="property-label"><g:message code="client.cell.label" default="Cell" /></span>
					
						<span class="property-value" aria-labelledby="cell-label"><g:fieldValue bean="${clientInstance}" field="cell"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="client.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${clientInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="client.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${clientInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="client.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${clientInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.otherOwners}">
				<li class="fieldcontain">
					<span id="otherOwners-label" class="property-label"><g:message code="client.otherOwners.label" default="Other Owners" /></span>
					
						<span class="property-value" aria-labelledby="otherOwners-label"><g:fieldValue bean="${clientInstance}" field="otherOwners"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.securityUser}">
				<li class="fieldcontain">
					<span id="securityUser-label" class="property-label"><g:message code="client.securityUser.label" default="Security User" /></span>
					
						<span class="property-value" aria-labelledby="securityUser-label"><g:link controller="securityUser" action="show" id="${clientInstance?.securityUser?.id}">${clientInstance?.securityUser?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:clientInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${clientInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
