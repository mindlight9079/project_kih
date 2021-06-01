select sl_price from sale where sl_fr_name = '사과' and (sl_amount*sl_price);
select sum(sl_price) from sale;
use customerfruit_shop;
drop trigger if exists insert_enter
delimiter //
create trigger insert_enter after insert on enter
for each row
begin
	update fruit
		set fr_amount = fr_amount + new.en_amount 
        where fr_num= new.en_fr_num;
end //
delimiter ;
-- 해당 데이터베이스의 트리거 확인fruit
show triggers;
