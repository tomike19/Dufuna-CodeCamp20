-- Create the Database
-- 1 create the Registered Passenger Table --
-- 2 create the trip details for each Passenger --
-- 3 create the accident table
CREATE DATABASE TRANSPORTATION;
USE TRANSPORTATION;


-- creating the registered Passengers 

CREATE TABLE passengers(
id INT NOT NULL AUTO_INCREMENT,
full_name VARCHAR(30) NOT NULL,
sex VARCHAR(30) NOT NULL,
age VARCHAR(10) ,
PRIMARY KEY(id)
);
select * from passengers;

-- creating tables for Trip Details
CREATE TABLE trip(
id INT NOT NULL AUTO_INCREMENT,
trip_id INT NOT NULL,
registered_passengers_id INT NOT NULL,
passenger_class decimal (15,2) NOT NULL,
passenger_ticket INT NOT NULL,
assigned_cabin INT NOT NULL,
parent_number VARCHAR(15) NOT NULL,
children_number VARCHAR (15) NOT NULL,
embarkation_point VARCHAR (255) NOT NULL,
primary key (id),
foreign key (trip_id) references passengers(id)
);
select * from trip;

CREATE TABLE accidents (
id INT NOT NULL AUTO_INCREMENT,
passenger_id INT NOT NULL,
accident_status VARCHAR (50) NOT NULL,
primary key (id),
foreign key (passenger_id) references passengers(id)
);

select * from accidents

