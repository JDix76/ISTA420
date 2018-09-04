--AUTHOR: JAMES DIX
--DATE: 4 SEPT 2018
--SUBJECT: TSQL-LAB06

use TSQLV4;


--3
select custid, empid, orderdate from sales.orders 
	where orderdate >= '2016-01-01' and orderdate < '2016-02-01'
	except
select custid, empid, orderdate from sales.orders 
	where orderdate >= '2016-02-01' and orderdate < '2016-03-01'; 

--4
select custid, empid from sales.orders 
	where orderdate >= '2016-01-01' and orderdate < '2016-02-01'
	intersect
select custid, empid from sales.orders 
	where orderdate >= '2016-02-01' and orderdate < '2016-03-01'; 

--5
(select custid, empid from sales.orders 
	where orderdate >= '2016-01-01' and orderdate < '2016-02-01'
		intersect
select custid, empid from sales.orders 
	where orderdate >= '2016-02-01' and orderdate < '2016-03-01')
		except
select custid, empid from sales.orders 
	where orderdate >= '2015-01-01' and orderdate < '2016-01-01';






