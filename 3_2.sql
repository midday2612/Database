use 고객db;
select 제품아이디 product_id, 제품명 'name', sum(수량) total_count, count(distinct(주문고객)) customer_cnt
from 고객, 제품, 주문
where (등급 = 'vip' or 등급 = 'gold') and 제품아이디=주문제품 and 고객아이디 = 주문고객
group by 제품아이디
order by sum(수량) desc;