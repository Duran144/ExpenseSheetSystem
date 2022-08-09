<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
    <div id="content" role="main">
        <div class="container">
            <section class="row">
                <div id="edit-user" class="col-12 content scaffold-edit" role="main">
                    <h1 class="text-center"><g:message code="" args="[entityName]" />Edit Your Details</h1>
                    <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                    </g:if>
                    <g:hasErrors bean="${this.user}">
                    <ul class="errors" role="alert">
                        <g:eachError bean="${this.user}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                        </g:eachError>
                    </ul>
                    </g:hasErrors>
                    <g:form resource="${this.user}" method="PUT" class="c-form">
                        <g:hiddenField name="version" value="${this.user?.version}" />
                        <fieldset>
                            <f:field bean="user" property="name"/>
                            <f:field bean="user" property="startingBalance"/>
                        </fieldset>
                        <fieldset>
                            <input class="c-form-btn" type="submit" value="${message(code: 'Update', default: 'Update')}" />
                        </fieldset>
                    </g:form>
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
