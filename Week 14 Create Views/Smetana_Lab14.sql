--Jacob Smetana, ITSE-2309-1011

Q1 - All 3 Dialects

--Oracle
create view STAFF_VW
as select FIRSTNAME, LASTNAME, HIREDATE
from EMPLOYEES;

select *
from STAFF_VW;

--MySQL
create view snetanajsp20.staff_vw
as select FirstName, LastName, HireDate
from snetanajsp20.employees;

select *
from snetanajsp20.staff_vw;

--MSSQL
create view snetanajsp20.Staff_VW
as select FirstName, LastName, HireDate
from snetanajsp20.Employees;

select *
from snetanajsp20.Staff_VW;





Q2 - All 3 Dialects

--Oracle
create view ALLEMP_VW
as select *
from EMPLOYEES;

select *
from ALLEMP_VW;

--MySQL
create view snetanajsp20.allemp_vw
as select *
from snetanajsp20.employees;

select *
from snetanajsp20.allemp_vw;

--MSSQL
create view snetanajsp20.AllEmp_VW
as select *
from snetanajsp20.Employees;

select *
from snetanajsp20.AllEmp_VW;





Q3 - All 3 Dialects

--Oracle
create view STAFFREGION_VW
as select REGION, EMPLOYEEID, FIRSTNAME, LASTNAME
from EMPLOYEES;

select *
from STAFFREGION_VW;

--MySQL
create view snetanajsp20.staffregion_vw
as select Region, EmployeeID, FirstName, LastName
from snetanajsp20.employees;

select *
from snetanajsp20.staffregion_vw;

--MSSQL
create view snetanajsp20.StaffRegion_VW
as select Region, EmployeeID, FirstName, LastName
from snetanajsp20.Employees;

select *
from snetanajsp20.StaffRegion_VW;





Q4 - All 3 Dialects

--Oracle
create view STAFFINFO_VW
as select EMPLOYEEID, FIRSTNAME, LASTNAME, HIREDATE, TITLE, REGION, REGIONDESCRIPTION
from EMPLOYEES, REGION;

select *
from STAFFINFO_VW;

--MySQL
create view snetanajsp20.staffinfo_vw
as select EmployeeID, FirstName, LastName, HireDate, Title, Region, RegionDescription
from snetanajsp20.employees, snetanajsp20.region;

select *
from snetanajsp20.staffinfo_vw;

--MSSQL
create view snetanajsp20.StaffInfo_VW
as select EmployeeID, FirstName, LastName, HireDate, Title, Region, RegionDescription
from snetanajsp20.Employees, snetanajsp20.Region;

select *
from snetanajsp20.StaffInfo_VW;





Q5 - All 3 Dialects

--Oracle
create or replace view STAFF_VW
as select FIRSTNAME, LASTNAME, TITLE, HIREDATE
from EMPLOYEES;

select *
from STAFF_VW;

--MySQL
alter view snetanajsp20.staff_vw
as select FirstName, LastName, Title, HireDate
from snetanajsp20.employees;

select *
from snetanajsp20.staff_vw;

--MSSQL
alter view snetanajsp20.Staff_VW
as select FirstName, LastName, Title, HireDate
from snetanajsp20.Employees;

select *
from snetanajsp20.Staff_VW;





Q6 - All 3 Dialects

--Oracle
create or replace view ALLEMP_VW
as select BIRTHDATE, TITLE
from EMPLOYEES;

select *
from ALLEMP_VW;

--MySQL
alter view snetanajsp20.allemp_vw
as select BirthDate, Title
from snetanajsp20.employees;

select *
from snetanajsp20.allemp_vw;

--MSSQL
alter view snetanajsp20.AllEmp_VW
as select BirthDate, Title
from snetanajsp20.Employees;

select *
from snetanajsp20.AllEmp_VW;





Q7 - All 3 Dialects

--Oracle
create or replace view STAFFINFO_VW
as select EMPLOYEEID, FIRSTNAME, LASTNAME, HIREDATE, TITLE, REGION, REGIONDESCRIPTION
from EMPLOYEES, REGION
where HIREDATE = '31-MAR-00';

select *
from STAFFINFO_VW;

--MySQL
alter view snetanajsp20.staffinfo_vw
as select EmployeeID, FirstName, LastName, HireDate, Title, Region, RegionDescription
from snetanajsp20.employees, snetanajsp20.region
where HireDate = '2000-03-31';

select *
from snetanajsp20.staffinfo_vw;

--MSSQL
alter view snetanajsp20.StaffInfo_VW
as select EmployeeID, FirstName, LastName, HireDate, Title, Region, RegionDescription
from snetanajsp20.Employees, snetanajsp20.Region
where HireDate = '2000-03-31';

select *
from snetanajsp20.StaffInfo_VW;





Q8 - All 3 Dialects

--Oracle
drop view ALLEMP_VW;
drop view STAFF_VW;
drop view STAFFINFO_VW;
drop view STAFFREGION_VW;

--MySQL
drop view snetanajsp20.allemp_vw;
drop view snetanajsp20.staff_vw;
drop view snetanajsp20.staffinfo_vw;
drop view snetanajsp20.staffregion_vw;

--MSSQL
drop view snetanajsp20.AllEmp_VW;
drop view snetanajsp20.Staff_VW;
drop view snetanajsp20.StaffInfo_VW;
drop view snetanajsp20.StaffRegion_VW;