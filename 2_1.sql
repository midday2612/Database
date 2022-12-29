use classicmodels;
select orders.ordernumber, customers.customerName
from orders
left join customers
on orders.customernumber = customers.customerNumber
order by orders.ordernumber;