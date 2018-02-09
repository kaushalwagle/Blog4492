<html>
<head>
    <meta name="layout" content="template"/>
    <title>Edit: ${author.firstName + " " + author.lastName}</title>

</head>

<body>

<content tag="pageName">
    <span class="navbar-brand">Author</span>
</content>

<div id="author" role="update">
    <div class="container">
        <h2>Edit Author</h2>

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
            <button type="submit" class="btn btn-primary">Edit</button>
        </g:form>
    </div>
</div>

</body>
</html>
