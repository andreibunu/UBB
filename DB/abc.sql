
--a : Give me all the employers who are older thaN 50
--
SELECT [name] , age
FROM Guards
WHERE age>40

UNION

SELECT [name],age
FROM Doctors
WHERE age>40


--a:  Give me all the guards with eexperience i.e either older than 45 or with a strong reputation
SELECT [name], age, Reputation
FROM Guards
WHERE age>45 OR Reputation>75


--b  Give me the best Guards we have(experience and reputation)

SELECT [name], age, Reputation
FROM Guards
WHERE age>45
INTERSECT
SELECT [name], age, Reputation
FROM Guards
where Reputation>85



--b   Give me all the inmates who received a sentence larger than 50 years
SELECT [name] 
FROM inmates
WHERE iid IN 
	(SELECT iid
	FROM Sentences
	WHERE years>50
	)



--c  Gimme all the Hospital Appoinments that were not due to an inmates altercation
SELECT HAid, [date],iid,problem
FROM HealthCareAppointments
WHERE HAid
NOT IN(
	SELECT HAid
	from HealthCareAppointments
	WHERE problem ='inmates altercation'
)
--c Give me all the IDs of the inmates who do not work
SELECT iid, [name]
FROM inmates
EXCEPT
select C.iid, [name]
FROM contracts C,inmates I
where C.iid=I.iid
