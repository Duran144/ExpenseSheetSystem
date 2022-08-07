<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
<body>
    <div class="nav" role="navigation">
        <ul>
            <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
            <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
        </ul>
    </div>
    <div id="list-expense" class="content scaffold-list" role="main">
        <h1>Statement of Account for ${user.name}</h1><br>
        <h2>Initial Balance : ${user.startingBalance}</h2>
        <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
        </g:if>

        <table>
            <tr>
                <th>Date</th>
                <th>Description</th>
                <th>Amount</th>
                <th>Running Balance</th>
            </tr>

            <g:each var="expense" in="${user.expense}">
            <tr>
                <td>${expense.dateCreated}</td>
                <td>${expense.description}</td>
                <td>${expense.amount}</td>
                <td>${expense.runningBalance}</td>
            </tr>
            </g:each>
        </table>

        <div class="pagination">
            <g:paginate total="${expenseCount ?: 0}" />
        </div>
    </div>
</body>
</html>