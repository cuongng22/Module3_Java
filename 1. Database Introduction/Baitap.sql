create database class;
create table classes(
id int not null primary key,
name varchar(50)
);
create table teacher(
id int not null primary key,
name varchar(50),
age int,
country varchar(50)
);