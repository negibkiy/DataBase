create database shopofdimaa_db;

use shopofdima_db;

create table providers (
	idproviders int not null auto_increment,
    `name` varchar (100) not null,
    `address` varchar (100) not null,
    `contacts` bigint (15) not null,
    
    primary key (idproviders)
);

create table listofproducts (
	idproviders int not null,
    idgoods int not null,
    
    primary key (idproviders, idgoods),
    foreign key (idproviders) references providers (idproviders),
    foreign key (idgoods) references goods (idgoods)
);

create table goods (
	idgoods int not null auto_increment,
    `type` varchar (100) not null,
    idbrands int not null,
    
    primary key (idgoods)
);

create table goodstodelivery (
	idgoods int not null,
    iddeliveries int not null,
    `number` int not null,
    
    `count` int not null,
    
    primary key (iddeliveries, idgoods),
    foreign key (iddeliveries) references deliveries (iddeliveries),
    foreign key (idgoods) references goods (idgoods)
);

create table deliveries (
	iddeliveries int not null auto_increment,
    `description` varchar (100) not null,
    `deliverytime` time not null,
	`address` varchar (100) not null,
    `deliverydate` date not null,
    idshops int not null,
    
    primary key (iddeliveries),
    foreign key (idshops) references shops (idshops)
);

create table brands (
	idbrands int not null auto_increment,
    `name` varchar (100) not null,
    
    primary key (idbrands)
);

create table shopproducts (
	idgoods int not null,
    idshops int not null,
    `number` int not null,
    
    primary key (idshops, idgoods),
    foreign key (idshops) references shops (idshops),
    foreign key (idgoods) references goods (idgoods)
);

create table shops (
	idshops int not null auto_increment,
    
    `name` varchar (100) not null,
    
    `address` varchar (100) not null,
    idshoptypes int not null,
    
    foreign key (idshoptypes) references shoptypes (idshoptypes)
);

create table shoptypes (
	idshoptypes int not null auto_increment, 
	`name` varchar (100) not null,
    
    primary key (idshoptypes)
);

create table shoptowarehouses (
	idshops int not null,
    idwarehouses int not null,
    
    primary key (idshops, idwarehouses),
    foreign key (idshops) references shops (idshops),
    foreign key (idwarehouses) references warehouses (idwarehouses)
);

create table warehouses (
	idwarehouses int not null auto_increment,
    `capacity` int not null,
    
    check (0 < `capacity` < 10000),
    primary key (idwarehouses)
);

create table goodstocharacteristics (
	idgoods int not null,
    idvaluecharacteristics int not null,
    
    primary key (idgoods, idvaluecharacteristics),
    foreign key (idgoods) references goods (idgoods),
    foreign key (idvaluecharacteristics) references valuecharacteristics (idvaluecharacteristics)
);

create table valuecharacteristics (
	idvaluecharacteristics int not null auto_increment,
    `value` int not null,
    idcharacteristics int not null,
    
    primary key (idvaluecharacteristics),
    foreign key (idcharacteristics) references characteristics (idcharacteristics)
);

create table characteristics (
	idcharacteristics int not null auto_increment,
    `name` varchar (100) not null,
    
    primary key (idcharacteristics)
);

create table staff (
	idstaff int not null auto_increment,
    `fullname` varchar (100) not null,
    
    `count` int not null,
    
    idposts int not null,
    idshops int not null,
    
    primary key (idstaff),
    foreign key (idposts) references posts (idposts),
    foreign key (idshops) references shops (idshops)
);

create table posts (
	idposts int not null auto_increment,
    `name` varchar (100) not null,
    `wages` varchar (100) not null,
    
    primary key (idposts)
);

create table workmodes (
	idworkmodes int not null auto_increment,
    `specdate` date not null,
    `starttimework` time not null,
    `endtimework` time not null,
    `dayofweek` varchar (100) not null,
    idshops int not null,

    foreign key (idshops) references shops (idshops)
);


-- --------------мода--------------------------
create table contracts (
	idcontracts int not null auto_increment,
	`startaction` date not null,
    `endaction` date not null,
    idshops int not null,
    idposts int not null,
    idstaff int not null,
    
    primary key (idcontracts),
    foreign key (idshops) references shops (idshops),
    foreign key (idposts) references posts (idposts),
    foreign key (idstaff) references staff (idstaff)
);


alter table staff 
	drop foreign key staff_ibfk_1,
    drop foreign key staff_ibfk_2,
    drop column idposts,
    drop column idshops;
-- ---------------------------------------------







alter table goods
	add foreign key (idbrands) references brands (idbrands);

alter table workmodes
	add	primary key (idworkmodes),
    change column `dayofweek` `dayofweek` varchar (10) not null default 'ПН';
    
alter table staff
	drop column `count`,
    add column `workexp` varchar (100) not null;
    
alter table shops
	add primary key (idshops),
	drop column `name`;
    
alter table goodstodelivery
	drop column `count`;
    
alter table goods
	add column `price` int not null,
    add column `raiting` float not null;

rename table staff to staffs;
alter table workmodes
	rename column `specdate` to `specificdate`;
    
insert into providers  (idproviders, `name`, `address`, `contacts`) value (1, 'Uniel', 'ул.Нориманова 6', '74681675819');
insert into brands (idbrands, `name`) value (1, 'samsung');
insert into goods (idgoods, `type`, `price`, `raiting`, `idbrands`) value (1, 'пылесос', '7490', '4.5', 1);
insert into shoptypes (idshoptypes, `name`) value (1, 'эльдорадо');
insert into posts value (1, 'Гусынин Дмитрий', 'уборщик'), (2, 'Новрузов Сергей', 'доставщик');
insert into characteristics value (1, 'мощность');
insert into valuecharacteristics value (1, '2200', 1);
insert into warehouses value (1, '10000');
insert into shops value (1, 'ул.Мира д.51', 1);
insert into staff value (1, 'Самороков Николай Николаевич', 1, 1, '10 лет');