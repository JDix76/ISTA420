--AUTHOR: JAMES DIX
--DATE: 04 SEPT 2018
--SUBJECT: TSQL-LAB06B

Use set operators to execute the following queries. Note that it may be possible to use joins and sets to do the same thing.

1. Create a list of every country where we have either a customer or a supplier.

select c.city, c.country from customers c
	union
select s.city, s.country from suppliers s;


2. Create a list of every city and country where we have either a customer or a supplier.

select c.city, c.country from customers c
	union
select s.city, s.country from suppliers s;


3. Create a list of every country where we have both a customer and a supplier.

select c.city, c.country from customers c
	intersect all
select s.city, s.country from suppliers s;

4. Create a list of every city and country where we have both a customer and a supplier.
select c.country from customers c
	intersect all
select s. country from suppliers s;

5. Create a list of every country where we have customers but not suppliers.

select c.country from customers c
	except
select s. country from suppliers s;

6. Ceate a list of every country where we have suppliers but not customers.

select c.country from suppliers s
	except
select s. country from customers c;

