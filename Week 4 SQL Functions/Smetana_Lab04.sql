-- Jacob Smetana, Database Programming ITSE-2309-1011

Q-1 Oracle
select initcap(firstname), initcap(lastname)
from employees;


Q-2 Oracle
select firstname, lastname, add_months(hiredate, 300) Anniversary
from employees;


Q-3 Oracle
select country, count(country)
from customers
group by country
order by count(country);


Q-4 Oracle
select country, count(country)
from suppliers
where city not like 'S%'
group by country
having count(country) < 3;


Q-5 MSSQL
use ITSE2309

select replace(CategoryName, 'e', '3')
from snetanajsp20.Categories
where Description like '%c%';


Q-6 MSSQL
use ITSE2309

select TerritoryID, TerritoryDescription, count(RegionID)
from snetanajsp20.Territories
where RegionID not like 1
group by TerritoryID, TerritoryDescription, RegionID
having count(RegionID) >= 5;


Q-7 MSSQL
use ITSE2309

select SupplierID, avg(UnitPrice)
from snetanajsp20.Products
where QuantityPerUnit not like '%jars%'
group by SupplierID;


Q-8 MSSQL
use ITSE2309

select OrderID, ProductID, UnitPrice, Quantity, Discount
from snetanajsp20.[Order Details]
where ProductID in (9, 19, 29, 39, 49) and Discount = 0
order by UnitPrice desc;


Q-9 MySQL
select OrderID, CustomerID
from snetanajsp20.orders
where dayname(OrderDate) = "Monday"
order by ShippedDate asc;

Q-10 MySQL
select OrderID, CustomerID, ShipName
from snetanajsp20.orders
where datediff(ShippedDate, OrderDate) < 7;