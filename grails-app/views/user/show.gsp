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
            
                <div id="show-user" class="col-12 content scaffold-show" role="main">
                    <h1 class="text-center"><g:message code="default.show.label" args="[user.name]" /></h1>
                    <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                    </g:if>
                    <table class="rounded user-table">
                        <tr class="user-table-row">
                            <th>Name</th>
                            <th>Starting Balance</th>
                            <th>Expense</th>
                            <th></th>
                            <th></th>
                        </tr>
                        <g:each var="prop" in="${user}">
                                    <tr class="user-table-row">
                                        <td>${prop.name}</td>
                                        <td>${prop.startingBalance}</td>
                                        <g:if test="${expense == null}">
                                            <td><g:link class="add-btn" controller="expense" action="create" resource="${expense}">Add Expense</g:link></td>
                                        </g:if>
                                        <g:else>
                                             <td><g:link class="show" controller="expense" action="statement" resource="${expense}">View Statement</g:link></td>
                                        </g:else>
                                        <td>
                                            <g:link class="edit edit-btn" action="edit" resource="${this.user}">Edit</g:link>
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
