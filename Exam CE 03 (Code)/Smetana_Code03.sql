--Jacob Smetana, ITSE-2309-1011

Q1 - All 3 Dialects

--Oracle
create table STUDENT
(STUDENTID number(7) constraint student_studentid_pk primary key,
 FIRST varchar2(20) constraint student_first_nn not null,
 LAST varchar2(20) constraint student_last_nn not null,
 BIRTHDATE date constraint student_birthdate_nn not null);


--MySQL
create table snetanajsp20.student
(StudentID int(7) primary key,
 First varchar(20) not null,
 Last varchar(20) not null,
 BirthDate date not null);

--MSSQL
create table snetanajsp20.Student
(StudentID int constraint student_studentid_pk primary key,
 First varchar(20) constraint student_first_nn not null,
 Last varchar(20) constraint student_last_nn not null,
 BirthDate date constraint student_birthdate_nn not null);





Q2 - All 3 Dialects

--Oracle
create table COURSE
(COURSENUMBER number(4),
 COURSERUBRIC varchar2(4) constraint course_courserubric_nn not null,
 COURSENAME varchar2(30) constraint course_coursename_nn not null,
 STUDENTID number(7),
 constraint course_coursenumber_pk primary key(COURSENUMBER),
 constraint course_studentid_fk foreign key(STUDENTID) references STUDENT(STUDENTID));

--MySQL
create table snetanajsp20.course
(CourseNumber int(4),
 CourseRubric varchar(4) not null,
 CourseName varchar(30) not null,
 StudentID int(7),
 constraint course_coursenumber_pk primary key(CourseNumber),
 constraint course_studentid_fk foreign key(StudentID) references student(StudentID));

--MSSQL
create table snetanajsp20.Course
(CourseNumber int,
 CourseRubric varchar(4) constraint course_courserubric_nn not null,
 CourseName varchar(30) constraint course_coursename_nn not null,
 StudentID int,
 constraint course_coursenumber_pk primary key(CourseNumber),
 constraint course_studentid_fk foreign key(StudentID) references snetanajsp20.Student(StudentID));





Q3 - All 3 Dialects

--Oracle
alter table STUDENT
add TITLE varchar2(10);

--MySQL
alter table snetanajsp20.student
add Title varchar(10);

--MSSQL
alter table snetanajsp20.Student
add Title varchar(10);





Q4 - All 3 Dialects

--Oracle
insert into STUDENT(STUDENTID, FIRST, LAST, BIRTHDATE) values(9815472, 'Bugs', 'Bunny', '15-AUG-54');
insert into STUDENT(STUDENTID, FIRST, LAST, BIRTHDATE) values(5731254, 'Daffy', 'Duck', '31-MAR-40');
insert into STUDENT(STUDENTID, FIRST, LAST, BIRTHDATE) values(9814572, 'Mickey', 'Mouse', '01-APR-34');

--MySQL
insert into snetanajsp20.student(StudentID, First, Last, BirthDate) values(9815472, 'Bugs', 'Bunny', '1954-08-15');
insert into snetanajsp20.student(StudentID, First, Last, BirthDate) values(5731254, 'Daffy', 'Duck', '1940-03-31');
insert into snetanajsp20.student(StudentID, First, Last, BirthDate) values(9814572, 'Mickey', 'Mouse', '1934-04-01');

--MSSQL
insert into snetanajsp20.Student(StudentID, First, Last, BirthDate) values(9815472, 'Bugs', 'Bunny', '1954-08-15');
insert into snetanajsp20.Student(StudentID, First, Last, BirthDate) values(5731254, 'Daffy', 'Duck', '1940-03-31');
insert into snetanajsp20.Student(StudentID, First, Last, BirthDate) values(9814572, 'Mickey', 'Mouse', '1934-04-01');





Q5 - All 3 Dialects

--Oracle
insert into COURSE(COURSENUMBER, COURSERUBRIC, COURSENAME, STUDENTID) values(1307, 'ITSW', 'Intro to Database', 5731254);
insert into COURSE(COURSENUMBER, COURSERUBRIC, COURSENAME, STUDENTID) values(1329, 'ITSE', 'Programming Logic', 9815472);
insert into COURSE(COURSENUMBER, COURSERUBRIC, COURSENAME, STUDENTID) values(1311, 'ITSE', 'Beginning Web', 9815472);

--MySQL
insert into snetanajsp20.course(CourseNumber, CourseRubric, CourseName, StudentID) values(1307, 'ITSW', 'Intro to Database', 5731254);
insert into snetanajsp20.course(CourseNumber, CourseRubric, CourseName, StudentID) values(1329, 'ITSE', 'Programming Logic', 9815472);
insert into snetanajsp20.course(CourseNumber, CourseRubric, CourseName, StudentID) values(1311, 'ITSE', 'Beginning Web', 9815472);

--MSSQL
insert into snetanajsp20.Course(CourseNumber, CourseRubric, CourseName, StudentID) values(1307, 'ITSW', 'Intro to Database', 5731254);
insert into snetanajsp20.Course(CourseNumber, CourseRubric, CourseName, StudentID) values(1329, 'ITSE', 'Programming Logic', 9815472);
insert into snetanajsp20.Course(CourseNumber, CourseRubric, CourseName, StudentID) values(1311, 'ITSE', 'Beginning Web', 9815472);





Q6 - All 3 Dialects

--Oracle
update STUDENT set TITLE = 'Senior' where STUDENTID = 5731254;
update STUDENT set TITLE = 'Junior' where STUDENTID = 9814572;

--MySQL
update snetanajsp20.student set Title = 'Senior' where StudentID = 5731254;
update snetanajsp20.student set Title = 'Junior' where StudentID = 9814572;

--MSSQL
update snetanajsp20.Student set Title = 'Senior' where StudentID = 5731254;
update snetanajsp20.Student set Title = 'Junior' where StudentID = 9814572;




Q7 - All 3 Dialects

--Oracle
delete from STUDENT where STUDENTID like '_____5%';

--MySQL
delete from snetanajsp20.student where StudentID like '_____5%';

--MSSQL
delete from snetanajsp20.Student where StudentID like '_____5%';