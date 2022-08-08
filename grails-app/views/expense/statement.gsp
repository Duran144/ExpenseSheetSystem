<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
<body>

    <div id="list-expense" class="content scaffold-list" role="main">
        <h1 class="text-center">Account Statement of ${user.name}</h1><br>
        <h2 class="text-center mb-3">Initial Balance : ${user.startingBalance}</h2>
        <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
        </g:if>

        <div class="d-flex align-items-center flex-column text-align-center">
            <table class="col-md-6">
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
                <button class="btn btn-primary">
                    <g:link controller="expense" action="exportCSV" id="${user.id}" class="btn btn-primary">Export to CSV</g:link>
                </button>
            </div>
        </div>
    </div>
</body>
</html>