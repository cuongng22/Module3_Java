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
id int auto_increment not null primary key,
name varchar(50) not null unique
);

alter table  students
add column classid int;

alter table students
add constraint foreign key(classid) references classes(id);
insert into classes(name) value
('c10'),
('c11'),
('c12'),
('c1'),
('c2');

select * from classes;

insert into bai2.students(name, address, sex, age, email, phone, classid ) value
("cuong","HN","1","19","cuong@gmail.com","0977183350", "1"),
("cuong2","HN","0","21","cuong2@gmail.com","0977183352", "3"),
("cuong4","HN","1","19","cuong4@gmail.com","0977183354", "1"),
("cuong6","HN","1","19","cuong6@gmail.com","0977183356", "2"),
("cuong7","HN","1","19","cuong7@gmail.com","0977183357", "1");

select * from students;

select * from students order by name desc;

select * from students order by age;

drop table classes;
drop table students;

select students.classid, classes.name, count(*) as "so luong hoc sinh"
from studens, classes
where students.classid = classes.id
group by studens.classid, classes.name;

SELECT students.classId, classes.name, COUNT(*) AS 'Số lượng học sinh: '
FROM bai2.students, bai2.classes
where students.classId = classes.id
group by students.classId, classes.name;

select address, count(address) as "slhs"
from students 
group by students.address;
use bai2;

drop table students;


SELECT students.ClassId , classes.Name , COUNT(*) AS totalStudent
FROM bai2.students, bai2.classes
where students.ClassId = classes.Id 
group by students.ClassId, classes.name
having totalStudent = 
(select max(a.totalStudent) from 
(select students.ClassId , classes.Name , COUNT(*) AS totalStudent
from bai2.students, bai2.classes
where students.ClassId = classes.Id
group by students.ClassId, classes.name)a);

select students.classid, classes.name, count(*) AS totalStudent
from bai2.students 
join classes on students.classid = classes.id
group by students.classid, classes.name;

SELECT students.ClassId , classes.Name , COUNT(*) AS totalStudent
FROM bai2.students, bai2.classes
where students.ClassId = classes.Id 
group by students.ClassId, classes.name
having totalStudent = 
(select min(a.totalStudent) from 
(select students.ClassId , classes.Name , COUNT(*) AS totalStudent
from bai2.students, bai2.classes
where students.ClassId = classes.Id
group by students.ClassId, classes.name)a);

select students.classid, classes.name, count(*) as total
from bai2.students, bai2.classes
where students.classid = classes.id
group by students.classid, classes.id
having total >= 5;

select students.address, count(students.address) as total
from bai2.students
group by students.address
having total >=5;

select students.classid, students.name, classes.name, students.age
from bai2.students, bai2.classes
where age = (select min(age) from bai2.students);

select students.classid, students.name, classes.name, students.age
from bai2.students, bai2.classes
where age = (select max(age) from bai2.students);

delete from bai2.students
where students.id in(
select * from (
select students.id from bai2.students where (address like "HN")
) a
);

update bai2.students set sex = "0" where students.id in (
select students.id 
from bai2.students 
where( students.address like "HN")
);

select * from bai2.students;








