-- select status, count(*) as 'So luong status' from orders
-- group by status;

-- select status, sum(quantityOrdered * priceEach) as amount
-- from orders o 
-- inner join orderdetails od on o.orderNumber = od.orderNumber
-- group by status;

-- select orderNumber, sum(quantityOrdered * priceEach) as total
-- from orderdetails od
-- group by orderNumber;

select year(orderDate) as year, sum(quantityOrdered * priceEach) as total
from orders o 
inner join orderdetails od on o.orderNumber = od.orderNumber 
where status = 'shipped'
group by year 
having year >2003;