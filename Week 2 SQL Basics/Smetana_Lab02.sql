-- Jacob Smetana

Q-1 MSSQL
use ITSE2309

select CompanyName, Address, City, PostalCode
from snetanajsp20.Customers;

Q-2 MSSQL
use ITSE2309

select ProductName "Product", UnitsInStock "QoH", UnitPrice "Price", (UnitsInStock * UnitPrice) Total
from snetanajsp20.Products;

Q-3 Oracle
select *
from orders;

Q-4 Oracle
select TITLEOFCOURTESY || ' ' || FIRSTNAME || ' ' || LASTNAME "Title", HIREDATE "Hired"
from EMPLOYEES;

Q-5 MySQL
select ShipperID "ID", CompanyName "Name", Phone
from snetanajsp20.shippers;

Q-6 MySQL
select TerritoryDescription
from snetanajsp20.territories;