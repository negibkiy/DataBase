create database cinema_db;

use cinema_db;

create table users(
	idusers int not null auto_increment,
    user_fio varchar (100) not null,
    user_phone_number bigint (15) not null,
    
    primary key (idusers)
);
create table tickets(
	idtickets int not null auto_increment,
    ticket_price int not null,
    ticket_status tinyint not null,
	ticket_number bigint not null,
    idusers int not null,
    idseats int not null,
    idsessions int not null,
    
    primary key (idtickets),
	foreign key (idusers) references users (idusers),
    foreign key (idseats) references seats (idseats),
    foreign key (idsessions) references sessions (idsessions)
);
create table sessions(
	idsessions	int not null auto_increment,
	start_time_and_date datetime not null,
    idfilms int not null,
    idcinemas int not null,
    idhalls int not null,
    
    primary key (idsessions),
	foreign key (idfilms) references films (idfilms),
    foreign key (idcinemas) references cinemas (idcinemas),
    foreign key (idhalls) references halls (idhalls)
);
create table halls(
	idhalls int not null auto_increment,
	hall_name varchar(45) not null,
    hall_capacity int not null,
    
	primary key (idhalls)
);
create table seats(
	idseats int not null auto_increment,
	`row_number` int not null,
    seat_number int not null,
    seat_ratio float not null,
    
	primary key (idseats)
);
create table cinemas(
	idcinemas int not null auto_increment, 
	cinema_email varchar(45) not null,
	cinema_address varchar(100) not null, 
	cinema_name varchar(45) not null, 
	cinema_phone bigint (15) not null, 
	cinema_city varchar(45) not null,
    
    primary key (idcinemas)
);
create table films(
	idfilms int not null auto_increment, 
	film_name varchar(45) not null,
	film_duration int not null, 
	country_of_publication varchar(45) not null,
    
    primary key (idfilms)
);
create table genres(
	idgenres int not null auto_increment, 
	name_genre varchar(45) not null,
	
    primary key (idgenres)
);
create table participations(
	idparticipations int not null auto_increment, 
	idactors int not null, 
	idcharacters int not null, 
	idfilms int not null,
    
    primary key (idparticipations),
	foreign key (idactors) references actors (idactors),
    foreign key (idcharacters) references characters (idcharacters),
    foreign key (idfilms) references films (idfilms)
);
create table filmcompanies(
	idfilmcompanies int not null auto_increment, 
	film_company_name varchar(45) not null, 
	year_of_formation int not null, 
	film_company_locate varchar(45) not null,
    
    primary key (idfilmcompanies)
);
create table characters(
	idcharacters int not null auto_increment, 
	character_name varchar(45) not null, 
	character_role tinyint not null, 
	character_amplua varchar(100) not null,
    
    primary key (idcharacters)
);
create table actors(
	idactors int not null auto_increment, 
	actor_fio varchar(45) not null,
	actor_age int not null, 
	actor_birth_place varchar(45) not null,
    
    primary key (idactors)
);
create table hall_to_seat(
	idhalls int not null,
	idseats int not null,
    
    primary key (idhalls, idseats),
    foreign key (idhalls) references halls (idhalls),
    foreign key (idseats) references seats (idseats)
);
create table film_to_genre(
	idgenres int not null,
	idfilms int not null,
    
    primary key (idgenres, idfilms),
    foreign key (idgenres) references genres (idgenres),
    foreign key (idfilms) references films (idfilms)
);
create table film_to_company(
	idfilms int not null,
	idfilmcompanies int not null,
    
    primary key (idfilms, idfilmcompanies),
    foreign key (idfilms) references films (idfilms),
    foreign key (idfilmcompanies) references filmcompanies (idfilmcompanies)
);



alter table halls
	add column idcinemas int not null;
alter table halls
	add foreign key (idcinemas) references cinemas (idcinemas);
alter table sessions
	drop foreign key sessions_ibfk_2;    
alter table sessions    
    drop column idcinemas;
    
    
    
