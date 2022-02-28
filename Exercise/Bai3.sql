create database bai3;
use bai3;
create table nhacungcap(
code varchar(5) primary key,
name varchar(50) not null,
address varchar(50) not null,
phone varchar(10) not null,
mathue varchar(5) not null
);

create table loaidichvu(
code varchar(5) primary key,
name varchar(50)
);

create table mucphi(
code varchar(5) primary key,
dongia int not null,
mota varchar(100)
);

create table DONGXE(
DongXe varchar(50) primary key,
HangXe varchar(255) not null,
SoChoNgoi int not null
);

create table dangkycungcap(
code varchar(5) primary key,
ncc_code varchar(5),
ldv_code varchar(5),
dx_code varchar(50),
mp_code varchar(5),
ngaybatdau varchar(50) not null,
ngayketthuc varchar(50) not null,
soluong int not null default 0,
foreign key(ncc_code) references nhacungcap(code),
foreign key(ldv_code) references loaidichvu(code),
foreign key(dx_code) references dongxe(dongxe),
foreign key(mp_code) references mucphi(code)
);

drop table dangkycungcap;

Insert Into NHACUNGCAP (code, name, address, phone, mathue) values
 ('NCC01', N'Cty TNHH Toàn Phát', 'Hai Chau', '0511339888', '56891'),
 ('NCC02', N'Cty Cổ Phần Đông Du', 'Lien Chieu', '0511399889', '45789'),
 ('NCC03', N'Ông Nguyễn Văn A', 'Hoa Thuan', '0511399890', '32456'),
 ('NCC04', N'Cty Cổ Phần Toàn Cầu Xanh', 'Hai Chau', '0513658945', '51364'),
 ('NCC05', N'Cty TNHH AMA', 'Thanh Khe', '0511037566', '54656'),
 ('NCC06', N'Bà Trần Thị Bích Vân', 'Lien Chieu', '0511387469', '52445'),
 ('NCC07', N'Cty TNHH Phan Thành', 'Thanh Khe', '0511387456', '13021'),
 ('NCC08', N'Ông Phan Đình Nam', 'Hoa Thuan', '0511353456', '12120'),
 ('NCC09', N'Tập đoàn Đông Nam Á', 'Lien Chieu', '0511397121', '53654'),
 ('NCC10', N'Cty Cổ Phần Rạng đông', 'Lien Chieu', '0511356954', '18864');
 
 select * from nhacungcap;


Insert Into LOAIDICHVU (code, name)
Values ('DV001', 'Dịch vụ xe taxi'),
 ('DV002', 'Dịch vụ xe buýt công cộng theo tuyến cố định'),
 ('DV003', 'Dịch vụ cho thuê xe theo hợp đồng');

Insert Into MUCPHI (code, DonGia, MoTa) Values
 ('MP001', '10000', 'Áp dụng từ ngày 1/2015'),
 ('MP002', '15000', 'Áp dụng từ ngày 2/2015'),
 ('MP003', '20000', 'Áp dụng từ ngày 1/2010'),
 ('MP004', '25000', 'Áp dụng từ ngày 2/2011');

Insert Into DONGXE (DongXe, HangXe, SoChoNgoi)
Values ('Hiace', 'Toyota', 16);
Insert Into DONGXE (DongXe, HangXe, SoChoNgoi)
Values ('Vios', 'Toyota', 5);
Insert Into DONGXE (DongXe, HangXe, SoChoNgoi)
Values ('Escape', 'Ford', 5);
Insert Into DONGXE (DongXe, HangXe, SoChoNgoi)
Values ('Cerato', 'KIA', 7);
Insert Into DONGXE (DongXe, HangXe, SoChoNgoi)
Values ('Forte', 'KIA', 5);
Insert Into DONGXE (DongXe, HangXe, SoChoNgoi)
Values ('Starex', 'Huyndai', 7);
Insert Into DONGXE (DongXe, HangXe, SoChoNgoi)
Values ('Grand-i10', 'Huyndai', 7);

