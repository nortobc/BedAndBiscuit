<%@ page import="bedandbiscuit.Questionaire" %>



<div class="fieldcontain ${hasErrors(bean: questionaireInstance, field: 'boarded', 'error')} required">
	<label for="boarded">
		<g:message code="questionaire.boarded.label" default="Boarded" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="boarded" required="" value="${questionaireInstance?.boarded}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionaireInstance, field: 'health', 'error')} required">
	<label for="health">
		<g:message code="questionaire.health.label" default="Health" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="health" required="" value="${questionaireInstance?.health}"/>

</div>