INSERT INTO `actors` (actor_fio, actor_age, actor_birth_place) VALUES 
	('Галь Гадот',36,'Израиль'),
	('Том Холланд',25,'Великобритания'),
	('Спайк Джонз',52,'США'),
	('Крис Пайн',41,'США'),
	('Мэтт Дэймон',51,'США'),
	('Гэри Олдмен',64,'Великобритания'),
	('Леонардо ДиКаприо',47,'США'),
	('Роберт Паттинсон',35,'Великобритания'),
	('Идрис Эльба',49,'Великобритания'),
	('Даймонд Уайт',23,'США');
    
select * from actors; 

INSERT INTO `characters` (character_name, character_role, character_amplua) VALUES 
	('Линнет Риджеуэй Дойл',1,'молодая миллионерша, жертва убийства'),
	('Нейтан Дрейк',1,'молодой охотник за сокровищами'),
	('кот Джерри',0,'личный помощник главного злодея'),
	('Джеймс Харпер',1,'вынужденно уволенный из спецназа США'),
	('Жорж Лонеган',1,'американец, имеющий особую связь с загробной жизнью'),
	('Герман Дж. Манкевич',1,'сценарист фильма «Гражданин Кейн»'),
	('Эндрю Лэддис',1,'ветеран Второй Мировой войны'),
	('Эфраим Уинслоу',1,'бывший лесоруб, смотрителя маяка'),
	('Роланд Дискейн',1,'стрелок'),
	('Лунеллы Лафайетт',1,'одаренная молодая девушка, которая случайно приносит дьявольского динозавра');
    
select * from characters; 

INSERT INTO `cinemas` (cinema_email, cinema_address, cinema_name, cinema_phone, cinema_city) VALUES 
	('hopoussoiprepru-4486@yopmail.com','ул. Землячки, 110б, ТРК «Мармелад», 2 этаж','Mori Cinema',84236532721,'Волгоград'),
	('grunneubraurauwou-4398@yopmail.com','просп. Героев Сталинграда, 68','Гиппопо',88202742647,'Волгоград'),
	('quafuvameddoi-9702@yopmail.com','ул. Рабоче-Крестьянская, 9б, ТЦ «Ворошиловский»','Пять звёзд',83513090786,'Волгоград'),
	('tennibruvanei-5143@yopmail.com','просп. им. Ленина, 54б, ТРК «Европа Сити Молл»','Синема Парк',84932773835,'Волгоград'),
	('xatawagura-5788@yopmail.com','Рабоче-Крестьянская ул., 10','Киномакс',83911532332,'Волгоград');
    
select * from cinemas; 

INSERT INTO `filmcompanies` (film_company_name, year_of_formation, film_company_locate) VALUES 
	('20th Century Studios',1935,'США: Лос-Анджелес, Калифорния'),
	('Columbia Pictures',1924,'США: Калвер-Сити, Калифорния'),
	('Universal Pictures',1912,'Юниверсал-Сити, США'),
	('Thunder Road Films',2000,'Санта-Моника, Калифорния'),
	('Warner Bros. Pictures',1923,'США: Бербанк, Калифорния'),
	('Netflix',1997,'США: Лос-Гатос Калифорния'),
	('Paramount Pictures',1912,'США: Лос-Анджелес, Калифорния'),
	('Regency Enterprises',1982,'США: Лос-Анджелес. Калифорния'),
	('Imagine Entertainment',1985,'США: Лос-Анджелес. Калифорния'),
	('Marvel Animation',2008,'США: Глендейл, Калифорния');

select * from filmcompanies; 

INSERT INTO `films` (film_name, film_duration, country_of_publication) VALUES 
	('Смерть на Ниле',127,'Великобритания, США'),
	('Анчартед: На картах не значится',115,'США, Испания'),
	('Зверопой 2',110,'Франция, Япония, США'),
	('Наёмник',103,'США'),
	('Потустороннее',96,'Китай'),
	('Манк',113,'США'),
	('Остров проклятых',138,'США'),
	('Маяк',109,'США, Канада'),
	('Тёмная башня',95,'США'),
	('Лунная девочка и Дьявол динозавр',115,'США');