Insert Into DANGKYCUNGCAP (code, ncc_code, ldv_code, dx_code, mp_code, ngaybatdau, NgayKetThuc)
Values ('DK001', 'NCC01', 'DV001', 'Hiace', 'MP001', '2015/11/20', '2016/11/20'),
 ('DK002', 'NCC02', 'DV002', 'Vios', 'MP002', '2015/11/20', '2017/11/20'),
 ('DK003', 'NCC03', 'DV003', 'Escape', 'MP003', '2017/11/20', '2018/11/20'),
 ('DK004', 'NCC05', 'DV001', 'Cerato', 'MP004', '2015/11/20', '2019/11/20'),
 ('DK005', 'NCC02', 'DV002', 'Forte', 'MP003', '2019/11/20', '2020/11/20'),
 ('DK006', 'NCC04', 'DV003', 'Starex', 'MP004', '2016/11/10', '2021/11/20'),
 ('DK007', 'NCC05', 'DV001', 'Cerato', 'MP003', '2015/11/30', '2016/01/25'),
 ('DK008', 'NCC06', 'DV001', 'Vios', 'MP002', '2016/02/28', '2016/08/15'),
 ('DK009', 'NCC05', 'DV003', 'Grand-i10', 'MP002', '2016/04/27', '2017/04/30'),
 ('DK010', 'NCC06', 'DV001', 'Forte', 'MP002', '2016/11/21', '2016/02/22'),
 ('DK011', 'NCC07', 'DV001', 'Forte', 'MP001', '2016/12/25', '2017/02/20'),
 ('DK012', 'NCC07', 'DV003', 'Cerato', 'MP001', '2016/04/14', '2017/12/20'),
 ('DK013', 'NCC03', 'DV002', 'Cerato', 'MP001', '2015/12/21', '2016/12/21'),
 ('DK014', 'NCC08', 'DV002', 'Cerato', 'MP001', '2016/05/20', '2016/12/30'),
 ('DK015', 'NCC03', 'DV001', 'Hiace', 'MP002', '2018/04/24', '2019/11/20'),
 ('DK016', 'NCC01', 'DV003', 'Grand-i10', 'MP002', '2016/06/22', '2016/12/21'),
 ('DK017', 'NCC02', 'DV003', 'Cerato', 'MP003', '2016/09/30', '2019/09/30'),
 ('DK018', 'NCC08', 'DV003', 'Escape', 'MP004', '2017/12/13', '2018/09/30'),
 ('DK019', 'NCC03', 'DV003', 'Escape', 'MP003', '2016/01/24', '2016/12/30'),
 ('DK020', 'NCC02', 'DV003', 'Cerato', 'MP004', '2016/05/03', '2017/10/21'),
 ('DK021', 'NCC06', 'DV001', 'Forte', 'MP002', '2015/01/30', '2016/12/30'),
 ('DK022', 'NCC02', 'DV002', 'Cerato', 'MP004', '2016/07/25', '2017/12/30'),
 ('DK023', 'NCC02', 'DV001', 'Forte', 'MP003', '2017/11/30', '2018/05/20'),
 ('DK024', 'NCC03', 'DV003', 'Forte', 'MP004', '2017/12/23', '2019/11/30'),
 ('DK025', 'NCC03', 'DV003', 'Hiace', 'MP002', '2016/08/24', '2017/10/25');
 
 select dongxe from dongxe where sochongoi >5;
 select * 
from dongxe D
inner join dangkycungcap DC on D.DongXe = DC.dx_code
inner join nhacungcap N on N.code = DC.ncc_code
inner join mucphi M on M.code = DC.mp_code
where (D.HangXe = 'Toyota  'and M.DonGia = 15000)
or (D.HangXe = 'Kia' and M.DonGia = 20000);

select * from nhacungcap N 
join dangkycungcap DC on N.code = DC.ncc_code
join dongxe D on N.code = DC.ncc_code
join mucphi M on M.code = DC.mp_code
where(D.HangXe = 'Toyota  'and M.DonGia = 15000)
or (D.HangXe = 'Kia' and M.DonGia = 20000);

select * from nhacungcap order by name;
select * from nhacungcap order by nhacungcap.mathue desc;

use bai3;
select dangkycungcap.code, nhacungcap.name, dangkycungcap.ngaybatdau, count(*) as 'số lần đăng kí' from dangkycungcap, nhacungcap
where dangkycungcap.ncc_code = nhacungcap.code and dangkycungcap.NgayBatDau >= '2015/11/20'
group by nhacungcap.code;

select distinct HangXe
from dongxe;

select * from nhacungcap ncc 
where not exists(select code from dangkycungcap where dangkycungcap.code = ncc.code);




