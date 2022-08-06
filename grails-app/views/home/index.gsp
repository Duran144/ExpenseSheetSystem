<!DOCTYPE html>
<html>
<head>
    <title>Expense Sheet System</title>
    <asset:stylesheet src="application.css"/>
</head>

<body>
    <header>
            <nav class="navbar navbar-expand-sm navbar-light bg-white mb-3">
                <div class="container-fluid">
                    <a class="navbar-brand">
                        <asset:link rel="icon" href="grails.svg" type="image"/>
                    </a>

                    <div class="d-sm-inline-flex justify-content-between">
                        <ul class="navbar-nav flex-grow-1">
                            <li class="nav-item p-3 mt-2">
                                <a class="nav-link text-dark hover-underline-animation">Account</a>
                            </li>
                            <li class="nav-item p-3 mt-2">
                                <a class="nav-link text-dark hover-underline-animation">Transactions</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>

    <div class="home-section-container">
        <section class="home-section">
            <h1>Welcome to I3zone Expense Sheet System</h1>

            <div>
                <h1>Start by giving us your name</h1>
                <g:form name="form" controller="home" id="form">
                    <div class="text-field">
                    <label>First Name: </label>
                    <g:textField name="firstName" value="" />
                    </div>
                    <div class="submit">
                        <g:actionSubmit value="Submit" action="" />
                    </div>
                </g:form>
            </div>
        </section>
    </div>
</body>

</html>