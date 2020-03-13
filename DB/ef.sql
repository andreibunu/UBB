--e (IN operator with a subquery having another subquery)
--Give me all the guards from the wing having the largest number in inmates


SELECT Guards.gid, Guards.[name]
FROM Guards
where Guards.number in(
	select Wings.number
	from Wings
	where Wings.nrOfInmates in(
		select max(Wings.nrOfInmates)
		from Wings
		)
	)

--e(subquery with where)
--Give me all the doctors having the biggest salary

select Doctors.[name], salary
from Doctors
where Doctors.salary in(
	select MAX(Doctors.salary)
	from Doctors
	)


--f(exists subquery)
--Give me all the doctors who have had appointments
select Doctors.did, Doctors.[name]
from Doctors
where exists(
	select *
	from HealthCareAppointments
	where HealthCareAppointments.did=Doctors.did
	)
order by Doctors.[name]

--f(exists subquery)
--Give me all the inmates who did not have any Possesions at their arrival
select inmates.iid, inmates.[name]
from inmates
where exists(
	select *
	from PersonalPossessions
	where inmates.iid=PersonalPossessions.iid 
	and PersonalPossessions.nrOfItems is  null
	)

