
<%@ page import="bedandbiscuit.Questionaire" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'questionaire.label', default: 'Questionaire')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-questionaire" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-questionaire" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list questionaire">
			
				<g:if test="${questionaireInstance?.boarded}">
				<li class="fieldcontain">
					<span id="boarded-label" class="property-label"><g:message code="questionaire.boarded.label" default="Boarded" /></span>
					
						<span class="property-value" aria-labelledby="boarded-label"><g:fieldValue bean="${questionaireInstance}" field="boarded"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionaireInstance?.health}">
				<li class="fieldcontain">
					<span id="health-label" class="property-label"><g:message code="questionaire.health.label" default="Health" /></span>
					
						<span class="property-value" aria-labelledby="health-label"><g:fieldValue bean="${questionaireInstance}" field="health"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:questionaireInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${questionaireInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
