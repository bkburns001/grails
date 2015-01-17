package testweb

class CreditCard {
	
	String cardType
	String cardNumber
	Integer expMonth
	Integer expYear
	
    static mapping = {
		table "Sales.CreditCard"
		version false
		columns{
			id column : "CreditCardID"
			cardType column: "CardType"
			cardNumber column: "CardNumber"
			expMonth column: "ExpMonth"
			expYear column: "ExpYear"
						
		}
    }
}
