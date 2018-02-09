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
            <h1 style="color:#fff">
                <strong>Authors</strong>
            </h1>

            <g:link controller="author" action="create" class="btn btn-default">Create Author</g:link>
            <table class="table table-responsive">
                <tr>
                    <th>FirstName</th>
                    <th>LastName</th>
                    <th>Email</th>
                </tr>
                <g:each in="${authors}" var="author">
                    <tr>
                        <td>${author.firstName}</td>
                        <td>${author.lastName}</td>
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