use classicmodels;
select a.customerNumber, a.customerName, (case when count(b.orderNumber)>=1 then 1 else 0 end)  is_order
from customers a
left join orders b
on b.customerNumber = a.customerNumber
group by a.customerNumber;