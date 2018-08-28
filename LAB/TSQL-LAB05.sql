.headers on
.echo on

--AUTHOR: JAMES DIX
--DATE: 28 AUG 2018
--SUBJECT: TSQL-LAB05

--1. List the number of orders by each customer who lives in the United States using a CTE. Sort from highest to lowest

with USAcust as 
{
	select customerid from customers where country = 'USA'
}
select o.customerid, count(o.orderid) as totalorders 
from orders o
where o.customerid in USAcust
group by customerid 
order by total orders desc;

--2.List the product name and the number of each product from a German supplier sold to a customer in Germany using a CTE. Sort from highest to lowest.

with Gerprod as (
select s.supplierid, s.country, p.supplierid, p.productid as pid,
p.productname from suppliers s join products p on s.supplierid = p.supplierid 
where s.country like 'Germany' ),
GERord as (
select d.productid as pid, d.quantity, d.orderid, o.orderid, o.shipcountry
from orders o join order_details d on o.orderid = d.orderid
where o.shipcountry like 'Germany')
select distinct gp.productname, sum(go.quantity) as TotalSold from GERprod gp join
Gerord go 
on gp.pid = go.pid group by gp.productname order by TotalSold desc;

