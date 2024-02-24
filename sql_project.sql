show databases;
show databases;
use dataleum;

show tables;

insert into bio(firstName, LastName, age, DOB, gender, SOR) values('Alao', 'Jackson',  19,  '2024-02-14', 'male', 'ogun');
insert into bio(firstName, LastName, age, DOB, gender, SOR) values('Atamua', 'Joan',  72,  '1912-02-14', 'female', 'ogun');
insert into bio(firstName, LastName, age, DOB, gender, SOR) values('Fashina', 'Adeola',  197,  '1630-02-14', 'female', 'ogun');
alter table bio
add column email varchar(40);

update bio
set email = 'alaojackson@gmail.com'
where firstName = 'Alao';

update bio
set email = 'fashina@gmail.com'
where firstName = 'fashina';

update bio
set email = 'atamuajoan@gmail.com'
where firstName = 'Atamua';
set sql_safe_updates = 0;

select * from bio;
show databases;
show tables;
use dataleum;
create table Sales(name text, age numeric, DOB text);
show tables

insert into sales(name, age, DOB) values('Alao', 19,  '2024-02-14');
select * from sales;
select * from bio where firstName = 'alao';

use dataleum;
show tables;
select * from bio;
select * from sales;
use sql_project;
select * from covid_death;
select location, date, total_cases, total_deaths, (total_cases/total_deaths)*100 as DeathPercentage from covid_death
order by 1, 2;

select location, population, max(total_cases) as HighestInfectionCount, max((total_cases/population))*100 as percentPopulationInfected from covid_death group by
location, population order by percentPopulationInfected;
