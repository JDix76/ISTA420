--AUTHOR: JAMES DIX
--DATE: 11 SEPT 2018
--SUBJECT: TSQL-LAB08

USE TSQLV4


drop table if exists dbo.presidents;

create table presidents (
	lastname varchar(25),
	firstname varchar(25),
	middlename varchar(25),
	datebirth date,
	datedeath date,
	statebirth varchar(25),
	statehome varchar(25),
	party varchar(50),
	tookoffice date,
	leftoffice date,
	assampt char(5),
	asssucc char(5),
	religion varchar(25),
);
GO

select * from dbo.presidents; 

BULK INSERT dbo.presidents FROM 'C:\Users\butta\Desktop\ISTA420\Exercise\press.csv'
	WITH
	(
		DATAFILETYPE	= 'char',
		FIELDTERMINATOR = ',',
		ROWTERMINATOR	= '\n'
	);
GO

update dbo.presidents set leftoffice = '2017-01-20', assampt = 'FALSE', asssucc = 'FALSE'
	output inserted.lastname, inserted.leftoffice, deleted.leftoffice, inserted.assampt, deleted.assampt,
	inserted.asssucc, deleted.asssucc
	where lastname = 'Obama';

	insert into dbo.presidents (lastname, firstname, middlename, datebirth, statebirth, 
	statehome, party, tookoffice, religion)
	output inserted.lastname, inserted.firstname, inserted.middlename, inserted.datebirth,
	inserted.statebirth, inserted.statehome, inserted.party, inserted.tookoffice, 
	inserted.religion
	values ('Trump','Donald', 'John','1946-06-14','New York','New York',
	'Republican','2017-01-20','Presbyterian')

select * from dbo.presidents;


--7. How many presidents from each state belonged to the various political parties? Aggregate by party and state. Note that this will in eect be a pivot table.
select statehome, count(*) as count from dbo.presidents
group by statehome, party order by count desc;

--8. Create a report showing the number of days each president was in office.
select firstname, lastname, datediff(day, tookoffice, leftoffice) as daysinoffice
	from dbo.presidents order by daysinoffice desc;

--9. Create a report showing the age (in years) of each present when he took oce.
select firstname, lastname, datediff(year, datebirth, tookoffice) -1 as ageatelection
from dbo.presidents order by ageatelection desc;

--10. See if there is any correlation between a president's party and reported religion, or lack of reported religion.
select religion, party, count(*) as count from dbo.presidents
group by party, religion order by count desc;

select religion, count(*) as count from dbo.presidents
group by party 

select * from dbo.presidents;