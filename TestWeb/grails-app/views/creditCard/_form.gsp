<%@ page import="testweb.CreditCard" %>



<div class="fieldcontain ${hasErrors(bean: creditCardInstance, field: 'cardNumber', 'error')} ">
	<label for="cardNumber">
		<g:message code="creditCard.cardNumber.label" default="Card Number" />
		
	</label>
	<g:textField name="cardNumber" value="${creditCardInstance?.cardNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: creditCardInstance, field: 'cardType', 'error')} ">
	<label for="cardType">
		<g:message code="creditCard.cardType.label" default="Card Type" />
		
	</label>
	<g:textField name="cardType" value="${creditCardInstance?.cardType}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: creditCardInstance, field: 'expMonth', 'error')} required">
	<label for="expMonth">
		<g:message code="creditCard.expMonth.label" default="Exp Month" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="expMonth" type="number" value="${creditCardInstance.expMonth}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: creditCardInstance, field: 'expYear', 'error')} required">
	<label for="expYear">
		<g:message code="creditCard.expYear.label" default="Exp Year" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="expYear" type="number" value="${creditCardInstance.expYear}" required=""/>
</div>

