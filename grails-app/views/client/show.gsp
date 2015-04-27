
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
			
				<g:if test="${clientInstance?.otherPetOwners}">
				<li class="fieldcontain">
					<span id="otherPetOwners-label" class="property-label"><g:message code="client.otherPetOwners.label" default="Other Pet Owners" /></span>
					
						<span class="property-value" aria-labelledby="otherPetOwners-label"><g:fieldValue bean="${clientInstance}" field="otherPetOwners"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="client.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${clientInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.cell}">
				<li class="fieldcontain">
					<span id="cell-label" class="property-label"><g:message code="client.cell.label" default="Cell" /></span>
					
						<span class="property-value" aria-labelledby="cell-label"><g:fieldValue bean="${clientInstance}" field="cell"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.homeNumber}">
				<li class="fieldcontain">
					<span id="homeNumber-label" class="property-label"><g:message code="client.homeNumber.label" default="Home Number" /></span>
					
						<span class="property-value" aria-labelledby="homeNumber-label"><g:fieldValue bean="${clientInstance}" field="homeNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.workNumber}">
				<li class="fieldcontain">
					<span id="workNumber-label" class="property-label"><g:message code="client.workNumber.label" default="Work Number" /></span>
					
						<span class="property-value" aria-labelledby="workNumber-label"><g:fieldValue bean="${clientInstance}" field="workNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.emergencyContactName}">
				<li class="fieldcontain">
					<span id="emergencyContactName-label" class="property-label"><g:message code="client.emergencyContactName.label" default="Emergency Contact Name" /></span>
					
						<span class="property-value" aria-labelledby="emergencyContactName-label"><g:fieldValue bean="${clientInstance}" field="emergencyContactName"/></span>
					
				</li>
				</g:if>
			
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
			
				<g:if test="${clientInstance?.boarding}">
				<li class="fieldcontain">
					<span id="boarding-label" class="property-label"><g:message code="client.boarding.label" default="Boarding" /></span>
					
						<span class="property-value" aria-labelledby="boarding-label"><g:formatBoolean boolean="${clientInstance?.boarding}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.internet}">
				<li class="fieldcontain">
					<span id="internet-label" class="property-label"><g:message code="client.internet.label" default="Internet" /></span>
					
						<span class="property-value" aria-labelledby="internet-label"><g:formatBoolean boolean="${clientInstance?.internet}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="client.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${clientInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.bathingGrooming}">
				<li class="fieldcontain">
					<span id="bathingGrooming-label" class="property-label"><g:message code="client.bathingGrooming.label" default="Bathing Grooming" /></span>
					
						<span class="property-value" aria-labelledby="bathingGrooming-label"><g:formatBoolean boolean="${clientInstance?.bathingGrooming}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.daycare}">
				<li class="fieldcontain">
					<span id="daycare-label" class="property-label"><g:message code="client.daycare.label" default="Daycare" /></span>
					
						<span class="property-value" aria-labelledby="daycare-label"><g:formatBoolean boolean="${clientInstance?.daycare}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.dogTraining}">
				<li class="fieldcontain">
					<span id="dogTraining-label" class="property-label"><g:message code="client.dogTraining.label" default="Dog Training" /></span>
					
						<span class="property-value" aria-labelledby="dogTraining-label"><g:formatBoolean boolean="${clientInstance?.dogTraining}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.droveBy}">
				<li class="fieldcontain">
					<span id="droveBy-label" class="property-label"><g:message code="client.droveBy.label" default="Drove By" /></span>
					
						<span class="property-value" aria-labelledby="droveBy-label"><g:formatBoolean boolean="${clientInstance?.droveBy}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.emergencyContactNumber}">
				<li class="fieldcontain">
					<span id="emergencyContactNumber-label" class="property-label"><g:message code="client.emergencyContactNumber.label" default="Emergency Contact Number" /></span>
					
						<span class="property-value" aria-labelledby="emergencyContactNumber-label"><g:fieldValue bean="${clientInstance}" field="emergencyContactNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.other}">
				<li class="fieldcontain">
					<span id="other-label" class="property-label"><g:message code="client.other.label" default="Other" /></span>
					
						<span class="property-value" aria-labelledby="other-label"><g:formatBoolean boolean="${clientInstance?.other}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.referral}">
				<li class="fieldcontain">
					<span id="referral-label" class="property-label"><g:message code="client.referral.label" default="Referral" /></span>
					
						<span class="property-value" aria-labelledby="referral-label"><g:formatBoolean boolean="${clientInstance?.referral}" /></span>
					
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
