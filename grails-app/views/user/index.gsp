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
                                <td class="text-center">Name</td>
                                <td class="text-center">Starting Bank Balance</td>
                                <td class="text-center">Expenses</td>
                            </tr>
                        </thead>
                        <tbody>
                            <g:each var="user" in="${userList}">
                                <tr class="border-bottom">
                                    <td class="text-center"><g:link controller="user" action="show" id="${user.id}">${user.name}</g:link></td>
                                    <td class="text-center">${user.startingBalance}</td>
                                    <td class="text-center"> <g:link controller="expense" action="statement" id="${user.id}" >View Statement</g:link></td>
                                </tr>
                            </g:each>
                        </tbody>
                    </table>
                </div>
            </section>
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