create database EntrepreneurialTechnology ;
use EntrepreneurialTechnology;

create table AdminTable (
FirstName varchar ( 50 ) ,
LastName varchar ( 50 ),
PhoneNumber varchar(25),
username varchar ( 50 ),
EmailAddress varchar ( 250 ),
Password blob,
primary key(username)
);
insert into AdminTable(FirstName,LastName,PhoneNumber,username,EmailAddress,Password)values('Basil','Alhazmi','0559038514','Basil7557','Basilalhazmi10@gmail.com',aes_encrypt('123','secret1'));
select * from AdminTable;
DELETE FROM AdminTable WHERE username='';

create table User (
FirstName varchar ( 50 ) ,
LastName varchar ( 50 ),
PhoneNumber varchar(25),
username varchar ( 50 ),
EmailAddress varchar ( 250 ),
Password blob,
primary key(username)
);
select * from User;
DELETE FROM User WHERE username='';

create table Services (
ServiceId int not null auto_increment,
ServiceName varchar(50),
primary key(ServiceId)
);
insert into Services(ServiceName)values('Massage');
insert into Services(ServiceName)values('Facial');
insert into Services(ServiceName)values('Waxing');
insert into Services(ServiceName)values('MakeUp');
insert into Services(ServiceName)values('Nail Care');
insert into Services(ServiceName)values('Hair Cut');
insert into Services(ServiceName)values('Hair Dye');
insert into Services(ServiceName)values('Hair Dryer');
insert into Services(ServiceName)values('Shampoo');
select * from Services;

create table Hairstylist (
HairstylistId int not null auto_increment,
HairstylistName varchar(50),
primary key(HairstylistId)
);
insert into Hairstylist(HairstylistName)values('Mary');
insert into Hairstylist(HairstylistName)values('Linda');
insert into Hairstylist(HairstylistName)values('Susan');
insert into Hairstylist(HairstylistName)values('Lisa');
insert into Hairstylist(HairstylistName)values('Helen');
select * from Hairstylist;

create table hairstylistSpecialist (
HairstylistId int references Hairstylist(HairstylistId),
ServiceId int references Services(ServiceId),
experienceYear varchar(50)
);
insert into hairstylistSpecialist(HairstylistId,ServiceId,experienceYear)values('1','1','2 Years');
insert into hairstylistSpecialist(HairstylistId,ServiceId,experienceYear)values('3','6','3 Years');
insert into hairstylistSpecialist(HairstylistId,ServiceId,experienceYear)values('5','2','4 Years');
insert into hairstylistSpecialist(HairstylistId,ServiceId,experienceYear)values('4','9','5 Years');
insert into hairstylistSpecialist(HairstylistId,ServiceId,experienceYear)values('2','4','2 Years');
insert into hairstylistSpecialist(HairstylistId,ServiceId,experienceYear)values('3','9','1 Years');
insert into hairstylistSpecialist(HairstylistId,ServiceId,experienceYear)values('5','1','3 Years');
insert into hairstylistSpecialist(HairstylistId,ServiceId,experienceYear)values('4','5','1 Years');
insert into hairstylistSpecialist(HairstylistId,ServiceId,experienceYear)values('1','7','2 Years');
insert into hairstylistSpecialist(HairstylistId,ServiceId,experienceYear)values('5','8','4 Years');
insert into hairstylistSpecialist(HairstylistId,ServiceId,experienceYear)values('3','3','1 Years');
select * from hairstylistSpecialist;


SELECT Hairstylist.HairstylistName, Services.ServiceName, hairstylistSpecialist.experienceYear
FROM hairstylistSpecialist AS hairstylistSpecialist  
LEFT JOIN Services AS Services  
ON hairstylistSpecialist.ServiceId=Services.ServiceId  
LEFT JOIN Hairstylist AS Hairstylist  
ON hairstylistSpecialist.HairstylistId = Hairstylist.HairstylistId where Services.ServiceId='3';  

SELECT Hairstylist.HairstylistName FROM hairstylistSpecialist AS hairstylistSpecialist LEFT JOIN Services AS Services  
ON hairstylistSpecialist.ServiceId=Services.ServiceId  
LEFT JOIN Hairstylist AS Hairstylist  
ON hairstylistSpecialist.HairstylistId = Hairstylist.HairstylistId where Services.ServiceId='1';  


create table TimeTable (
TimeTableId int not null auto_increment,
TimeTable varchar(50),
 primary key(TimeTableId)
);

insert into TimeTable(TimeTable)values('08:00 AM');
insert into TimeTable(TimeTable)values('08:30 AM');
insert into TimeTable(TimeTable)values('09:00 AM');
insert into TimeTable(TimeTable)values('09:30 AM');
insert into TimeTable(TimeTable)values('10:00 AM');
insert into TimeTable(TimeTable)values('10:30 AM');
insert into TimeTable(TimeTable)values('11:00 AM');
insert into TimeTable(TimeTable)values('11:30 AM');
insert into TimeTable(TimeTable)values('12:00 PM');
insert into TimeTable(TimeTable)values('04:00 PM');
insert into TimeTable(TimeTable)values('04:30 PM');
insert into TimeTable(TimeTable)values('05:00 PM');
insert into TimeTable(TimeTable)values('05:30 PM');
insert into TimeTable(TimeTable)values('06:00 PM');
insert into TimeTable(TimeTable)values('06:30 PM');
insert into TimeTable(TimeTable)values('07:00 PM');
insert into TimeTable(TimeTable)values('07:30 PM');
insert into TimeTable(TimeTable)values('08:00 PM');
insert into TimeTable(TimeTable)values('08:30 PM');
insert into TimeTable(TimeTable)values('09:00 PM');
insert into TimeTable(TimeTable)values('09:30 PM');
insert into TimeTable(TimeTable)values('10:00 PM');
insert into TimeTable(TimeTable)values('10:30 PM');
insert into TimeTable(TimeTable)values('11:00 PM');
insert into TimeTable(TimeTable)values('11:30 PM');
select * from TimeTable;

create table Appointment (
AppointmentId int not null auto_increment,
FirstName varchar(50),
LastName varchar(50),
username varchar(50),
PhoneNumber varchar(50),
Service varchar(50),
Stylist varchar(50),
Date varchar(50),
Time varchar(50),
 primary key(AppointmentId)
);
select * from Appointment;

select  time from appointment where date='31/03/2020' order by (time);
select  Date,time from appointment order by (Date);



