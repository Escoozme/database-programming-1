--Jacob Smetana, ITSE-2309-1011

Q1 - All 3 Dialects

--Oracle
create table EMP
(empno number(4) constraint emp_empno_pk primary key,
 ename varchar2(18) constraint emp_ename_nn not null,
 job varchar2(12),
 mgr varchar2(4),
 hiredate date,
 sal number(5) constraint emp_sal_nn not null,
 comm varchar2(5),
 deptno number(2) constraint emp_deptno_nn not null);

--MySQL
create table snetanajsp20.emp
(empno int(4) primary key,
 ename varchar(18) not null,
 job varchar(12),
 mgr varchar(4),
 hiredate date,
 sal int(5) not null,
 comm varchar(5),
 deptno int(2) not null);
 
--MSSQL
create table snetanajsp20.Emp
(empno int constraint emp_empno_pk primary key,
 ename varchar(18) constraint emp_ename_nn not null,
 job varchar(12),
 mgr varchar(4),
 hiredate date,
 sal int constraint emp_sal_nn not null,
 comm varchar(5),
 deptno int constraint emp_deptno_nn not null);





Q2 - All 3 Dialects

--Oracle
create table DEPT
(deptno number(2) constraint dept_deptno_nn not null,
 ename varchar2(18),
 loc varchar2(13));

--MySQL
create table snetanajsp20.dept
(deptno int(2) not null,
 ename varchar(18),
 loc varchar(13));
 
--MSSQL
create table snetanajsp20.Dept
(deptno int constraint dept_deptno_nn not null,
 ename varchar(18),
 loc varchar(13));





Q3 - All 3 Dialects

--Oracle
create table SALGRADE
(grade number(2),
 losal number(5),
 hisal number(5));
 
--MySQL
create table snetanajsp20.salgrade
(grade int(2),
 losal int(5),
 hisal int(5));
 
--MSSQL
create table snetanajsp20.Salgrade
(grade int,
 losal int,
 hisal int);