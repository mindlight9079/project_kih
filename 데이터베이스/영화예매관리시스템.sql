create database movie_management;
use movie_management;

create table if not exists movie (
		mo_name varchar(50) not null primary key,
        mo_running varchar(40) not null,
        mo_release datetime,
        mo_age varchar(30) not null
);

create table if not exists customer(
	cu_cum	int not null primary key,
    cu_id varchar(50) not null,
    cu_name varchar(50) not null,
    cu_phone varchar(30) 
);

create table if not exists seat (
	se_seat varchar(10) not null, 
    se_place varchar(10) not null,
    primary key(se_seat, se_place)
);

create table if not exists `time`(
	ti_start datetime not null ,
    ti_end datetime not null ,
    ti_mo_name varchar(50) not null,
    primary key(ti_start, ti_end),
    foreign key `time`(ti_mo_name) references movie(mo_name) 
);

create table if not exists place (
	pl_code varchar(20) not null,
    pl_num int not null,
    pl_se_place varchar(10) not null,
    primary key(pl_code),
    foreign key(pl_se_place) references seat(se_place)
);

create table if not exists reservation (
	re_num int not null primary key,
    re_time datetime not null,
    re_person int not null,
    re_cu_num int not null,
    re_mo_name varchar(50) not null,
    re_se_seat varchar(10) not null,
    re_se_place varchar(10) not null,
    foreign key(re_cu_num) references customer(cu_num),
    foreign key(re_mo_name) references movie(mo_name),
    foreign key(re_se_seat) references seat(se_seat),
    foreign key(re_se_place) references seat(se_place)
    );