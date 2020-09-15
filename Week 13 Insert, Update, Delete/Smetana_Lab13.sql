--Jacob Smetana, ITSE-2309-1011

Q1 - All 3 Dialects

--Oracle
insert into STUDENT(STUDENTID, FNAME, LNAME, BIRTHDATE) values(8041, 'Bugs', 'Bunny', '23-OCT-54');
insert into STUDENT(STUDENTID, FNAME, LNAME, BIRTHDATE) values(8715, 'Daffy', 'Duck', '13-APR-43');
insert into STUDENT(STUDENTID, FNAME, LNAME, BIRTHDATE) values(6485, 'Elmer', 'Fudd', '05-MAY-46');
insert into STUDENT(STUDENTID, FNAME, LNAME, BIRTHDATE) values(7614, 'Tweedy', 'Bird', '31-AUG-51');
insert into STUDENT(STUDENTID, FNAME, LNAME, BIRTHDATE) values(6745, 'Sylvester', 'Cat', '19-FEB-49');

--MySQL
insert into snetanajsp20.student(StudentID, FName, LName, Birthdate) values(8041, 'Bugs', 'Bunny', '1954-10-23');
insert into snetanajsp20.student(StudentID, FName, LName, Birthdate) values(8715, 'Daffy', 'Duck', '1943-04-13');
insert into snetanajsp20.student(StudentID, FName, LName, Birthdate) values(6485, 'Elmer', 'Fudd', '1946-05-05');
insert into snetanajsp20.student(StudentID, FName, LName, Birthdate) values(7614, 'Tweedy', 'Bird', '1951-08-31');
insert into snetanajsp20.student(StudentID, FName, LName, Birthdate) values(6745, 'Sylvester', 'Cat', '1949-02-19');

--MSSQL
insert into snetanajsp20.Student(StudentID, FName, LName, Birthdate) values(8041, 'Bugs', 'Bunny', '1954-10-23');
insert into snetanajsp20.Student(StudentID, FName, LName, Birthdate) values(8715, 'Daffy', 'Duck', '1943-04-13');
insert into snetanajsp20.Student(StudentID, FName, LName, Birthdate) values(6485, 'Elmer', 'Fudd', '1946-05-05');
insert into snetanajsp20.Student(StudentID, FName, LName, Birthdate) values(7614, 'Tweedy', 'Bird', '1951-08-31');
insert into snetanajsp20.Student(StudentID, FName, LName, Birthdate) values(6745, 'Sylvester', 'Cat', '1949-02-19');





Q2 - All 3 Dialects

--Oracle
insert into PHONE(PID, STUDENTID, PHONENUMBER, PHONETYPE) values(1, 6485, '920-551-1524', 'MOBILE');
insert into PHONE(PID, STUDENTID, PHONENUMBER, PHONETYPE) values(2, 7614, '920-457-3251', 'HOME');
insert into PHONE(PID, STUDENTID, PHONENUMBER, PHONETYPE) values(3, 8041, '925-457-6658', 'HOME');
insert into PHONE(PID, STUDENTID, PHONENUMBER, PHONETYPE) values(4, 8041, '925-474-6854', 'MOBILE');
insert into PHONE(PID, STUDENTID, PHONENUMBER, PHONETYPE) values(5, 8715, '928-451-6632', 'OFFICE');

--MySQL
insert into snetanajsp20.phone(PID, StudentID, PhoneNumber, PhoneType) values(1, 6485, '920-551-1524', 'MOBILE');
insert into snetanajsp20.phone(PID, StudentID, PhoneNumber, PhoneType) values(2, 7614, '920-457-3251', 'HOME');
insert into snetanajsp20.phone(PID, StudentID, PhoneNumber, PhoneType) values(3, 8041, '925-457-6658', 'HOME');
insert into snetanajsp20.phone(PID, StudentID, PhoneNumber, PhoneType) values(4, 8041, '925-474-6854', 'MOBILE');
insert into snetanajsp20.phone(PID, StudentID, PhoneNumber, PhoneType) values(5, 8715, '928-451-6632', 'OFFICE');

--MSSQL
insert into snetanajsp20.Phone(PID, StudentID, PhoneNumber, PhoneType) values(1, 6485, '920-551-1524', 'MOBILE');
insert into snetanajsp20.Phone(PID, StudentID, PhoneNumber, PhoneType) values(2, 7614, '920-457-3251', 'HOME');
insert into snetanajsp20.Phone(PID, StudentID, PhoneNumber, PhoneType) values(3, 8041, '925-457-6658', 'HOME');
insert into snetanajsp20.Phone(PID, StudentID, PhoneNumber, PhoneType) values(4, 8041, '925-474-6854', 'MOBILE');
insert into snetanajsp20.Phone(PID, StudentID, PhoneNumber, PhoneType) values(5, 8715, '928-451-6632', 'OFFICE');





Q3 - All 3 Dialects

--Oracle
update STUDENT set GPA = 3.984 where STUDENTID = 8041;
update STUDENT set GPA = 3.899 where STUDENTID = 7614;
update STUDENT set GPA = 2.951 where STUDENTID = 6485;

--MySQL
update snetanajsp20.student set GPA = 3.984 where StudentID = 8041;
update snetanajsp20.student set GPA = 3.899 where StudentID = 7614;
update snetanajsp20.student set GPA = 2.951 where StudentID = 6485;

--MSSQL
update snetanajsp20.Student set GPA = 3.984 where StudentID = 8041;
update snetanajsp20.Student set GPA = 3.899 where StudentID = 7614;
update snetanajsp20.Student set GPA = 2.951 where StudentID = 6485;





Q4 - All 3 Dialects

--Oracle
delete from STUDENT where STUDENTID like '___5';

--MySQL
delete from snetanajsp20.student where StudentID like '___5';

--MSSQL
delete from snetanajsp20.Student where StudentID like '___5';





Q5 - All 3 Dialects

--Oracle
update STUDENT set GPA = GPA + (GPA * .01);

--MySQL
update snetanajsp20.student set GPA = GPA + (GPA * .01);

--MSSQL
update snetanajsp20.Student set GPA = GPA + (GPA * .01);