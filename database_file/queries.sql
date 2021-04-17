-- who purchased products at 2021-04-17 14:56:22

SELECT customer.firstName, customer.lastName FROM customer INNER JOIN orders ON customer.customerID = orders.fk_customerID WHERE orders.orderTime = "2021-04-17 14:56:22"

-- From which brewery where ordered more than 6 items per order


SELECT DISTINCT brewery.breweryName FROM brewery INNER JOIN beer ON brewery.breweryID = beer.fk_breweryID INNER JOIN product on beer.beerID = product.fk_beerID INNER JOIN orders ON product.productID = orders.fk_productID WHERE orders.itemQuant > 7;


-- Query with more than 4 INNEr JOIN, showing orders with Name and adress


SELECT invoice.invoiceID, orders.orderID, customer.lastName, customer_address.custAddressID, customer_address.streetNumber, zipcode.zipCode, zipcode.city FROM invoice INNER JOIN orders ON invoice.fk_orderInvID = orders.orderID INNER JOIN customer ON orders.fk_customerID = customer.customerID INNER JOIN customer_address ON customer_address.custAddressID = customer.fk_custAddress INNER JOIN zipcode ON customer_address.fk_zipCode = zipcode.zipCode;



-- select all orders where customer is living in Vienna


SELECT invoice.invoiceID, orders.orderID, customer.lastName, customer_address.custAddressID, customer_address.streetNumber, zipcode.zipCode, zipcode.city FROM invoice INNER JOIN orders ON invoice.fk_orderInvID = orders.orderID INNER JOIN customer ON orders.fk_customerID = customer.customerID INNER JOIN customer_address ON customer_address.custAddressID = customer.fk_custAddress INNER JOIN zipcode ON customer_address.fk_zipCode = zipcode.zipCode WHERE zipcode.city = "Wien";

-- orders, where payment method is Visa

SELECT orders.orderID FROM orders INNER JOIN payment_method ON orders.fk_payMethod = payment_method.payMethodID WHERE payment_method.payMethodName = "Visa";


-- Contact details from carrier

SELECT carrier.carrierName, carrier.carrierEmail, carrier.phoneNumber FROM carrier;

--Which beer was shipped between 2021-04-18 and 19




