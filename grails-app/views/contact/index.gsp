<!doctype html>
<html>
<head>
    <meta name="layout" content="template"/>
    <title>Lure's Gallery</title>

</head>

<body>

<content tag="pageName">
    <span class="navbar-brand">Contact Us</span>
</content>

<div id="content" role="main">
    <div class="container">
        <h2>Contact Us</h2>
        <g:if test="${flash.message}">
            <div class="alert alert-info" role="alert">${flash.message}</div>
        </g:if>
        <g:form controller="contact" action="save" method="post">
            <div class="form-group">
                <div class="row">
                    <div class="col-md-6">
                        <input type="text" name="name" class="form-control" placeholder="First name" value="Kaushal Wagle">
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-md-6">
                        <input type="text" name="phone" value="${Math.abs(new Random().nextInt() % 600) + 1}" class="form-control" id="phoneNumber" placeholder="Phone No.">
                    </div>

                    <div class="col-md-6">
                        <input type="email" name="email" value="abc@def.com" class="form-control" id="email" placeholder="Email">
                    </div>
                </div>
            </div>

            <div class="form-group">
                <textarea class="form-control" name="message" id="comment" placeholder="Provide constructive feedback.">Tada tada blah blah</textarea>
            </div>

            <div class="form-check">
                <input type="checkbox" class="form-check-input" id="isSubscribe">
                <label class="form-check-label" for="isSubscribe">Recieve daily update.</label>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </g:form>
    </div>
</div>

</body>
</html>
