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
            <table class="col-md-8">
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
                <button class="c-form-btn">
                    <g:link controller="expense" action="exportCSV" id="${user.id}">Export to CSV</g:link>
                </button>
            </div>
        </div>
    </div>

    <div class="footer-container">
        <footer class="footer" role="contentinfo">
            <div class="img-wrapper">
                <div class="img-container">
                    <a href="http://guides.grails.org" target="_blank">
                        <asset:image src="advancedgrails.svg" alt="Grails Guides" size="20"/>
                    </a>
                </div>
                <div class="sub-text">
                    <strong class="centered"><a href="http://guides.grails.org" target="_blank">Grails Guides</a></strong>
                    <p>Building your first Grails app? Looking to add security, or create a Single-Page-App? Check out the <a href="http://guides.grails.org" target="_blank">Grails Guides</a> for step-by-step tutorials.</p>
                </div>
            </div>
    
            <div class="img-wrapper">
                <div class="img-container">
                    <a href="http://docs.grails.org" target="_blank">
                        <asset:image src="documentation.svg" alt="Grails Documentation" class="float-left"/>
                    </a>
                </div>
                <div class="sub-text">
                    <strong class="centered"><a href="http://docs.grails.org" target="_blank">Documentation</a></strong>
                    <p>Ready to dig in? You can find in-depth documentation for all the features of Grails in the <a href="http://docs.grails.org" target="_blank">User Guide</a>.</p>
                </div>
            </div>
    
            <div class="img-wrapper">
                <div class="img-container">
                    <a href="https://slack.grails.org" target="_blank">
                        <asset:image src="slack.svg" alt="Grails Slack" class="float-left"/>
                    </a>
                </div>
                <div class="sub-text">
                    <strong class="centered"><a href="https://slack.grails.org" target="_blank">Join the Community</a></strong>
                    <p>Get feedback and share your experience with other Grails developers in the community <a href="https://slack.grails.org" target="_blank">Slack channel</a>.</p>
                </div>
            </div>
        </footer>
    </div>
</body>
</html>