--Jacob Smetana, ITSE-2309-1011

Q1 - All 3 Dialects

--ORACLE
--JOIN in WHERE clause--
select cus.companyname, o.orderdate, emp.lastname
from orders o, employees emp, customers cus
where o.employeeid = emp.employeeid and o.customerid = cus.customerid;

--JOIN in FROM clause--
select cus.companyname, o.orderdate, emp.lastname
from orders o
join employees emp
on o.employeeid = emp.employeeid
join customers cus
on o.customerid = cus.customerid;

--MYSQL
--JOIN in WHERE clause--
select cus.CompanyName, o.OrderDate, emp.LastName
from snetanajsp20.orders o, snetanajsp20.employees emp, snetanajsp20.customers cus
where o.EmployeeID = emp.EmployeeID and o.CustomerID = cus.CustomerID;

--JOIN in FROM clause--
select cus.CompanyName, o.OrderDate, emp.LastName
from snetanajsp20.orders o
join snetanajsp20.employees emp
on o.EmployeeID = emp.EmployeeID
join snetanajsp20.customers cus
on o.CustomerID = cus.CustomerID;

--MSSQL
--JOIN in WHERE clause--
use ITSE2309

select Cus.CompanyName, O.OrderDate, Emp.LastName
from snetanajsp20.Orders O, snetanajsp20.Employees Emp, snetanajsp20.Customers Cus
where O.EmployeeID = Emp.EmployeeID and O.CustomerID = Cus.CustomerID;

--JOIN in FROM clause--
use ITSE2309

select Cus.CompanyName, O.OrderDate, Emp.LastName
from snetanajsp20.Orders O
join snetanajsp20.Employees Emp
on O.EmployeeID = Emp.EmployeeID
join snetanajsp20.Customers Cus
on O.CustomerID = Cus.CustomerID;





Q2 - All 3 Dialects

--Oracle
--JOIN in WHERE clause--
select o.orderdate, od.quantity, p.productname
from orders o, orderdetails od, products p
where o.orderid = od.orderid and od.productid = p.productid;

--JOIN in FROM clause--
select o.orderdate, od.quantity, p.productname
from orders o
join orderdetails od
on o.orderid = od.orderid
join products p
on od.productid = p.productid;

--MySQL
--JOIN in WHERE clause--
select o.OrderDate, od.Quantity, p.ProductName
from snetanajsp20.orders o, snetanajsp20.orderdetails od, snetanajsp20.products p
where o.OrderID = od.OrderID and od.ProductID = p.ProductID;

--JOIN in FROM clause--
select o.OrderDate, od.Quantity, p.ProductName
from snetanajsp20.orders o
join snetanajsp20.orderdetails od
on o.OrderID = od.OrderID
join snetanajsp20.products p
on od.ProductID = p.ProductID;

--MSSQL
--JOIN in WHERE clause--
use ITSE2309

select O.OrderDate, OD.Quantity, P.ProductName
from snetanajsp20.Orders O, snetanajsp20.[Order Details] OD, snetanajsp20.Products P
where O.OrderID = OD.OrderID and OD.ProductID = P.ProductID;

--JOIN in FROM clause--
use ITSE2309

select O.OrderDate, OD.Quantity, P.ProductName
from snetanajsp20.Orders O
join snetanajsp20.[Order Details] OD
on O.OrderID = OD.OrderID
join snetanajsp20.Products P
on OD.ProductID = P.ProductID;





Q3 - All 3 Dialects

--Oracle
--JOIN in WHERE clause--
select p.productname, c.categoryname, sum(od.quantity)
from orderdetails od, products p, categories c
where od.productid = p.productid and p.categoryid = c.categoryid
group by p.productname, c.categoryname
order by sum(od.quantity) desc;

--JOIN in FROM clause--
select p.productname, c.categoryname, sum(od.quantity)
from orderdetails od
join products p
on od.productid = p.productid
join categories c
on p.categoryid = c.categoryid
group by p.productname, c.categoryname
order by sum(od.quantity) desc;

