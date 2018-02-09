<html>
<head>
    <meta name="layout" content="template"/>
    <title>Edit: ${author.firstName + " " + author.lastName}</title>

</head>

<body>

<content tag="pageName">
    <span class="navbar-brand">Edit Blog</span>
</content>

<div id="author" role="update">
    <div class="container">
        <h2>Edit Blog(${author.firstName + " " + author.lastName})</h2>
        <g:if test="${flash.message}">
            <div class="alert alert-info" role="alert">${flash.message}</div>
        </g:if>
        <g:form controller="author" action="update" id="${author.id}">
            <div class="form-group">
                <div class="row">
                    <div class="col-md-6">
                        <input type="text" name="firstName" class="form-control" placeholder="Author FirstName" value="${author.firstName}">
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-md-6">
                        <input type="text" name="lastName" value="${author.lastName}" class="form-control" placeholder="Author LastName">
                    </div>
                </div>
            </div>


            <div class="form-group">
                <div class="row">
                    <div class="col-md-6">
                        <input type="text" name="email" value="${author.email}" class="form-control" placeholder="Author Email">
                    </div>
                </div>
            </div>
            <button type="submit" class="btn btn-primary">Create</button>
        </g:form>
    </div>
</div>

</body>
</html>
