-- Jacob Smetana ITSE 2309, Exam 1

Q-1 Oracle
select firstname, lastname, add_months(hiredate, 120) Anniversary
from employees;

Q-2 Oracle
select *
from orders;

Q-3 Oracle
select titleofcourtesy || ' ' || firstname || ' ' || lastname || ' was born on ' || birthdate Birthdays
from employees;

Q-4 Oracle
select country, count(country)
from suppliers
where city not like 'S%'
group by country
having count(country) <= 2;

Q-5 MSSQL
use ITSE2309

select ProductID, ProductName, UnitPrice, UnitsInStock, (UnitPrice * UnitsInStock)
from snetanajsp20.Products
where (UnitPrice * UnitsInStock) <= 50.00
order by (UnitPrice * UnitsInStock) desc;

Q-6 MSSQL
use ITSE2309

select SupplierID, avg(UnitPrice)
from snetanajsp20.Products
where QuantityPerUnit not like '%jars%'
group by SupplierID;

Q-7 MSSQL
use ITSE2309

select CategoryID, CategoryName
from snetanajsp20.Categories
where CategoryName like '_e%' or CategoryName like '______P%';

Q-8 MySQL
select OrderID, CustomerID
from snetanajsp20.orders
where dayname(OrderDate) = "Tuesday"
order by ShippedDate asc;

Q-9 MySQL
select OrderID, CustomerID, ShipName
from snetanajsp20.orders
where datediff(ShippedDate, OrderDate) < 5;

Q-10 MySQL
select OrderID, CustomerID, OrderDate, RequiredDate, ShipName
from snetanajsp20.orders
where EmployeeID >= 5;