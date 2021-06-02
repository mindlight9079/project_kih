/* create database if not exists Salary_management;
use salary_management;

CREATE TABLE `employee` (
	`em_num`	int	NOT NULL auto_increment primary key ,
	`em_name`	varchar(20)	not NULL,
	`em_position`	varchar(20)	not NULL,
	`em_date`	datetime	not NULL,
	`em_year`	int	not NULL
);

CREATE TABLE `salary` (
	`sl_num`	int	NOT NULL default 0,
	`sl_salary`	int	not NULL default 0,
	`sl_em_num`	int	NOT NULL default 0,
    foreign key(sl_em_num) references employee(em_num)
);

CREATE TABLE `position` (
	`po_position`	varchar(20)	not NULL,
	`po_basic`	int	not NULL default 0,
	`po_addition`	int	not NULL default 0
);

insert into position (po_position, po_basic, po_addition) values ('사원', 200, 10);
select * from position;
insert into employee values (1, '홍길동', '사원', '2019-06-02', 2);
select * from employee;
insert into salary values (1111,220,1);
select * from salary;
*/





