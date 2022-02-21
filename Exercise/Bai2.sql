create database bai2;
use bai2;

create table students(
id int auto_increment primary key,
name varchar(50) not null,
address varchar(50) not null,
sex int default 1 not null,
age int not null check(age >18 and age <27),
email varchar(50) not null unique,
phone varchar(10) not null
);

create table classes(
id int auto_increment primary key,
name varchar(50) not null unique
);

alter table  students
add column classid int;

alter table students
add foreign key(classid) references classes(id);
insert into classes(name) value
('c10'),
('c11'),
('c12'),
('c1'),
('c2');

select * from classes;

insert into students(name, address, sex, age, email, phone ) value
("cuong","HN","1","19","cuong@gmail.com","0977183350"),
("cuong1","HN","1","20","cuong1@gmail.com","0977183351"),
("cuong2","HN","0","21","cuong2@gmail.com","0977183352"),
("cuong3","HN","1","19","cuong3@gmail.com","0977183353"),
("cuong4","HN","1","19","cuong4@gmail.com","0977183354"),
("cuong5","HN","0","23","cuong5@gmail.com","0977183355"),
("cuong6","HN","1","19","cuong6@gmail.com","0977183356"),
("cuong7","HN","1","19","cuong7@gmail.com","0977183357"),
("cuong8","HN","1","25","cuong8@gmail.com","0977183358"),
("cuong9","HN","1","19","cuong9@gmail.com","0977183359");

select * from students;

select * from students order by name desc;

select * from students order by age;

update students set classid = '1' where (id = '1');





