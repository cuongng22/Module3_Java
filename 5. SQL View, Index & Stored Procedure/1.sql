create database demol;
use demol;

create table Products(
id int primary key auto_increment,
productCode varchar(10) not null unique,
product_price int not null,
product_amount int not null,
product_Description varchar(50),
product_Status bit default 0
);

