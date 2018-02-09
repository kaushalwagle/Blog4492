<!doctype html>
<html>
<head>
    <meta name="layout" content="template"/>
    <title>Authors</title>

</head>

<body>

<content tag="pageName">
    <span class="navbar-brand">Authors</span>
</content>

<div id="content" role="main">
    <div class="bg-welcome text-center">
        <div class="container">
            <g:if test="${flash.message}">
                <div class="alert alert-info" role="alert">${flash.message}</div>
            </g:if>
            <g:link controller="author" action="create" class="btn btn-default">Create Author</g:link>

            <table class="table table-responsive">
                <tr>
                    <th>First Name</th>
                    <th>Email</th>
                    <th>Edit</th>
                </tr>
                <g:each in="${authors}" var="author">
                    <tr>
                        <td><g:link controller="author" action="detail" id="${author.id}">${author.firstName + " " + author.lastName}</g:link></td>
                        <td>${author.email}</td>
                        <td><g:link controller="author" action="edit" id="${author.id}"
                                    class="btn btn-default">Edit</g:link></td>
                    </tr>
                </g:each>
            </table>
        </div>
    </div>
</div>

</body>
</html>