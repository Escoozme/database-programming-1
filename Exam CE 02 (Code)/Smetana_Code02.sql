--Jacob Smetana, ITSE-2309-1011

Q1 - All 3 Dialects

--Oracle
select c.categoryname, sum(od.unitprice * od.quantity)
from categories c, products p, orderdetails od
where p.productid = od.productid and c.categoryid = p.categoryid
group by c.categoryname;

--MySQL
select c.CategoryName, sum(od.UnitPrice * od.Quantity)
from snetanajsp20.categories c, snetanajsp20.products p, snetanajsp20.orderdetails od
where p.ProductID = od.ProductID and c.CategoryID = p.CategoryID
group by c.CategoryName;

--MSSQL
select c.CategoryName, sum(od.UnitPrice * od.Quantity)
from snetanajsp20.Categories c, snetanajsp20.Products p, snetanajsp20.[Order Details] od
where p.ProductID = od.ProductID and c.CategoryID = p.CategoryID
group by c.CategoryName;





Q2 - All 3 Dialects

--Oracle
select firstname, lastname
from employees
where employeeid in (select employeeid
                     from orders
                     group by employeeid
                     having count(employeeid) > (select count(employeeid)
                                                 from orders
                                                 where employeeid = 4))
;

--MySQL
select FirstName, LastName
from snetanajsp20.employees
where EmployeeID in (select EmployeeID
                     from snetanajsp20.orders
                     group by EmployeeID
                     having count(EmployeeID) > (select count(EmployeeID)
                                                 from snetanajsp20.orders
                                                 where EmployeeID = 4))
;

--MSSQL
select FirstName, LastName
from snetanajsp20.Employees
where EmployeeID in (select EmployeeID
                     from snetanajsp20.Orders
                     group by EmployeeID
                     having count(EmployeeID) > (select count(EmployeeID)
                                                 from snetanajsp20.Orders
                                                 where EmployeeID = 4))
;





Q3 - All 3 Dialects

--Oracle
select productname, unitprice
from products
where supplierid = (select supplierid
                    from suppliers
                    where supplierid = 4)
;

--MySQL
select ProductName, UnitPrice
from snetanajsp20.products
where SupplierID = (select SupplierID
                    from snetanajsp20.suppliers
                    where SupplierID = 4)
;

--MSSQL
select ProductName, UnitPrice
from snetanajsp20.Products
where SupplierID = (select SupplierID
                    from snetanajsp20.Suppliers
                    where SupplierID = 4)
;





Q4 - All 3 Dialects

--Oracle
select shipcountry
from orders, orderdetails od
where orders.orderid = od.orderid and od.productid = 20
group by shipcountry
order by shipcountry desc;

--MySQL
select ShipCountry
from snetanajsp20.orders, snetanajsp20.orderdetails od
where orders.OrderID = od.OrderID and od.ProductID = 20
group by ShipCountry
order by ShipCountry desc;

--MSSQL
select ShipCountry
from snetanajsp20.Orders, snetanajsp20.[Order Details] od
where Orders.OrderID = od.OrderID and od.ProductID = 20
group by ShipCountry
order by ShipCountry desc;





Q5 - All 3 Dialects

--Oracle
select productname
from products
where productid in (select productid
                    from orderdetails
                    where orderid in (select orderid
                                      from orders
                                      where customerid = 'MAISD' and orderdate between '22-SEP-97' and '21-DEC-97'))
;

--MySQL
select ProductName
from snetanajsp20.products
where ProductID in (select ProductID
                    from snetanajsp20.orderdetails
                    where OrderID in (select OrderID
                                      from snetanajsp20.orders
                                      where CustomerID = 'MAISD' and OrderDate between '1997-09-22' and '1997-12-21'))
;

--MSSQL
select ProductName
from snetanajsp20.Products
where ProductID in (select ProductID
                    from snetanajsp20.[Order Details]
                    where OrderID in (select OrderID
                                      from snetanajsp20.Orders
                                      where CustomerID = 'MAISD' and OrderDate between '1997-09-22' and '1997-12-21'))
;





Q6 - All 3 Dialects

--Oracle
select c.companyname, sum(od.quantity)
from customers c, orders o, orderdetails od
where c.customerid = o.customerid and o.orderid = od.orderid and od.productid = 6
group by c.companyname
order by sum(od.quantity) desc;

--MySQL
select c.CompanyName, sum(od.Quantity)
from snetanajsp20.customers c, snetanajsp20.orders o, snetanajsp20.orderdetails od
where c.CustomerID = o.CustomerID and o.OrderID = od.OrderID and od.ProductID = 6
group by c.CompanyName
order by sum(od.Quantity) desc;

--MSSQL
select c.CompanyName, sum(od.Quantity)
from snetanajsp20.Customers c, snetanajsp20.Orders o, snetanajsp20.[Order Details] od
where c.CustomerID = o.CustomerID and o.OrderID = od.OrderID and od.ProductID = 6
group by c.CompanyName
order by sum(od.Quantity) desc;