select * from films; 

INSERT INTO `film_to_company` VALUES 
	(1,1),
	(2,2),
	(3,3),
	(4,4),
	(5,5),
	(6,6),
	(7,7),
	(8,8),
	(9,9),
	(10,10);

select * from film_to_company; 

INSERT INTO `genres` (name_genre) VALUES 
	('безумие'),
    ('вампиры'),
    ('военное'),
    ('детектив'),
    ('детское'),
    ('драма'),
    ('комедия'),
    ('космос'),
    ('повседневность'),
    ('приключения');

select * from genres;

INSERT INTO `film_to_genre` VALUES
	(1,1),
	(2,2),
	(3,3),
	(4,4),
	(5,5),
	(6,6),
	(7,7),
	(8,8),
	(9,9),
	(10,10);

select * from film_to_genre; 

INSERT INTO `halls` (hall_name, hall_capacity, idcinemas) VALUES 
	('3 зал',100,1),
    ('2 зал',125,1),
    ('5 зал',150,2),
    ('3 зал',100,3),
    ('1 зал',175,4),
    ('2 зал',200,5),
    ('4 зал',210,2),
    ('3 зал',90,2),
    ('2 зал',85,1),
    ('1 зал',120,3);

select * from halls; 

INSERT INTO `seats` (`row_number`, seat_number, seat_ratio) VALUES 
	(1,12,1.5),
    (6,14,2.25),
    (1,3,1.35),
    (3,4,1.2),
    (2,8,2.1),
    (1,11,1.5),
    (7,16,1.65),
    (12,17,1.7),
    (4,1,2.1),
    (11,3,2.5);

select * from seats; 

INSERT INTO `hall_to_seat` VALUES
	(1,1),
	(2,2),
	(3,3),
	(4,4),
	(5,5),
	(6,6),
	(7,7),
	(8,8),
	(9,9),
	(10,10);

select * from hall_to_seat; 

INSERT INTO `participations` (idactors, idcharacters, idfilms) VALUES
	(1,1,1),
    (2,2,2),
    (3,3,3),
    (4,4,4),
    (5,5,5),
    (6,6,6),
    (7,7,7),
    (8,8,8),
    (9,9,9),
    (10,10,10);

select * from participations; 

INSERT INTO `sessions` (start_time_and_date, idfilms, idhalls) VALUES 
	('2022-07-17 16:02:00',1,1),
    ('2022-02-18 13:20:00',2,2),
    ('2022-11-26 01:41:00',3,3),
    ('2022-07-08 08:55:00',4,4),
    ('2022-01-01 23:58:00',5,5),
    ('2022-12-14 12:27:00',6,1),
    ('2022-07-23 09:23:00',7,2),
    ('2022-12-06 19:47:00',8,3),
    ('2022-07-20 16:12:00',9,4),
    ('2022-07-27 13:43:00',10,5);

select * from sessions; 

INSERT INTO `tickets` (ticket_price, ticket_status, ticket_number, idusers, idseats, idsessions) VALUES 
	(200,1,4561,1,1,1),
    (175,0,15613,2,2,2),
    (200,0,156,3,3,3),
    (155,0,896,4,4,4),
    (165,1,894,5,5,5),
    (300,0,132,6,6,6),
    (190,1,8798,7,7,7),
    (455,0,215,8,8,8),
    (210,1,8798,9,9,9),
    (150,0,329,10,10,10);

select * from tickets; 

INSERT INTO `users` (user_fio, user_phone_number) VALUES 
	('Кулагин М. Д.',89555993628),
    ('Смирнова А. Д.',89424211370),
    ('Киселев П. Г.',89701628772),
    ('Никитина А. Н.',89317051496),
    ('Агеев Я. М.',89148447932),
    ('Ермолаева И. Д.',89644275174),
    ('Котов Е. А.',89574011177),
    ('Николаева А. А.',89397891277),
    ('Иванов Н. Я.',89726902921),
    ('Сергеева Д. Д.',89628825475);
    
