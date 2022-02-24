create database minitest;
use minitest;

create table city(
c_id int auto_increment primary key not null,
c_name varchar(50) not null
); 

create table type_tour(
tt_id int primary key not null auto_increment,
tt_typecode varchar(10) not null,
tt_typename varchar(50) not null
);

CREATE TABLE travel_destinations(
td_id int primary key not null auto_increment,
td_name varchar(50) not null,
td_avgprice int,
td_cityid int,
td_description varchar(50),
CONSTRAINT td_ID_city FOREIGN KEY ( td_cityid ) REFERENCES city ( c_id)
);

create table customer(
cus_id int primary key auto_increment,
cus_name varchar(50) not null,
cus_idnumber varchar(15) not null unique,
cus_dateBirth date,
cus_cityid int,
constraint cus_cityid foreign key (cus_cityid) references city(c_id)
);

create table tour(
t_id int primary key auto_increment,
t_tourcode varchar(5) not null unique,
t_typeidtour int,
t_IDtraveldestinations int,
t_startdate datetime not null,
t_enddate datetime not null,
constraint t_typeidtour foreign key(t_typeidtour) references type_tour(tt_id),
constraint t_IDtraveldestinations foreign key(t_IDtraveldestinations) references travel_destinations(td_id)
);

create table bill_tour(
bt_id int auto_increment primary key,
bt_idtour int,
bt_idcus int,
bt_status bit default 0,
constraint bt_idtour foreign key(bt_idtour) references tour(t_id),
constraint bt_idcus foreign key(bt_idcus) references customer(cus_id)
);

insert into city(c_name) values
('Ha Noi'),
('Hai Phong'),
('Nha Trang'),
('Da Nang'),
('TP HCM');

insert into type_tour(tt_typecode, tt_typename) values
('DLTQ', 'Du lich tham quan'),
('DLHD', 'Du lich hoat dong');

insert into customer(cus_name, cus_idnumber, cus_datebirth, cus_cityid) values
('cuong', '033203005350', '2003/10/30', 1),
('vuong', '033203005351', '2003/03/03', 3),
('dung', '033203005352', '2003/10/10', 2),
('dat', '033203005353', '2003/02/02', 3),
('vien', '033203005354', '2003/12/09', 1),
('thinh', '033203005355', '2003/07/25', 5),
('trang', '033203005356', '2003/02/09', 2),
('quang', '033203005357', '2003/10/20', 4),
('linh', '033203005358', '2003/01/08', 1),
('thao', '033203005359', '2003/11/11', 4);

insert into travel_destinations(td_name, td_avgprice, td_cityid, td_description) values
('Pho Co', 1000000, 3, 'Thien duong mo mong'),
('Sai Thanh', 800000, 5, 'Sai gon trong tim toi'),
('Bien Da Nang', 2000000, 4, 'Oh my god'),
('Vinh Lan Ha', 9000000, 2, 'THien nhien hung vi'),
('Ho Guom', 200000, 1, 'Thu Do CHieu Gio Thu');

insert into tour (t_tourcode, t_typeidtour, t_idtraveldestinations, t_startdate, t_enddate) values
('HN01' , 1, 1, '2022/03/07', '2022/03/08'),
('HP01', 2, 2, '2022/04/01', '2022/04/02'),
('HN02', 2, 3, '2022/04/03', '2022/04/04'),
('NT01', 1, 6, '2022/03/03', '2022/03/04'),
('HCM01', 1, 4, '2022/04/30', '2022/05/02'),
('DN01', 2, 5, '2022/04/30', '2022/05/02');

insert into bill_tour (bt_idtour, bt_idcus, bt_status) values 
(19, 1, 1),
(20, 2, 0),
(21, 3, 1),
(22, 4, 1),
(23, 5 ,0),
(24 ,6 , 1);

-- Thong ke so luong tour cua thanh pho
-- select city.c_name as City, count(*) as SoluongTour from city, tour
-- where 
-- group by city.c_name;

select city.c_name, count(tour.t_id) from travel_destinations join city on travel_destinations.td_cityid = city.c_id
join tour on travel_destinations.td_id = tour.t_IDtraveldestinations
group by city.c_name;

select count(tour.t_id) as "so tour" from tour
where month(tour.t_enddate) = 1 and year(tour.t_enddate) = 2022;



