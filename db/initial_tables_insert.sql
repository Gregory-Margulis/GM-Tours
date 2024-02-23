select * from User_Roles
insert into User_roles values ('Administrator')
insert into User_roles values ('Aireline Company')
insert into User_roles values ('Customer')
insert into User_roles values ('Anonymous')

go

select * from Users
insert into users values ('Gregory', '123456', 'g@m.com', '1')
insert into users values ('PA', 'abcde', 'p@a.com', '4')
insert into users values ('EA', 'qwerty', 'e@a.com', '2')
insert into users values ('UIA', '1q2w3e4r', 'u@i.com', '2')

go

select * from Administrators
insert into Administrators values ('Gregory','Margulis','1')

go

select * from Countries
insert into Countries
select * from [dbo].['ISO 3-Digit Alpha Country Code$'] 
where F1 is not null

go

select * from Customers
insert into Customers values ('Gregory','Margulis','0544345180','111111111','jerusalem','1')
insert into Customers values ('Ploni','Almoni','026665555','1234567890','tel aviv','3')

go

select * from Airline_Companies
insert into Airline_Companies values ('El Al', 'ISR','4') 
insert into Airline_Companies values ('Ukrainian International Airlines', 'UKR','5') 

go

select * from flights
insert into flights values ('1', 'ISR', 'UKR', cast('2024-01-26 21:00:00' AS datetime), cast('2024-01-26 23:30:00' AS datetime) , 300)
insert into flights values ('2', 'UKR', 'ISR', cast('2024-01-26 21:00:00' AS datetime), cast('2024-01-26 23:30:00' AS datetime) , 200)
insert into flights values ('2', 'UKR', 'ISR', cast('2024-01-27 21:00:00' AS datetime), cast('2024-01-27 23:30:00' AS datetime) , 400)
insert into flights values ('1', 'ISR', 'UKR', cast('2024-01-27 21:00:00' AS datetime), cast('2024-01-27 23:30:00' AS datetime) , 300)


go

select * from tickets
insert into tickets values ('5','3')

