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
            <li><a class="home" href="${createLink(uri: '/user/index')}"><g:message code="default.home.label"/></a></li>
        </ul>
    </div>

    <div id="list-expense" class="content scaffold-list" role="main">
        <h1 class="text-center">Statement of Account for ${user.name}</h1><br>
        <h2 class="text-center mb-3">Initial Balance : ${user.startingBalance}</h2>
        <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
        </g:if>

        <div class="d-flex align-items-center flex-column text-align-center">
            <table class="col-md-6 flex-grow-1">
                <tr>
                    <th class="text-center">Date</th>
                    <th class="text-center">Description</th>
                    <th class="text-center">Amount(ZAR)</th>
                    <th class="text-center">Amount(USD)</th>
                    <th class="text-center">Running Balance</th>
                </tr>

                <g:each var="expense" in="${user.expense}">
                <tr>
                    <td class="text-center">${expense.dateCreated}</td>
                    <td class="text-center">${expense.description}</td>
                    <td class="text-center">${expense.amount}</td>
                    <td class="text-center">${expense.convertedAmount}</td>
                    <td class="text-center">${expense.runningBalance}</td>
                </tr>
                </g:each>
            </table>
            <div>
                <button class="btn btn-primary ml-1 mb-1">
                    <g:link controller="expense" action="exportCSV" id="${user.id}" >Export to CSV</g:link>
                </button>
            </div>
        </div>
    </div>
</body>
</html>