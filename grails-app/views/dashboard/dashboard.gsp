<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name='layout' content='main'/>
</head>
<body>
    <div class="nav" role="navigation">
        <ul>
            <li><sec:link controller="admin" expression="hasRole('ROLE_ADMIN')">Admin Services</sec:link></li>
            <li><sec:link controller="client" expression="hasRole('ROLE_USER')">Personal Information</sec:link></li>
            <li><sec:link controller="dog" expression="hasRole('ROLE_USER')">Manage Dog Information</sec:link></li>
            <li><sec:link controller="questionaire" expression="hasRole('ROLE_USER')">Questionaire</sec:link></li>
        </ul>
    </div>
</body>
</html>