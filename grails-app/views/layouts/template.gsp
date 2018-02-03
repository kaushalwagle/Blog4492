<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><g:layoutTitle default="Lure's Gallery"/></title>
    <asset:stylesheet src="bootstrap.css"/>
    <g:layoutHead/>
</head>

<body>
<header>
    <div class="header container-fluid text-center">
        <h2 class="text-success">
            <strong>Lure's Gallery</strong>
        </h2>

        <p>View the world from my prespective</p>
    </div>

    <div class="navbar navbar-inverse">
        <div class="container">
            <div class="navbar-header">
                <div id="pageName">
                    <g:pageProperty name="page.pageName" />
                </div>
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span style="color: #fff" class="glyphicon glyphicon-menu-hamburger"></span>
                </button>
            </div>

            <div class="navbar-collapse collapse navbar-right">
                <ul class="nav navbar-nav">
                    <li >
                        <g:link controller="home" action="index">Home</g:link>
                    </li>
                    <li>
                        <g:link controller="home" action="aboutus">About Us</g:link>
                    </li>
                    <li>
                        <g:link controller="blog" action="list">Blog</g:link>
                    </li>
                    <li>
                        <g:link controller="contact" action="index">Contact Us</g:link>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</header>
<g:layoutBody/>
<asset:javascript src="jquery-2.2.0.min.js"/>
<asset:javascript src="bootstrap.js"/>
</body>
</html>