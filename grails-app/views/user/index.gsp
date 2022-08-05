<!DOCTYPE html>
<html>
    <head>
        <title>Welcome to Grails</title>
        <style>
            .form, .text-field, .submit{
                margin: 20px;
            }
        </style>
    </head>

    <body>
        <g:form name="form" controller="user" id="form">
            <div class="text-field">
                <label>First Name: </label>
                <g:textField name="firstName" value="${firstName}" />
            </div>
            <div class="submit">
                <g:actionSubmit value="Submit" action="save" />
            </div>
        </g:form>
    </body>
</html>