<!doctype html>
<html>
<head>
    <meta name="layout" content="template"/>
    <style>
        th {
            background-color: #4CAF50;
            color: white;
        }
    </style>
    <title>Lure's Gallery</title>


</head>

<body>

<content tag="pageName">
    <span class="navbar-brand">Blog</span>
</content>

<div id="content" role="main">
    <div class="bg-welcome text-center">
        <div class="container">
            <h1 style="color:#fff">
                <strong>Blog</strong>
            </h1>

            <p>Hello You are in Kaushal's blog.</p>
<g:link controller="blog" action="create" class="btn btn-default">Create Content</g:link>
<table class="table table-responsive">
            <tr>
                <th>Blog title</th>
                >
            </tr>
    <g:each in="${blogs}" var="blog">
        <tr>
            <td>${blog.title}</td>
            <td>${blog.author.firstName}</td>
            <td><g:link controller="blog" action="edit" id="${blog.id}" class="btn btn-default">Edit</g:link></td>
        </tr>
    </g:each>

</table>
</div>
</div>
</div>

</body>
</html>