create database fruit_shop;
use fruit_shop;

create table if not exists fruit(
	fr_num int auto_increment primary key,
    fr_name varchar(50) not null,
    fr_amount int not null,
    fr_price int not null
    );
    
create table if not exists sale (
	sl_num int auto_increment primary key,
    sl_fr_name varchar(50) not null,
    sl_amount int not null,
    sl_price int not null
);

create table if not exists customer (
	cu_num int auto_increment primary key,
    cu_name varchar(50) not null,
    cu_phone varchar(20) not null,
    cu_amount int not null
    );

create table if not exists enter (
	en_num int auto_increment primary key,
    en_fr_num int not null, 
    en_fr_name varchar(50) not null,
    en_amount int not null,
    en_price int not null,
    en_date date,
    foreign key(en_fr_num) references fruit(fr_num)
    );