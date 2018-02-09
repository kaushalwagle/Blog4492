<html>
<head>
    <meta name="layout" content="template"/>
    <title>Edit: ${postToEdit.title}</title>

</head>

<body>

<content tag="pageName">
    <span class="navbar-brand">Edit Blog</span>
</content>

<div id="blog" role="update">
    <div class="container">
        <h2>Edit Blog(${postToEdit.title})</h2>
        <g:if test="${flash.message}">
            <div class="alert alert-info" role="alert">${flash.message}</div>
        </g:if>
        <g:form controller="blog" action="update" params="id: ${postToEdit.id}">
            <div class="form-group">
                <div class="row">
                    <div class="col-md-6">
                        <input type="text" name="title" class="form-control" placeholder="Blog Title" value="${postToEdit.title}">
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
            <button type="submit" class="btn btn-primary">Edit</button>
        </g:form>
    </div>
</div>

</body>
</html>
