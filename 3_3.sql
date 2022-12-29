use 고객db;
select 고객아이디 customer_id, 등급 'level', sum(수량*단가) total
from 고객,제품, 주문
where 제품아이디=주문제품 and 고객아이디 = 주문고객
group by 고객아이디
order by total desc;
