<%@ page import="bedandbiscuit.Dog" %>



<div class="fieldcontain ${hasErrors(bean: dogInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="dog.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" pattern="${dogInstance.constraints.name.matches}" required="" value="${dogInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dogInstance, field: 'breed', 'error')} required">
	<label for="breed">
		<g:message code="dog.breed.label" default="Breed" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="breed" pattern="${dogInstance.constraints.breed.matches}" required="" value="${dogInstance?.breed}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dogInstance, field: 'dob', 'error')} required">
	<label for="dob">
		<g:message code="dog.dob.label" default="Dob" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dob" precision="day"  value="${dogInstance?.dob}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: dogInstance, field: 'vet', 'error')} required">
	<label for="vet">
		<g:message code="dog.vet.label" default="Vet" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="vet" pattern="${dogInstance.constraints.vet.matches}" required="" value="${dogInstance?.vet}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dogInstance, field: 'client', 'error')} required">
	<label for="client">
		<g:message code="dog.client.label" default="Client" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="client" name="client.id" from="${bedandbiscuit.client.Client.list()}" optionKey="id" required="" value="${dogInstance?.client?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dogInstance, field: 'color', 'error')} required">
	<label for="color">
		<g:message code="dog.color.label" default="Color" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="color" required="" value="${dogInstance?.color}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dogInstance, field: 'neutered', 'error')} ">
	<label for="neutered">
		<g:message code="dog.neutered.label" default="Neutered" />
		
	</label>
	<g:checkBox name="neutered" value="${dogInstance?.neutered}" />

</div>

<div class="fieldcontain ${hasErrors(bean: dogInstance, field: 'sex', 'error')} required">
	<label for="sex">
		<g:message code="dog.sex.label" default="Sex" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="sex" required="" value="${dogInstance?.sex}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dogInstance, field: 'timeOwned', 'error')} required">
	<label for="timeOwned">
		<g:message code="dog.timeOwned.label" default="Time Owned" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="timeOwned" precision="day"  value="${dogInstance?.timeOwned}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: dogInstance, field: 'vetPhone', 'error')} required">
	<label for="vetPhone">
		<g:message code="dog.vetPhone.label" default="Vet Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="vetPhone" type="number" value="${dogInstance.vetPhone}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: dogInstance, field: 'weight', 'error')} required">
	<label for="weight">
		<g:message code="dog.weight.label" default="Weight" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="weight" type="number" value="${dogInstance.weight}" required=""/>

</div>

