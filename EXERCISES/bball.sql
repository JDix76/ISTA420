.echo on
.headers on

-- Name bball.sql
-- Author: James Dix
-- Date: August 7, 2018
-- Purpose: TSQL Exer 1

drop table if exists bball;
create table bball(
	id integer
	FirstName text,
	LastName text,
	CurrentTeam text,
	YrsExp integer,
	College text,
);

insert into bball values (1, 'Lebron','James','Lakers', 16,'St. Marmy-Vincent Highshcool');
insert into bball values (2, 'Stephen, 'Curry', 'Warriors', 10,'Davidson');
insert into bball values (3, 'CJ','McCollum','Portland',5,'SMU');
insert inot bball values (4, 'Kyrie','Irving','Celtics'7,'Duke');

.print ''
select * from bball;
select FirstName, role from bball where YrsExp = 16;
select FirstName, LastName from bball where collger like 'Duke';
select * from family where sex = 0;

.exit