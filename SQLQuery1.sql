create database Practical

use Practical

select * from Students

create view vw_getStudentsByAge
as
select * from Students where [Age] > 25


select * from vw_getStudentsByAge

create view vw_orderStudentsByCity
as
select * from Students where [CityId] = 2


create view vw_joinStudentDatas
as
select st_FullName as 'Student', ct.Name as 'City', co.Name 'Country' from Students st
join Cities ct
on st.CityId = ct.Id
join Countries co
on ct.CountryId = co.Id


select * from vw_joinStudentDatas



create function dbo.showWord()
returns nvarchar(50)
as
begin
	return 'p418'
end

select dbo.ShowWord()

declare @result nvarchar(50) = (select dbo.ShowWord())
print @result


create function dbo.showWordWithParameter(@text nvarchar(50))
returns nvarchar(50)
as
begin
	return @text
end	


create function dbo.getStudentsAvgAgesById(@id int)
returns int
as 
begin
	return (select AVG(Age) from Students where [Id] > @id)
end

select * from Students 

select dbo.getStudentsAvgAgesById(3)




create procedure usp_showText	
as
print 'salam'

exec usp_showText