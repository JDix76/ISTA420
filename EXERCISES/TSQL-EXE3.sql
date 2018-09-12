.echo on 
.headers on

--AUTHOR: JAMES DIX
--DATE: 21 AUGUST 2018
--SUBJECT: TSQL-LABEXE3


1. Using SQLite and the Northwind database, create a line item report that contains a line for each product in the order with the following columns: the order id, the product id, the unit price, the quantity sold, the line item price, and the percent of that line item constitutes of the total amount of the order. Here is a sample of the output, limited to 25 records:

select orderid, productid, unitprice, (quantity * unitprice) as Linetotal, 
round(((unitprice * quantity) / (select sum(o2.unitprice * o2.quantity)
from order_details as o2 where o2.orderid = o1.orderid)) * 100, 2) as pct 
from order_details as o1 
order by orderid 
limit 25;

2. I want to know the unique (distinct) cities, 
regions, and postal codes: 
(a) where we have both customers and employees,

select distinct E.city, e.region, e.postalcode, c.city, c.region, c.postalcode 
from employees E 
	Inner join customers C
	on E.city = C.city;

(b) where we have customers but no employees AND both customers and employees

select distinct E.city, e.region, e.postalcode, c.city, c.region, c.postalcode 
from customers C
left outer join employees e
on C.city = E.city


(c) where we have employees but no customers AND both customers and employees. 
Write three queries, using inner and outer joins. Report the results of the queries. 
There is no need for any further reporting.

select distinct E.city, e.region, e.postalcode, c.city, c.region, c.postalcode 
from customers C
left outer join employees e
on E.city = C.city


3. Using subqueries, create a report that lists the ten most expensive products.
 select productid, productname, unitprice from products order by unitprice desc limit 10;

4. Using subqueries, create a report that shows the date of the last order by all employees.
select employeeid, orderid , orderdate from orders order by orderdate desc limit 12;


5. Using subqueries, create a line item report that contains a line for each product in the order with the following columns: the order id, the product id, the unit price, the quantity sold, the line item price, and the percent of that line item constitutes of the total amount of the order.
select orderid, productid, unitprice, (quantity * unitprice) as Linetotal, 
round(((unitprice * quantity) / (select sum(o2.unitprice * o2.quantity)
from order_details as o2 where o2.orderid = o1.orderid)) * 100, 2) as pct 
from order_details as o1 
order by orderid 
limit 25;