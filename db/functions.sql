create function hello_world()   
returns varchar(100)
begin
	declare @hello varchar (100)
	set @hello =  'you are now successfully connected to GM_Tours database'
	return @Hello
end



	
