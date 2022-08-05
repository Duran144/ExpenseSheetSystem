<!DOCTYPE html>
<html>
    <head>
        <title>Expense Sheet System</title>
        <style>
            .form, .text-field, .submit{
                margin: 20px;
                background-color: lightblue;
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