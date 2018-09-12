.echo on
.headers on

-- Name: family.sql
-- Author: James Dix
-- Date: August 7, 2018
-- Purpose: Creating Tables

drop table if exists family;

create table family (
    id integer,
    name text,
    sex integer,
    role text
);

insert into family values (1, 'Charles', 1, 'parent');
insert into family values (2, 'Bonnie', 0, 'parent');
insert into family values (3, 'Casie', 0, 'child');
insert into family values (4, 'Jackson', 1, 'child');
insert into family values (4, 'Max', 1, 'pet');
insert into family values (4, 'Midnight', 0, 'pet');

.print ''
select * from family;
select name, role from family where sex = 1;
select id, sex from family where role like 'pet';
select * from family where sex = 0;

.exit



