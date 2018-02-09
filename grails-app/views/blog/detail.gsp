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
            <div class="panel panel-title">
                <h3>${blogPost.title}</h3>
                <g:link controller="author" action="detail" id="${blogPost.author.id}">${blogPost.author.firstName}</g:link>
                <div class="panel-body text-center">
                    ${blogPost.content}
                </div>
            </div>

            <g:link controller="blog" action="edit" id="${blogPost.id}" class="btn btn-default">Edit Post</g:link>

        </div>
    </div>
</div>

</body>
</html>