select * from users; 


-- UPDATE (5шт)

update tickets
	set ticket_price = 300
    where idtickets = 1;
update seats
	set seat_ratio = 1.5, seat_number = 14
    where idseats = 7;
update halls
	set hall_name = 'IMAX', hall_capacity = 120
    where idhalls = 3;
update cinemas
	set cinema_phone = 798105
    where idcinemas = 5;
update genres
	set name_genre = 'юмор'
    where idgenres = 7;

select * from genres; 


-- DELETE (5шт)
/*
ALTER TABLE `admin_bd`.`pics` DROP FOREIGN KEY `fk_pics_h1` удалить связь
ALTER TABLE `admin_bd`.`pics` ADD CONSTRAINT `fk_pics_h1` FOREIGN KEY (`house_id`) REFERENCES `admin_bd`.`houses`(`id`) ON UPDATE CASCADE ON DELETE CASCADE и добавить такую
для удаления (пример)
*/

INSERT INTO `users` (user_fio, user_phone_number) VALUES
	('Самороков М. Д.',89555993628),
	('Григорьев М. Д.',89555993628);
INSERT INTO `tickets` (ticket_price, ticket_status, ticket_number, idusers, idseats, idsessions) VALUES 
	(500,1,4561,1,1,1);	
INSERT INTO `participations` (idactors, idcharacters, idfilms) VALUES
	(11,1,1);
INSERT INTO `halls` (hall_name, hall_capacity, idcinemas) VALUES 
	('3 зал',10,1);
INSERT INTO `genres` (name_genre) VALUES 
	('комедия');


delete from users
    where idusers > 10;
delete from tickets
    where idseats > 0 and ticket_price > 400;
delete from participations
    where idparticipations = 11;
delete from halls
    where idhalls > 0 and hall_capacity < 50;
delete from genres
    where idgenres > 0 and name_genre = 'комедия';


-- SELECT, DISTINCT, WHERE, AND/OR/NOT, IN, BETWEEN, различная работа с датами и числами, преобразование данных, IS NULL, AS для таблиц и столбцов и др. в различных вариациях (15шт)

select distinct cinema_city from cinemas;
select distinct hall_name from halls;
select * from halls
	where hall_capacity < 100;
select * from actors
	where actor_age > 50 and actor_birth_place = 'США';
select * from seats
	where `row_number` in (1, 6, 14);
select * from seats
	where seat_ratio > 1.5 and seat_ratio < 2.0;
select film_company_name as fcn from filmcompanies;
select year_of_formation as 'Год основания' from filmcompanies;
select * from tickets
	where ticket_number between 150 and 5000;
select * from filmcompanies
	where `film_company_locate` in ('США: Лос-Анджелес, Калифорния', 'США: Лос-Гатос Калифорния');
select * from actors
	where actor_birth_place != 'США';
select * from films
	where idfilms = 2 or idfilms > 6;
select * from films
	where film_duration < 110;
select ticket_price as 'цена билета' from tickets;
select ticket_number as 'номер билета' from tickets;

select * from films;


-- LIKE (5шт)
select concat_ws (' / ', user_fio, user_phone_number) from users;
select concat_ws (', основан: ', film_company_name, year_of_formation) from filmcompanies;
select character_name from characters
	where character_name like 'Э%';
select character_amplua from characters
	where character_amplua like 'молод%';
select name_genre from genres
	where name_genre like 'дет%' or name_genre like '%о%';



select * from sessions;


-- SELECT INTO или INSERT SELECT (2шт)
create table test(
	idtest int not null auto_increment primary key
);
alter table test
	add column price int not null;

select * from halls;

insert into test (idtest)
select (idusers) from users;

insert into test (price)
select (ticket_price) from tickets;


