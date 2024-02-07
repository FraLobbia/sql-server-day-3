
--1) Numero totale degli ordini,
--select COUNT(*) as TotaleOrdini from Orders

--2) Numero totale di clienti,
--select COUNT(*) as TotaleClienti from customers

--3) Numero totale di clienti che abitano a Londra,
--select * from customers where city = 'london'

--4) La media aritmetica del costo del trasporto di tutti gli ordini effettuati
--select AVG(freight) as MediaCostoSpedizioni from orders

--5) La media aritmetica del costo del trasporto dei soli ordini effettuati dal cliente "BOTTM"
--select AVG(freight) as MediaCostoSpedizioniByBOTTM from orders where CustomerID = 'bottm'

--6) Totale delle spese di trasporto effettuate raggruppate per id cliente
--select customerId, sum(freight) as TotaleSpeseSpedizione from orders group by CustomerID

--7) Numero totale di clienti raggruppati per città di appartenenza
--select city,count(*) as TotaleClienti from customers group by city order by TotaleClienti desc

--8) Totale di UnitPrice * Quantity raggruppato per ogni ordine
--select orderId, sum(UnitPrice * Quantity) as TotaleOrdini from [order details] group by OrderID

--9) Totale di UnitPrice * Quantity solo dell'ordine con id=10248
--select orderId, sum(UnitPrice * Quantity) as TotaleOrdini from [order details] group by OrderID having OrderID = '10248'

--10) Numero di prodotti censiti per ogni categoria
--select categoryid, COUNT(*) as totalePerCategoria from products group by CategoryID

--11) Numero totale di ordini raggruppati per paese di spedizione (ShipCountry)
--select ShipCountry,count(*) as QNTOrdiniFrom from orders group by ShipCountry

--12) La media del costo del trasporto raggruppati per paese di spedizione (ShipCountry)
--select ShipCountry,avg(freight) as AVGcost from orders group by ShipCountry