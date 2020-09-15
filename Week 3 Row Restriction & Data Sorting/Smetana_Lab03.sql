-- Jacob Smetana, Database Programming ITSE-2309-1011

Q-1 Oracle
select FIRSTNAME, LASTNAME, BIRTHDATE
from EMPLOYEES
where BIRTHDATE like '%MAR%'
order by LASTNAME desc;

Q-2 Oracle
select FIRSTNAME, LASTNAME, EMPLOYEEID
from EMPLOYEES
where EMPLOYEEID > 5
order by FIRSTNAME asc;

Q-3 Oracle
select TITLEOFCOURTESY, FIRSTNAME, LASTNAME, TITLE, BIRTHDATE
from EMPLOYEES
where TITLEOFCOURTESY like 'Mr.'
order by BIRTHDATE desc;

Q-4 Oracle
select PRODUCTID, PRODUCTNAME, SUPPLIERID, CATEGORYID
from PRODUCTS
where SUPPLIERID = 3
order by CATEGORYID asc;

Q-5 MSSQL
use ITSE2309

select ProductID, ProductName, UnitPrice, UnitsInStock, (UnitsInStock * UnitPrice) Total
from snetanajsp20.Products
where (UnitsInStock * UnitPrice) > 500.00
order by (UnitsInStock * UnitPrice) asc;

Q-6 MSSQL
use ITSE2309

select SupplierID, CompanyName, Phone, Fax, City
from snetanajsp20.Suppliers
where Phone like '%555%' and Fax is not null
order by City desc;

Q-7 MSSQL
use ITSE2309

select CustomerID, CompanyName, City, Country
from snetanajsp20.Customers
where Country = 'USA';

Q-8 MSSQL
use ITSE2309

select OrderID, ProductID, UnitPrice, Quantity
from snetanajsp20.[Order Details]
where ProductID in (9, 19, 29, 39, 49)
order by UnitPrice desc;

Q-9 MySQL
select OrderID, ProductID, Discount
from snetanajsp20.orderdetails
where Discount > 0.00
order by Discount asc;

Q-10 MySQL
select CategoryID, CategoryName
from snetanajsp20.categories
where CategoryName like '_e%'
	or CategoryName like '______P%';

Q-11 MySQL
select OrderID, CustomerID, OrderDate, RequiredDate, ShipName, EmployeeID
from snetanajsp20.orders
where EmployeeID >= 10;

Q-12 MySQL
select TitleOfCourtesy, FirstName, LastName, BirthDate
from snetanajsp20.employees
where TitleOfCourtesy = 'Ms.' or TitleOfCourtesy = 'Mrs.'
order by BirthDate asc;