-- JOIN: INNER, OUTER (LEFT, RIGHT, FULL), CROSS, NATURAL (15шт)
select * from halls as a join sessions as b on a.idhalls = b.idhalls;
select c.film_name, d.start_time_and_date from films as c join sessions as d on c.idfilms = d.idfilms;

select 
	* 
from users as u 
left join tickets as t on u.idusers = t.idusers;

select 
	t.ticket_price, 
	s.seat_number 
from seats as s
right join tickets as t on s.idseats = t.idseats;

select 
	f.film_name,
    f.film_duration,
    s.start_time_and_date,
    p.idparticipations
from films as f
join sessions as s on f.idfilms = s.idfilms
join participations as p on f.idfilms = p.idfilms;

select 
	*
from halls as h
join cinemas as c on h.idcinemas = c.idcinemas
join sessions as s on h.idhalls = s.idhalls;

select
	c.cinema_name,
    h.hall_name
from cinemas as c
cross join halls as h;

select * from filmcompanies as fc join film_to_company as ftc on fc.idfilmcompanies = ftc.idfilmcompanies;
select * from genres as g join film_to_genre as ftg on g.idgenres = ftg.idgenres;

select 
	h.hall_name,
	h.hall_capacity,
	s.seat_ratio,
    s.seat_number,
    s.`row_number`
from hall_to_seat as hts 
join seats as s on hts.idseats = s.idseats
join halls as h on hts.idhalls = h.idhalls;

select 
	*
from participations as p
join actors as a on p.idactors = a.idactors
left join films as f on a.idactors = f.idfilms;

select 
	a.actor_fio as 'ФИО актера',
    c.character_name as 'ФИО персонажа'
from participations as p
join characters as c on p.idcharacters = c.idcharacters
join actors as a on p.idactors = a.idactors;

select 
	f.film_name,
    fc.film_company_name,
    fc.year_of_formation
from film_to_company as ftc
join filmcompanies as fc on ftc.idfilmcompanies = fc.idfilmcompanies
join films as f on ftc.idfilmcompanies = f.idfilms;

select
	u.user_fio,
    t.ticket_price,
    s.seat_ratio,
    t.ticket_number
from tickets as t
join users as u on t.idusers = u.idusers
right join seats as s on t.idseats = s.idseats;

 

-- GROUP BY (некоторые с HAVING), с LIMIT, ORDER BY (ASC|DESC) вместе с COUNT, MAX, MIN, SUM, AVG в различных вариациях, можно по отдельности (15шт)
select * from users order by user_fio;
select * from actors order by actor_fio desc;
select count(*) from tickets;
select count(distinct cinema_city) from cinemas;
select min(hall_capacity) from halls;
select max(hall_capacity) from halls;
select sum(hall_capacity) from halls;
select avg(hall_capacity) from halls;
select avg (year_of_formation) from filmcompanies;
select ticket_price, avg(ticket_number) from tickets group by ticket_price;
select count(idfilms), country_of_publication
	from films 
    group by country_of_publication;
select count(idfilms), country_of_publication
	from films 
	group by country_of_publication
    having count(idfilms) > 3;
select count(idhalls), hall_name
	from halls 
	group by hall_name
    having count(idhalls) >= 2
    order by hall_name;    
select * from filmcompanies order by film_company_name;
select * from tickets order by ticket_price desc;
select count(idgenres) from genres;


select * from seats;


-- SELECT с GROUP BY, ALL, ANY, EXISTS (3шт)
select cinema_name
	from cinemas
    where idcinemas = any
		(select idcinemas
		from halls
		where hall_capacity > 150);
        
select cinema_name
	from cinemas
    where idcinemas = all
		(select idcinemas
		from halls
		where hall_capacity=100);
        
select cinema_name
	from cinemas
    where exists
		(select distinct hall_name
		from halls
		where halls.idcinemas = cinemas.idcinemas and hall_capacity between 70 and 95); 

-- GROUP_CONCAT (2шт)
select group_concat(film_name separator '  |||  ') as film_names from films;
select group_concat(cinema_email separator ' / ') as cinema_emails from cinemas;

