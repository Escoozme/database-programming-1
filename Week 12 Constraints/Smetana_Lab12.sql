--Jacob Smetana, ITSE-2309-1011

Q1 - All 3 Dialects

--Oracle
create table STUDENT
(STUDENTID number(7) constraint student_studentid_pk primary key,
 FNAME varchar2(20) constraint student_fname_nn not null,
 LNAME varchar2(30) constraint student_lname_nn not null,
 BIRTHDATE date constraint student_birthdate_nn not null);
 
--MySQL
create table snetanajsp20.student
(StudentID int(7) primary key,
 FName varchar(20) not null,
 LName varchar(30) not null,
 Birthdate date not null);
 
--MSSQL
create table snetanajsp20.Student
(StudentID int constraint student_studentid_pk primary key,
 FName varchar(20) constraint student_fname_nn not null,
 LName varchar(30) constraint student_lname_nn not null,
 Birthdate date constraint student_birthdate_nn not null);





Q2 - All 3 Dialects

--Oracle
create table PHONE
(PID number(5),
 STUDENTID number(7) constraint phone_studentid_nn not null,
 PHONENUMBER char(12) constraint phone_phonenumber_nn not null,
 PHONETYPE varchar2(15) constraint phone_phonetype_nn not null,
 constraint phone_pid_pk primary key(PID),
 constraint phone_studentid_fk foreign key(STUDENTID) references STUDENT(STUDENTID));
 
--MySQL
create table snetanajsp20.phone
(PID int(5),
 StudentID int(7) not null,
 PhoneNumber char(12) not null,
 PhoneType varchar(15) not null,
 constraint phone_pid_pk primary key(PID),
 constraint phone_studentid_fk foreign key(StudentID) references student(StudentID));
 
--MSSQL
create table snetanajsp20.Phone
(PID int,
 StudentID int constraint phone_studentid_nn not null,
 PhoneNumber char(12) constraint phone_phonenumber_nn not null,
 PhoneType varchar(15) constraint phone_phonetype_nn not null,
 constraint phone_pid_pk primary key(PID),
 constraint phone_studentid_fk foreign key(StudentID) references snetanajsp20.Student(StudentID));





Q3 - All 3 Dialects

--Oracle
alter table STUDENT
add GPA number(4,3);

--MySQL
alter table snetanajsp20.student
add GPA float(4,3);

--MSSQL
alter table snetanajsp20.Student
add GPA decimal(4,3);





Q4 - All 3 Dialects

--Oracle
rename STUDENT to STU;

--MySQL
rename table snetanajsp20.student to snetanajsp20.stu;

--MSSQL
exec sp_rename 'snetanajsp20.Student', 'Stu';





Q5 - All 3 Dialects

--Oracle
drop table PHONE;

--MySQL
drop table snetanajsp20.phone;

--MSSQL
drop table snetanajsp20.Phone;