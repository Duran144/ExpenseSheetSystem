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
                <a href="#list-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
                <div class="nav" role="navigation">
                    <ul>
                        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                        <li><g:link class="create" controller="user" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                    </ul>
                </div>
            </section>
            <section class="row">
                <div id="list-user" class="col-12 content scaffold-list" role="main">
                    <h1><g:message code="default.list.label" args="[entityName]" /></h1>
                    <g:if test="${flash.message}">
                        <div class="message" role="status">${flash.message}</div>
                    </g:if>
                    <table class="rounded">
                        <thead>
                            <tr>
                                <td class="text-center">Name</td>
                                <td class="text-center">Starting Bank Balance</td>
                                <td class="text-center">Expenses</td>
                                <td></td>
                            </tr>
                        </thead>
                        <tbody>
                            <g:each var="user" in="${userList}">
                                <tr>
                                    <td class="text-center">${user.name}</td>
                                    <td class="text-center">${user.startingBalance}</td>
                                    <td class="text-center"> <g:link controller="expense" action="statement" id="${user.id}" >[View Statement]</g:link></td>
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