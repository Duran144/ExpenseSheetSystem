<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
    <div id="content" role="main">
        <div class="container">
            <section class="row">
                <a href="#show-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
                <div class="nav" role="navigation">
                    <ul>
                        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                    </ul>
                </div>
            </section>
            <section class="row">
                <div id="show-user" class="col-12 content scaffold-show" role="main">
                    <h1><g:message code="default.show.label" args="[user.name]" /></h1>
                    <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                    </g:if>
                    <table>
                        <tr>
                            <th>Name</th>
                            <th>Starting Balance</th>
                            <th>Expense</th>
                            <th></th>
                        </tr>
                        <g:each var="prop" in="${user}">
                                    <tr>
                                        <td>${prop.name}</td>
                                        <td>${prop.startingBalance}</td>
                                        <g:if test="${expense == null}">
                                            <td><g:link class="create" controller="expense" action="create" resource="${expense}">Add Expense</g:link></td>
                                        </g:if>
                                        <g:else>
                                             <td><g:link class="show" controller="expense" action="statement" resource="${expense}">View Statement</g:link></td>
                                        </g:else>
                                    </tr>
                        </g:each>
                    </table>

                    <g:form resource="${this.user}" method="DELETE">
                        <fieldset class="buttons">
                            <g:link class="edit" action="edit" resource="${this.user}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                            <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                        </fieldset>
                    </g:form>
                </div>
            </section>
        </div>
    </div>
    </body>
</html>
