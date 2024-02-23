select * from Users

select * from Airline_Companies


create procedure get_airline_by_username @username varchar (100)

as

	select Airline_Companies.id as [Airline Id], Airline_Companies.name, Country_Id, users.Id as [User Id], Username,Email,User_Role 
	from [dbo].[Airline_Companies] join Users on [dbo].[Airline_Companies].User_Id = Users.Id
	where users.Username = @username
	
exec get_airline_by_username @username = 'EA'


go

select * from Customers

create procedure get_customer_by_username @username varchar (100)

as

	select Customers.Id as [Customer Id], First_Name, Last_Name, Phone_No, Credit_Card_No, Address, Users.Id as [user Id], Username,Email,User_Role 
	from Customers join Users on Customers.User_Id = Users.Id
	where users.Username = @username

exec get_customer_by_username @username = 'gregory'

go

create procedure get_user_by_username @username varchar (100)

as

	select * from Users
	where Username = @username

exec get_User_by_username @username = 'pa'

go

select * from Flights

alter procedure get_flights_by_parameters @origin_country_id varchar (5), @destination_country_id varchar (5), @date datetime
as
	select * from Flights 
	where Origin_Country_Id = @origin_country_id and Destination_Country_Id = @destination_country_id and Departure_Time like cast(@date as datetime)

exec get_flights_by_parameters @origin_country_id = 'ISR' , @destination_country_id = 'UKR', @date = '2024-01-26 21:00:00' 

go

select * from flights

create procedure get_flights_by_airline_id @airline_id bigint
as
	select * from Flights
	where Airline_Company_Id = @airline_id

exec get_flights_by_airline_id @airline_id = '2'

go

create procedure get_arrival_flights @country_id varchar (5)
as
	select * from Flights
	where Departure_Time between getdate()  and ( getdate() + '12:00:00')
	and Destination_Country_Id = @country_id

exec get_arrival_flights @country_id = 'ISR'

go

create procedure get_departure_flights @country_id  varchar (5)
as
	select * from Flights
	where Departure_Time between getdate()  and ( getdate() + '12:00:00')
	and Origin_Country_Id = @country_id

exec get_departure_flights @country_id = 'ISR'

go

select * from Tickets

create procedure get_tickets_by_customer @customer_id bigint 
as
	select c.first_name, c.last_name, f.id as [flight Id], f.origin_country_id as [from], f.destination_country_id as [to], f.departure_time, f.landing_time , ac.Name as [airline company]
	from tickets  t join customers as c
	on t.Customer_Id = c.Id
	join flights f on t.Flight_Id = f.Id
	join Airline_Companies ac on f.Airline_Company_Id = ac.Id
	where c.Id = @customer_id

exec get_tickets_by_customer @customer_id = 3

	
	





