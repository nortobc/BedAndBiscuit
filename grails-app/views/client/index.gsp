
<%@ page import="bedandbiscuit.client.Client" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'client.label', default: 'Client')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-client" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-client" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="firstName" title="${message(code: 'client.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'client.lastName.label', default: 'Last Name')}" />
					
						<g:sortableColumn property="otherPetOwners" title="${message(code: 'client.otherPetOwners.label', default: 'Other Pet Owners')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'client.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="cell" title="${message(code: 'client.cell.label', default: 'Cell')}" />
					
						<g:sortableColumn property="homeNumber" title="${message(code: 'client.homeNumber.label', default: 'Home Number')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${clientInstanceList}" status="i" var="clientInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${clientInstance.id}">${fieldValue(bean: clientInstance, field: "firstName")}</g:link></td>
					
						<td>${fieldValue(bean: clientInstance, field: "lastName")}</td>
					
						<td>${fieldValue(bean: clientInstance, field: "otherPetOwners")}</td>
					
						<td>${fieldValue(bean: clientInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: clientInstance, field: "cell")}</td>
					
						<td>${fieldValue(bean: clientInstance, field: "homeNumber")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${clientInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
