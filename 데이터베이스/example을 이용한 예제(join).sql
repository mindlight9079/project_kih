-- apple 고객이 주문한 가격을 확인
-- select 주문번호, 주문고객, sum(단가*수량) as '가격' from 주문 join 제품 on 주문제품 = 제품번호 where 주문고객 = 'apple';
-- 그냥만두가 판매된 갯수를 확인
select 제품명, sum(수량) as '판매된 갯수' from 주문 join 제품 on 주문제품 = 제품번호 where 제품명 = '그냥만두';