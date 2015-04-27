<%@ page import="bedandbiscuit.client.Client" %>



<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="client.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" pattern="${clientInstance.constraints.firstName.matches}" required="" value="${clientInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="client.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" pattern="${clientInstance.constraints.lastName.matches}" required="" value="${clientInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'otherPetOwners', 'error')} ">
	<label for="otherPetOwners">
		<g:message code="client.otherPetOwners.label" default="Other Pet Owners" />
		
	</label>
	<g:textField name="otherPetOwners" pattern="${clientInstance.constraints.otherPetOwners.matches}" value="${clientInstance?.otherPetOwners}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="client.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${clientInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'cell', 'error')} required">
	<label for="cell">
		<g:message code="client.cell.label" default="Cell" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cell" type="number" value="${clientInstance.cell}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'homeNumber', 'error')} ">
	<label for="homeNumber">
		<g:message code="client.homeNumber.label" default="Home Number" />
		
	</label>
	<g:field name="homeNumber" type="number" value="${clientInstance.homeNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'workNumber', 'error')} ">
	<label for="workNumber">
		<g:message code="client.workNumber.label" default="Work Number" />
		
	</label>
	<g:field name="workNumber" type="number" value="${clientInstance.workNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'emergencyContactName', 'error')} ">
	<label for="emergencyContactName">
		<g:message code="client.emergencyContactName.label" default="Emergency Contact Name" />
		
	</label>
	<g:textField name="emergencyContactName" value="${clientInstance?.emergencyContactName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'questionaire', 'error')} ">
	<label for="questionaire">
		<g:message code="client.questionaire.label" default="Questionaire" />
		
	</label>
	<g:select id="questionaire" name="questionaire.id" from="${bedandbiscuit.Questionaire.list()}" optionKey="id" value="${clientInstance?.questionaire?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'dogs', 'error')} ">
	<label for="dogs">
		<g:message code="client.dogs.label" default="Dogs" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${clientInstance?.dogs?}" var="d">
    <li><g:link controller="dog" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="dog" action="create" params="['client.id': clientInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'dog.label', default: 'Dog')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'boarding', 'error')} ">
	<label for="boarding">
		<g:message code="client.boarding.label" default="Boarding" />
		
	</label>
	<g:checkBox name="boarding" value="${clientInstance?.boarding}" />

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'internet', 'error')} ">
	<label for="internet">
		<g:message code="client.internet.label" default="Internet" />
		
	</label>
	<g:checkBox name="internet" value="${clientInstance?.internet}" />

</div>
<fieldset class="embedded"><legend><g:message code="client.address.label" default="Address" /></legend>
<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'address.city', 'error')} required">
	<label for="address.city">
		<g:message code="client.address.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address.city" required="" value="${clientInstance.address?.city}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'address.state', 'error')} required">
	<label for="address.state">
		<g:message code="client.address.state.label" default="State" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address.state" required="" value="${clientInstance.address?.state}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'address.street', 'error')} required">
	<label for="address.street">
		<g:message code="client.address.street.label" default="Street" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address.street" required="" value="${clientInstance.address?.street}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'address.zip', 'error')} required">
	<label for="address.zip">
		<g:message code="client.address.zip.label" default="Zip" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="address.zip" type="number" value="${clientInstance.address?.zip}" required=""/>

</div>
</fieldset>
<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'bathingGrooming', 'error')} ">
	<label for="bathingGrooming">
		<g:message code="client.bathingGrooming.label" default="Bathing Grooming" />
		
	</label>
	<g:checkBox name="bathingGrooming" value="${clientInstance?.bathingGrooming}" />

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'daycare', 'error')} ">
	<label for="daycare">
		<g:message code="client.daycare.label" default="Daycare" />
		
	</label>
	<g:checkBox name="daycare" value="${clientInstance?.daycare}" />

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'dogTraining', 'error')} ">
	<label for="dogTraining">
		<g:message code="client.dogTraining.label" default="Dog Training" />
		
	</label>
	<g:checkBox name="dogTraining" value="${clientInstance?.dogTraining}" />

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'droveBy', 'error')} ">
	<label for="droveBy">
		<g:message code="client.droveBy.label" default="Drove By" />
		
	</label>
	<g:checkBox name="droveBy" value="${clientInstance?.droveBy}" />

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'emergencyContactNumber', 'error')} required">
	<label for="emergencyContactNumber">
		<g:message code="client.emergencyContactNumber.label" default="Emergency Contact Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="emergencyContactNumber" type="number" value="${clientInstance.emergencyContactNumber}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'other', 'error')} ">
	<label for="other">
		<g:message code="client.other.label" default="Other" />
		
	</label>
	<g:checkBox name="other" value="${clientInstance?.other}" />

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'referral', 'error')} ">
	<label for="referral">
		<g:message code="client.referral.label" default="Referral" />
		
	</label>
	<g:checkBox name="referral" value="${clientInstance?.referral}" />

</div>