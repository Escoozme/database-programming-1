--Jacob Smetana, ITSE-2309-1011

Q1 - Oracle and MySQL only

--Oracle
select productname, quantity
from products, orderdetails
where products.productid = orderdetails.productid
and (orderdetails.productid, quantity) in (select productid, quantity
                                           from orderdetails
                                           where orderid = 10801)
and orderid <> 10801;

--MySQL
select ProductName, Quantity
from snetanajsp20.products p, snetanajsp20.orderdetails od
where p.ProductID = od.ProductID
and (od.ProductID, Quantity) in (select ProductID, Quantity
                                 from snetanajsp20.orderdetails
								 where OrderID = 10801)
and OrderID <> 10801;





Q2 - All 3 Dialects

--Oracle
select productname, unitprice
from products
where supplierid = (select supplierid
                    from suppliers
                    where supplierid = 25)
;

--MySQL
select ProductName, UnitPrice
from snetanajsp20.products
where SupplierID = (select SupplierID
                    from snetanajsp20.suppliers
                    where CompanyName like '%Ma Maison%')
;

--MSSQL
use ITSE2309

select ProductName, UnitPrice
from snetanajsp20.Products
where SupplierID = (select SupplierID
                    from snetanajsp20.Suppliers
                    where SupplierID = 25)
;





Q3 - All 3 Dialects

--Oracle
select firstname, lastname
from employees
where employeeid in (select employeeid
					 from orders
					 group by employeeid
					 having count(employeeid) > (select count(employeeid)
												 from orders
												 where employeeid = 7))
;

--MySQL
select FirstName, LastName
from snetanajsp20.employees
where EmployeeID in (select EmployeeID
					 from snetanajsp20.orders
					 group by EmployeeID
					 having count(EmployeeID) > (select count(EmployeeID)
												 from snetanajsp20.orders
												 where EmployeeID = 7))
;

--MSSQL
use ITSE2309

select FirstName, LastName
from snetanajsp20.Employees
where EmployeeID in (select EmployeeID
					 from snetanajsp20.Orders
					 group by EmployeeID
					 having count(EmployeeID) > (select count(EmployeeID)
												 from snetanajsp20.Orders
												 where EmployeeID = 7))
;





Q4 - All 3 Dialects

--Oracle
select shipcountry
from orders
where orderid in (select orderid
				  from orderdetails
                  where productid = 21)
group by shipcountry
order by count(shipcountry) desc;

--MySQL
select ShipCountry
from snetanajsp20.orders
where OrderID in (select OrderID
				  from snetanajsp20.orderdetails
                  where ProductID = 21)
group by ShipCountry
order by count(ShipCountry) desc;

--MSSQL
use ITSE2309

select ShipCountry
from snetanajsp20.Orders
where OrderID in (select OrderID
				  from snetanajsp20.[Order Details]
                  where ProductID = 21)
group by ShipCountry
order by count(ShipCountry) desc;





Q5 - All 3 Dialects

--Oracle
select productname
from products
where productid in (select productid
				    from orderdetails
					where orderid in (select orderid
                                      from orders
                                      where customerid = 'ISLAT' and orderdate between '21-JUN-97' and '22-SEP-97'))
;

--MySQL
select ProductName
from snetanajsp20.products
where ProductID in (select ProductID
				    from snetanajsp20.orderdetails
					where OrderID in (select OrderID
									  from snetanajsp20.orders
									  where CustomerID = 'ISLAT'
									  and OrderDate between '1997-06-21' and '1997-09-22'))
;

--MSSQL
use ITSE2309

select ProductName
from snetanajsp20.Products
where ProductID in (select ProductID
				    from snetanajsp20.[Order Details]
					where OrderID in (select OrderID
									  from snetanajsp20.Orders
									  where CustomerID = 'ISLAT'
									  and OrderDate between '1997-06-21' and '1997-09-22'))
;