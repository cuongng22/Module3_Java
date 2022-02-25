create database abc;
use abc;

create table supplies(
id int primary key auto_increment,
code varchar(5) not null unique,
unit varchar(10) not null,
price int not null
);

create table manufacture(
id int primary key auto_increment,
code varchar(5) unique not null,
name varchar(20) not null,
address varchar(50) not null,
phone varchar(10) not null
);

create table phieuxuat(
id int primary key auto_increment,
code varchar(5) not null unique,
startday date not null,
nameBuyer varchar(20) not null
);

create table tonkho(
id int primary key auto_increment,
soluongdau int not null,
tongnhap int not null,
tongxuat int not null,
vattu_id int,
constraint vatu_id foreign key(vattu_id) references supplies(id)
);

create table dondathang(
id int primary key auto_increment,
code varchar(5) unique not null,
ngaydathang date not null,
manufacture_id int,
constraint manufacture_id foreign key(manufacture_id) references manufacture(id)
);

create table phieunhap(
id int auto_increment primary key,
code varchar(5) unique not null,
ngaydathang date not null,
donhang_id int,
constraint donhang_id foreign key(donhang_id) references dondathang(id)
);

create table chitietdonhang(
id int primary key auto_increment,
chitietdonhang_id int,
vattu_id int,
soluong int not null,
constraint chitietdonhang_id foreign key(chitietdonhang_id) references dondathang(id),
constraint vattu_id foreign key(vattu_id) references supplies(id)
);

create table chitietphieunhap(
id int primary key auto_increment,
vattuId int,
phieunhapid int,
soluongnhap int not null,
dongianhap int not null,
ghichu varchar(50) ,
constraint vattuid foreign key(vattuid) references supplies(id),
constraint phieunhapid foreign key(phieunhapid) references phieunhap(id)
);

create table chitietphieuxuat(
id int primary key auto_increment,
px_vattuId int,
px_phieuxuatid int,
soluongxuat int not null,
dongianxuat int not null,
ghichu varchar(50) ,
constraint px_vattuid foreign key(px_vattuid) references supplies(id),
constraint px_phieuxuatid foreign key(px_phieuxuatid) references phieuxuat(id)
);

alter table supplies
add column name varchar(50) not null;
use abc;
insert into supplies(code, name,  unit, price) values
('VT001', 'Bon cau', 'chiec', 1000000),
('VT002', 'Bon rua mat', 'chiec', 1200000),
('VT003', 'Voi hoa sen', 'chiec', 1000000),
('VT004', 'May suoi', 'chiec', 2000000),
('VT005', 'Thau', 'chiec', 50000);

insert into tonkho(vattu_id, soluongdau, tongnhap, tongxuat) values
(1, 20, 1000, 700),
(2, 10, 1000, 800),
(3, 0, 1000, 1000),
(5, 50, 1000, 698),
(3, 10, 1000, 654),
(4, 20, 1000, 700),
(1, 8, 1000, 980),
(2, 12, 1000, 890),
(4, 45, 1000, 700),
(1, 20, 1000, 880);

insert into manufacture(code, name, address, phone) values
('NCC01', 'Quang Nam', 'HN', 0983393939),
('NCC02', 'Hoa Sen', 'HCM', 0987383993),
('NCC03', 'Rang Dong', 'DN', 0339939333);

insert into dondathang(code, ngaydathang, manufacture_id ) values
('DH001',25/02/2022, 1),
('DH003',25/02/2022, 3),
('DH002', 25/02/2022, 2);

insert into phieunhap(code, ngaydathang, donhang_id) values
('PN001', 30/10/2003, 1),
('PN002', 30/10/2003, 3),
('PN003', 30/10/2003, 2);

insert into phieuxuat(code, startday, namebuyer) values
('PX001', 30/11/2003, 'Trung'),
('PX002', 30/11/2003, 'Wuang'),
('PX003', 30/11/2003, 'Alice');

insert into chitietdonhang(chitietdonhang_id, vattu_id, soluong) values
(1, 4, 9),
(3, 1, 4),
(2, 5, 6),
(2, 5, 7),
(3, 2, 8),
(2, 3, 3);

insert into chitietphieunhap(vattuid, phieunhapid, soluongnhap, dongianhap, ghichu) values
(3, 1, 1000, 1000, 'ok'),
(2, 2, 1000, 1000, 'ok'),
(3, 1, 1000, 1000, 'ok'),
(1, 3, 1000, 1000, 'ok'),
(2, 2, 1000, 1000, 'ok'),
(3, 1, 1000, 1000, 'ok');

insert into chitietphieuxuat(px_vattuid, px_phieuxuatid, soluongxuat, dongianxuat, ghichu) values
(3, 1, 700, 2000000, 'ok'),
(2, 2, 800,1000000, 'ok'),
(3, 1,  786,800000, 'ok'),
(1, 3,  600,890000, 'ok'),
(2, 2,  800,450000, 'ok'),
(3, 1,  980,50000, 'ok');



