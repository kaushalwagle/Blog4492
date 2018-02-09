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
    <span class="navbar-brand">Author</span>
</content>

<div id="content" role="main">
    <div class="bg-welcome text-center">
        <div class="container">
            <h1 style="color:#ff6600">
                <strong>${author.firstName + " " + author.lastName}</strong>
            </h1>
            <table class="table table-responsive">
                <tr>
                    <th>Blog title</th>
                    <th>Posted on</th>
                    <th>Last Modified</th>
                </tr>
                <g:each in="${author.blogs}" var="blog">
                    <tr>
                        <td><g:link controller="blog" action="detail" id="${blog.id}">${blog.title}</g:link></td>
                        <td>${blog.datePosted}</td>
                        <td>${blog.dateModified}</td>
                    </tr>
                </g:each>

            </table>
        </div>
    </div>
</div>

</body>
</html>