-- MySQL
--JOIN in WHERE clause--
select p.ProductName, c.CategoryName, sum(od.Quantity)
from snetanajsp20.orderdetails od, snetanajsp20.products p, snetanajsp20.categories c
where od.ProductID = p.ProductID and p.CategoryID = c.CategoryID
group by p.ProductName, c.CategoryName
order by sum(od.Quantity) desc;

--JOIN in FROM clause--
select p.ProductName, c.CategoryName, sum(od.Quantity)
from snetanajsp20.orderdetails od
join snetanajsp20.products p
on od.ProductID = p.ProductID
join snetanajsp20.categories c
on p.CategoryID = c.CategoryID
group by p.ProductName, c.CategoryName
order by sum(od.Quantity) desc;

--MSSQL
--JOIN in WHERE clause--
use ITSE2309

select P.ProductName, C.CategoryName, sum(OD.Quantity) Quantity
from snetanajsp20.[Order Details] OD, snetanajsp20.Products P, snetanajsp20.Categories C
where OD.ProductID = P.ProductID and P.CategoryID = C.CategoryID
group by P.ProductName, C.CategoryName
order by sum(OD.Quantity) desc;

--JOIN in FROM clause--
use ITSE2309

select P.ProductName, C.CategoryName, sum(OD.Quantity) Quantity
from snetanajsp20.[Order Details] OD
join snetanajsp20.Products P
on OD.ProductID = P.ProductID
join snetanajsp20.Categories C
on P.CategoryID = C.CategoryID
group by P.ProductName, C.CategoryName
order by sum(OD.Quantity) desc;





Q4 - All 3 Dialects

--Oracle
--JOIN in WHERE clause--
select emp.lastname, terr.territorydescription, r.regiondescription
from employees emp, employeeterritories empterr, territories terr, region r
where emp.employeeid = empterr.employeeid and empterr.territoryid = terr.territoryid and terr.regionid = r.regionid
order by emp.lastname;

--JOIN in FROM clause--
select emp.lastname, terr.territorydescription, r.regiondescription
from employees emp
join employeeterritories empterr
on emp.employeeid = empterr.employeeid
join territories terr
on empterr.territoryid = terr.territoryid
join region r
on terr.regionid = r.regionid
order by emp.lastname;

--MySQL
--JOIN in WHERE clause--
select emp.LastName, terr.TerritoryDescription, r.RegionDescription
from snetanajsp20.employees emp, snetanajsp20.employeeterritories empterr, snetanajsp20.territories terr, snetanajsp20.region r
where emp.EmployeeID = empterr.EmployeeID and empterr.TerritoryID = terr.TerritoryID and terr.RegionID = r.RegionID
order by emp.LastName;

--JOIN in FROM clause--
select emp.LastName, terr.TerritoryDescription, r.RegionDescription
from snetanajsp20.employees emp
join snetanajsp20.employeeterritories empterr
on emp.EmployeeID = empterr.EmployeeID
join snetanajsp20.territories terr
on empterr.TerritoryID = terr.TerritoryID
join snetanajsp20.region r
on terr.RegionID = r.RegionID
order by emp.LastName;

--MSSQL
--JOIN in WHERE clause--
use ITSE2309

select Emp.LastName, Terr.TerritoryDescription, R.RegionDescription
from snetanajsp20.Employees Emp, snetanajsp20.EmployeeTerritories EmpTerr, snetanajsp20.Territories Terr, snetanajsp20.Region R
where Emp.EmployeeID = EmpTerr.EmployeeID and EmpTerr.TerritoryID = Terr.TerritoryID and Terr.RegionID = R.RegionID
order by Emp.LastName;

--JOIN in FROM clause--
use ITSE2309

select Emp.LastName, Terr.TerritoryDescription, R.RegionDescription
from snetanajsp20.Employees Emp
join snetanajsp20.EmployeeTerritories EmpTerr
on Emp.EmployeeID = EmpTerr.EmployeeID
join snetanajsp20.Territories Terr
on EmpTerr.TerritoryID = Terr.TerritoryID
join snetanajsp20.Region R
on Terr.RegionID = R.RegionID
order by Emp.LastName;