<!doctype html>
<html>
<head>
    <meta name="layout" content="template"/>
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
            <table>
                <g:each in="${blogs}" var="blog">
                    <tr>
                        <td>${blog.title}</td>
                        <td>${blog.author}</td>
                    </tr>
                    <tr>
                        <td>${blog.content}</td>
                    </tr>
                </g:each>

            </table>
        </div>
    </div>
</div>

</body>
</html>