<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'expense.label', default: 'Expense')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
    <div id="content" role="main">
        <div class="container">
            <section class="row">
                <div id="show-expense" class="col-12 content scaffold-show" role="main">
                    <h1><g:message code="default.show.label" args="[entityName]" /></h1>
                    <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                    </g:if>
                    <table class="rounded user-table">
                        <tr class="user-table-row">
                            <th>Description</th>
                            <th>Amount</th>
                            <th></th>
                            <th></th>
                        </tr>
                        <g:each var="prop" in="${expense}">
                            <tr class="user-table-row">
                                <td>${prop.description}</td>
                                <td>${prop.amount}</td>
                                <td>
                                    <g:link class="edit edit-btn" action="edit" resource="${this.expense}">Edit</g:link>
                                </td>
                                <td>
                                    <input class="delete delete-btn" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                                </td>
                            </tr>
                        </g:each>
                    </table>
                </div>
            </section>
        </div>
    </div>
    </body>
</html>
