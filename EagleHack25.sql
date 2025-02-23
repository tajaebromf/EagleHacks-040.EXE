create table State( --create State table
state_id char (2) Primary key,
state_name varchar (20) not NULL); 

insert into state (state_id, state_name) 
values ('FL', 'Florida');

select *
from state;

create table City( --create City table
city_id SERIAL Primary Key,
city_name varchar(50) not NULL,
state_id char(2) not NULL,
Foreign Key (state_id) references state(state_id)
);

insert into city (city_name, state_id)
values ('Orlando','FL'), ('Miami','FL'),('Naples','FL'),('Everglades City','FL'),('Gainesville','FL');

select *
from city;

create table Season(
season_id SERIAL Primary Key,
season_name varchar (50) not NULL
);

insert into season (season_name)
values ('Spring'), ('Summer'), ('Fall'), ('Winter')

select *
from season;

create table Vehicle(
vehicle_id SERIAL Primary Key,
vehicle_type varchar(50) not NULL,
season_id int,
Foreign Key (season_id) references season(season_id)
);

alter table Vehicle
add column inventory int DEFAULT 5;

insert into vehicle (vehicle_type, season_id)
values ('Convertable',1),('Convertable',2),('Convertable',3), ('Sedan',1),('Sedan',2),('Sedan',3),('Sedan',4), ('SUV', 1),('SUV', 2),('SUV', 3),('SUV', 4), 
('Truck', 1),('Truck', 2),('Truck', 3),('Truck', 4), ('Van', 1),('Van', 2),('Van', 3),('Van', 4), ('Luxury', 1),('Luxury', 2), ('Luxury', 3),('Luxury', 4),
('Sports Car', 1),('Sports Car', 2),('Sports Car', 3),('Sports Car', 4), ('Off-road', 1), ('Off-road', 2),('Off-road', 3),('Off-road', 4);

select *
from vehicle;

delete from vehicle
where season_id is null;

create table Natural_Disaster(
disaster_id SERIAL Primary Key,
disaster_type varchar(50) not NULL,
season_id int,
Foreign Key (season_id) references season(season_id)
);

insert into natural_disaster(disaster_type, season_id)
values ('Hurricane', 3),('Hurricane', 4),('Flooding', 3),('Flooding', 4),('Rainy', 2),('Rainy', 3),('Rainy', 4);

select * 
from natural_disaster;