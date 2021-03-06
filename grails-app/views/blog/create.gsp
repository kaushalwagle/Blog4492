<!doctype html>
<html>
<head>
    <meta name="layout" content="template"/>
    <title>Lure's Gallery</title>

</head>

<body>

<content tag="pageName">
    <span class="navbar-brand">Create Blog</span>
</content>

<div id="blog" role="save">
    <div class="container">
        <h2>Create new blog post</h2>
        <g:if test="${flash.message}">
            <div class="alert alert-info" role="alert">${flash.message}</div>
        </g:if>
        <g:form controller="blog" action="save">
            <div class="form-group">
                <div class="row">
                    <div class="col-md-6">
                        <input type="text" name="title" class="form-control" placeholder="Blog Title"
                               value="Roaming around Poky">
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <label for="Author">Select Author</label>
                    <select name="author.id" class="form-control" id="Author">
                        <g:each in="${authors}" var="author">
                            <option value="${author.id}">${author.firstName + " " + author.lastName}</option>
                        </g:each>
                    </select>
                </div>
            </div>

            <div class="form-group">
                <textarea class="form-control" name="content" placeholder="Write Here">Tada tada blah blah</textarea>
            </div>
            <button type="submit" class="btn btn-primary">Create</button>
        </g:form>
    </div>
</div>

</body>
</html>
