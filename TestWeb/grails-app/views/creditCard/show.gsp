
<%@ page import="testweb.CreditCard" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'creditCard.label', default: 'CreditCard')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-creditCard" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-creditCard" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list creditCard">
			
				<g:if test="${creditCardInstance?.cardNumber}">
				<li class="fieldcontain">
					<span id="cardNumber-label" class="property-label"><g:message code="creditCard.cardNumber.label" default="Card Number" /></span>
					
						<span class="property-value" aria-labelledby="cardNumber-label"><g:fieldValue bean="${creditCardInstance}" field="cardNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${creditCardInstance?.cardType}">
				<li class="fieldcontain">
					<span id="cardType-label" class="property-label"><g:message code="creditCard.cardType.label" default="Card Type" /></span>
					
						<span class="property-value" aria-labelledby="cardType-label"><g:fieldValue bean="${creditCardInstance}" field="cardType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${creditCardInstance?.expMonth}">
				<li class="fieldcontain">
					<span id="expMonth-label" class="property-label"><g:message code="creditCard.expMonth.label" default="Exp Month" /></span>
					
						<span class="property-value" aria-labelledby="expMonth-label"><g:fieldValue bean="${creditCardInstance}" field="expMonth"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${creditCardInstance?.expYear}">
				<li class="fieldcontain">
					<span id="expYear-label" class="property-label"><g:message code="creditCard.expYear.label" default="Exp Year" /></span>
					
						<span class="property-value" aria-labelledby="expYear-label"><g:fieldValue bean="${creditCardInstance}" field="expYear"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${creditCardInstance?.id}" />
					<g:link class="edit" action="edit" id="${creditCardInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
