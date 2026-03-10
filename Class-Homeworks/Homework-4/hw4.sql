create database if not exists dsci551_hw4;

use dsci551_hw4;

drop table if exists user;
create table user(id int primary key, name varchar(20));
insert into user values (100, 'john');
insert into user values (101, 'david');

create index name_idx on user(name);

drop table if exists student;
create table student(id int primary key, name varchar(20), 
	gender varchar(10));
insert into student values(100, 'john', 'male');
insert into student values(101, 'mary', 'female');
insert into student values(102, 'david', null);

-- test system generated row_id
drop table if exists test;
create table test(a int, b varchar(10), c tinyint);
insert into test values(100, 'bill', 1);
insert into test values(null, 'david', 2);
insert into test values(null, null, 4);
insert into test values(101, null, null);

-- test varied data types
drop table if exists test_types;
create table test_types(id int primary key,
	id1 int unsigned,
	age tinyint,
    age1 tinyint unsigned,
    age2 smallint,
    age3 mediumint,
    score bigint,
	name char(10) unique, 
	gpa float,
    salary double,
    height numeric(5, 2),
    addr varchar(20), 
    dob date,
    resume text);
insert into test_types values(100, 101, 25, 26, 27, 28, 1000,
	"john smith", 4.5, 1000.8, 
    175.28,
    "100 maple st", '2026-1-2',
    "my cv is text type");
    
-- test char and varchar
drop table if exists employee;
create table employee(id int primary key, name char(10), addr varchar(20));
insert into employee values (100, 'john', '100 maple street');
insert into employee values (101, 'bill chu', '200 vermont av, LA');
insert into employee values (102, null, '123 main blvd.');

-- test composite key
drop table if exists tbl1;
create table tbl1 (a varchar(10), b char(10), 
	primary key(a,b), c int) row_format = DYNAMIC;
insert into tbl1 values('john', 'david', 2);
insert into tbl1 values('david', 'john', null);
insert into tbl1 values('bill', 'david', -2);

