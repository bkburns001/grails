
<%@ page import="testweb.CreditCard" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'creditCard.label', default: 'CreditCard')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-creditCard" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-creditCard" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="cardNumber" title="${message(code: 'creditCard.cardNumber.label', default: 'Card Number')}" />
					
						<g:sortableColumn property="cardType" title="${message(code: 'creditCard.cardType.label', default: 'Card Type')}" />
					
						<g:sortableColumn property="expMonth" title="${message(code: 'creditCard.expMonth.label', default: 'Exp Month')}" />
					
						<g:sortableColumn property="expYear" title="${message(code: 'creditCard.expYear.label', default: 'Exp Year')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:findAll in="${creditCardInstanceList}" expr="it.expMonth == 8">
				
					<tr class="odd">
					
						<td><g:link action="show" id="${it.id}">${it.cardNumber}</g:link></td>
					
						<td>${it.cardType}</td>
					
						<td>${it.expMonth}</td>
					
						<td>${it.expYear}</td>
				
					</tr>
				</g:findAll>	
				</tbody>
			</table>
			
		</div>
	</body>
</html>
