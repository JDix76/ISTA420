use TSQLV4

drop table if exists dbo.nba;

create table nba (
	PlayerName varchar(25),
	YearStart int,
	YearEnd int,
	Postion char(5),
	PlayerWeight int,
	BirthDate date,
	College varchar(100)
);
GO


BULK INSERT dbo.nba FROM 'C:\Users\butta\Downloads\player_data.csv'
	WITH
	(
		DATAFILETYPE	= 'char',
		FIELDTERMINATOR = ',',
		ROWTERMINATOR	= '\n',
		FIRSTROW		= 2
		  
	);
GO

select * from dbo.nba; 

--1. Create a report showing players from Duke university by postion with the year they started in the NBA.
SELECT playername, postion,yearstart
FROM dbo.nba
WHERE college = 'Duke University'
ORDER by yearstart desc;

--2. Creat a report that finds players that weighed over 230 pounds that play in the Forward position.
select playername,playerweight,postion,college
FROM dbo.nba
where playerweight >= '230' and postion = 'F'
order by playerweight asc;

--3. Creat a report that finds the second youngest player born after 1996  to 1998 from all players in the NBA.
select playername, birthdate, college
FROM dbo.nba
where birthdate >= '1996-01-01' and birthdate <= '1998-01-01'
order by birthdate asc;

--4. Create a report that displays players that have played more than 15 but less than 20 NBA seasons.
select playername, sum(yearend - yearstart) as yearsplayed
from dbo.nba 
group by playername having sum(yearend - yearstart) >= 15 and sum(yearend - yearstart) <= 20
order by yearsplayed desc;

