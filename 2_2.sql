use classicmodels;
select substr(a.orderdate,6,2) MM, sum(quantityordered * priceeach) SALES
from orders a
left join orderdetails b
on b.ordernumber = a.ordernumber
group by MM
order by MM;