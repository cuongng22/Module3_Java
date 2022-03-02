create database ex1;
use ex1;
create table Student(
RN int primary key auto_increment,
name varchar(50) not null,
age int not null,
gender int default 1
);

create table Subject(
sID int primary key auto_increment,
sName varchar(50) not null
);

create table StudentSubject(
RN int not null,
SID int not null,
mark int not null check(mark>=0 and mark <= 10),
date date not null,
constraint rn foreign key(rn) references student(rn),
constraint sid foreign key(sid) references subject(sid),
primary key (rn, sid)
);

insert into Student(name , age, gender) values
('Mỹ Linh', 18, 0),
('Đàm Vĩnh Hưng',18, 1),
('	Kim Tử Long ',20,0),
('Tài Linh',18, 0),
('Mỹ Lệ', 18 ,0),
('ngọc Anh', 23 ,1);

select * from student;

insert into subject(sname) values
('SQL'),
('LGC'),
('HTML'),
('CF'),
('Core Java'),
('VB.Net');

select * from subject;

insert into studentsubject(rn, sid, mark, date) values
(1, 1, 8 , '2005-07-28'),
(2, 2, 3 , '2005-09-07'),
(3, 3, 9 , '2005-07-31'),
(4, 1, 5 , '2005-07-30'),
(5, 4, 10 , '2005-07-19'),
(6, 1, 9, '2005-07-25');
select * from studentsubject;

select sname from subject
where subject.sid not in(select sid from studentsubject where studentsubject.sid = subject.sid);

 