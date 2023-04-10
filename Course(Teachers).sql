create database Course

use Course

create table Teachers(
	[Id] int primary key identity(1,1),
	[Name] nvarchar(50) not null,
	[Surname] nvarchar(50) not null,
	[Email] nvarchar(100) unique,
	[Age] int check(Age>17),
	[Price] decimal
)
select  * from Teachers

insert into Teachers([Name],[Surname],[Email],[Age],[Price])
values('Cavid','Bashirov','cavidbashirov@gmail.com',29,5500),
('Kamran','Hesenov','kamranhesenov@gmail.com',35,2200),
('Ceyhun','Piriyev','ceyhunpiriyev@mail.ru',28,1500),
('Telman','Eliyev','telmaneliyev@mail.ru',45,3500)

select * from Teachers where Age > (select AVG(Age) from Teachers)
select * from Teachers where [Price] BETWEEN 1000 AND 3000
select * from Teachers where [Email] LIKE '%mail.ru' 
select * from Teachers where [Name] LIKE 'C%'
