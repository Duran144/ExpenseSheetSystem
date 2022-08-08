<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
    <div id="content" role="main">
        <div class="container">
            <section class="row">
                <div id="list-user" class="col-12 content scaffold-list" role="main">
                    <h1 class="text-center"><g:message code="default.list.label" args="[entityName]" /></h1>
                    <g:if test="${flash.message}">
                        <div class="message" role="status">${flash.message}</div>
                    </g:if>
                    <table class="rounded">
                        <thead class="border-bottom">
                            <tr>
                                <td class="text-center border-right">Name</td>
                                <td class="text-center border-right">Starting Bank Balance</td>
                                <td class="text-center">Expenses</td>
                            </tr>
                        </thead>
                        <tbody>
                            <g:each var="user" in="${userList}">
                                <tr class="border-bottom">
                                    <td class="text-center border-right">${user.name}</td>
                                    <td class="text-center border-right">${user.startingBalance}</td>
                                    <td class="text-center"> <g:link controller="expense" action="statement" id="${user.id}" >View Statement</g:link></td>
                                </tr>
                            </g:each>
                        </tbody>
                    </table>
                </div>
            </section>
        </div>
    </div>
    </body>
</html>