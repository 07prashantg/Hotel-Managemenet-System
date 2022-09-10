create table client(
username varchar(50),password varchar(50));

insert into client(username,password)
values('Prashant','Prashant@123'),
('Udit','Udit@123'),
('Shreyas','Shreyas@123'),
('Harshit','Harshit@123');
 
select * from client;

create table admin(
username varchar(50),password varchar(50));

insert into admin(username,password)
values('Prashant','Prashant@123'),
('Udit','Udit@123');

select * from admin;

create table room(
Room_Type varchar(10),Fare int, Capacity int,);

insert into room(Room_Type,Fare,Capacity)
values('AC',5000,4),
('AC',4000,3),
('NON-AC',3000,4),
('NON-AC',2000,3);


create table customer(
username varchar(50),roomtype varchar(10),fromdate date,todate date);

insert into customer(username,roomtype,fromdate,todate)
values('Prashant','AC','2022-03-11','2022-03-13');

create table guest(
Full_Name varchar(50),Email varchar(50),Mobile varchar(10),Id_Proof varchar(20),Gender varchar(10),Room_Type varchar(10),Fare int,Capacity int,From_Date date,To_Date date);

insert into guest(Full_Name,Email,Mobile,Id_Proof,Gender,Room_Type,Fare,Capacity,From_Date,To_Date)
values('Ram','Ram@gmail.com','908765421','2002','Male','AC','3000','4','2022-03-11','2022-03-13');

select * from guest;

create table clientBooking(
UserName varchar(50),
Room_Type varchar(10),
Fare int,
Capacity int,
From_Date date,
To_date date);

create table total_room(
Room_Type varchar(10),Fare int, Capacity int,);

insert into total_room(Room_Type,Fare,Capacity)
values('AC',5000,4),
('AC',4000,3),
('NON-AC',3000,4),
('NON-AC',2000,3);

select * from total_room;

create table client_details(
Full_Name varchar(50),Mobile varchar(10),Email varchar(50),UserName varchar(20),Id_Proof varchar(20),Gender varchar(10));

select * from client_details;