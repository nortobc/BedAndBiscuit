
<%@ page import="bedandbiscuit.Dog" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'dog.label', default: 'Dog')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-dog" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-dog" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'dog.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="breed" title="${message(code: 'dog.breed.label', default: 'Breed')}" />
					
						<g:sortableColumn property="dob" title="${message(code: 'dog.dob.label', default: 'Dob')}" />
					
						<g:sortableColumn property="vet" title="${message(code: 'dog.vet.label', default: 'Vet')}" />
					
						<th><g:message code="dog.client.label" default="Client" /></th>
					
						<g:sortableColumn property="color" title="${message(code: 'dog.color.label', default: 'Color')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${dogInstanceList}" status="i" var="dogInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${dogInstance.id}">${fieldValue(bean: dogInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: dogInstance, field: "breed")}</td>
					
						<td><g:formatDate date="${dogInstance.dob}" /></td>
					
						<td>${fieldValue(bean: dogInstance, field: "vet")}</td>
					
						<td>${fieldValue(bean: dogInstance, field: "client")}</td>
					
						<td>${fieldValue(bean: dogInstance, field: "color")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${dogInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
