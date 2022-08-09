<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>

    <asset:stylesheet src="application.css"/>

    <g:layoutHead/>
</head>

<body>

<header>
    <nav class="navbar navbar-expand-sm navbar-light mb-3" role="navigation">
        <div class="container-fluid">
            <a class="navbar-brand" href="/#"><asset:image height="50" src="grails.svg" alt="Grails Logo"/></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="navbar-collapse collapse d-sm-inline-flex justify-content-between">
                <ul class="navbar-nav flex-grow-1">
                    <li class="nav-item p-3 mt-2"><a class="home nav-link hover-underline-animation" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                    <li class="nav-item p-3 mt-2"><a class="list nav-link hover-underline-animation" href="${createLink(uri: '/user/index')}">User List</a></li>
                </ul>
            </div>
        </div>
    </nav>
</header>

<g:layoutBody/>

<div id="spinner" class="spinner" style="display:none;">
    <g:message code="spinner.alt" default="Loading&hellip;"/>
</div>

<asset:javascript src="application.js"/>

</body>
</html>
