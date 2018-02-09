<!doctype html>
<html>
<head>
    <meta name="layout" content="template"/>
    <title>Lure's Gallery</title>

</head>

<body>

<content tag="pageName">
    <span class="navbar-brand">Author</span>
</content>

<div id="author" role="save">
    <div class="container">
        <h2>Create new Author</h2>
        <g:if test="${flash.message}">
            <div class="alert alert-info" role="alert">${flash.message}</div>
        </g:if>
        <g:form controller="author" action="save">
            <div class="form-group">
                <div class="row">
                    <div class="col-md-6">
                        <input type="text" name="firstName" class="form-control" placeholder="Author FirstName" value="Kaushal">
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-md-6">
                        <input type="text" name="lastName" value="Wagle" class="form-control" placeholder="Author LastName">
                    </div>
                </div>
            </div>


            <div class="form-group">
                <div class="row">
                    <div class="col-md-6">
                        <input type="text" name="email" value="me@isu.edu" class="form-control" placeholder="Author Email">
                    </div>
                </div>
            </div>
            <button type="submit" class="btn btn-primary">Create</button>
        </g:form>
    </div>
</div>

</body>
</html>
