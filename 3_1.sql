use 고객db;
select 제품명 name, 단가 price
from 제품
where 제품아이디 = any (select 주문제품
				from 주문
                group by 주문제품
                having count(주문제품)>=2)
                