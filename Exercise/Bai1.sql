

-- 1. tao bang students
create database student_management ;
use student_management ;
create table students(
id int auto_increment primary key,
student_name varchar(50) not null,
address varchar(50) not null,
sex int default 1 not null,
age int not null check(age >18 and age <29),
email varchar(50) not null unique,
phone varchar(50) not null
);

-- 2. tao bang classes
create table classes(
id int auto_increment primary key,
name varchar(50) not null unique
);

-- 3+4 bo sung cot classid va them khoa ngoai
alter table students
add column classid int,
add constraint foreign key (classId) references classes(id);

-- 5. them 5 lop hoc
insert into classes(name) value('C1021H1');
insert into classes(name) value('C1121H1');
insert into classes(name) value('C1221H1');
insert into classes(name) value('C1321H1');
insert into classes(name) value('C1421H1');


-- 6. them 5 sv vao bang students
insert into student_management.students(student_name, address, sex, age, email, phone, classid) values
('Toàn', 'QN', '1', '22', 'toan@codegym.vn', '0326156727', '1'),
('Như Anh', 'TB', '1', '23', 'nhuanh@codegym.vn', '0326456727', '2'),
('C Kiều Anh', 'HN', '1', '24', 'kieuanh@codegym.vn', '0334105727', '3'),
('A Hoàng', 'HN', '1', '27', 'hoang@codegym.vn', '0326876727', '4'),
('Luân', 'HN', '1', '28', 'luan@codegym.vn', '0326198727', '5');

-- 7. hien thi tat ca hoc vien
select * from students;

-- 8. hien thi tat ca cac hoc vien nam
select * from students where sex  =1;

-- 9. hien thi hv tuoi nho hon 20
select * from students where age < 20;

-- 10. hien thi tat ca hoc vien que khac ha noi
select * from students where address != 'HN';

-- 11.hien thi hoc vien ten bat dau bang chu H

select *from  students where student_name like 'H%';





