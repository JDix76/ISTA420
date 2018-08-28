.echo on
.headers on

-- Name:James Dix
-- FIle: TSQL-lab2a.sql
-- Date; August 14, 2018

--1.What are the regions?
--Select * from region;

--2.What are the cities?
select distinct territorydescription from territories

--3.What are the cities in the Southern region?
select distinct territorydescription from territories where regionid = 4;

--4.How do you run this query with the fully qualiﬁed column name?
select distinct territories. territorydescription from territories where regionid = 4;

--5.How do you run this query with a table alias?
select distinct t. territorydescription from territories t where regionid = 4;

--6.What is the contact name, telephone number, and city for each customer?
 select contactname,city, phone from customers;
 
--7.What are the products currently out of stock?
select productid, productname, unitsinstock from products where unitsinstock = 0;

--8.What are the ten products currently in stock with the least amount on hand?
select unitsinstock, productid, productname from products where unitsinstock > 0 order by unitsinstock;

--9.What are the ﬁve most expensive products in stock?
 select productid, productname, unitprice from products where unitsinstock desc limit 5;

--10.How many products does Northwind have? How many customers? How many suppliers?
--select count (*) from  products;
--select count (*) from suppliers;
--select count (*) from customers;

