<%@ page import="bedandbiscuit.client.Client" %>



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
	<g:textField name="address.zip" required="" value="${clientInstance.address?.zip}"/>

</div>
</fieldset>
<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'cell', 'error')} required">
	<label for="cell">
		<g:message code="client.cell.label" default="Cell" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cell" type="number" value="${clientInstance.cell}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="client.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${clientInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="client.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${clientInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="client.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${clientInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'otherOwners', 'error')} required">
	<label for="otherOwners">
		<g:message code="client.otherOwners.label" default="Other Owners" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="otherOwners" required="" value="${clientInstance?.otherOwners}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'securityUser', 'error')} required">
	<label for="securityUser">
		<g:message code="client.securityUser.label" default="Security User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="securityUser" name="securityUser.id" from="${bedandbiscuit.user.SecurityUser.list()}" optionKey="id" required="" value="${clientInstance?.securityUser?.id}" class="many-to-one"/>

</div>

