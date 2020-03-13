
--d (LEFT JOIN): We want to see the flow of doctors'appointments. We also want to see their salary, so that we know if we should rise/cut their salary.

SELECT Doctors.did, Doctors.[name], salary, HealthCareAppointments.[date]
from Doctors 
LEFT JOIN HealthCareAppointments ON Doctors.did=HealthCareAppointments.did


--d(INNER JOIN): A study about life in prison is being done in the prison. We are interested in the capability of the inmates to live a life as normal as possible.
--For this we are taking into account two matters. They must have contact with other people(so they should have visitors) and they should have a job.
SELECT distinct contracts.cid, inmates.[name]
FROM jobsForInmates
	inner join contracts ON contracts.jid=jobsForInmates.Jid
	inner join inmates on inmates.iid=contracts.iid
	inner join Visits on Visits.iid=inmates.iid
	inner join Visitors on Visitors.Vid=Visits.Vid



--d (full join) A study tries to understand how the sentence affects the prisoners' behaviour. The assumption is that those with large sentences are being more calm
--and the ones with sentences shorter are more likely to create problems
SELECT inmates.[name], inmates.Danger, Sentences.years 
from inmates
	full join Sentences ON inmates.iid=Sentences.iid
	where Sentences.years>50 or inmates.Danger is not null 

--d (right join)
--We want to check all the problems concerning mental problems and check if it had something to do with a visit the inmate had in the specific day.
SELECT distinct Visits.iid, inmates.[name], Visits.[date] AS VisitDate, HealthCareAppointments.[date] AS inHOSPITAL
FROM Visits
RIGHT join inmates on inmates.iid=Visits.iid
RIGHT join HealthCareAppointments on HealthCareAppointments.iid=inmates.iid
where HealthCareAppointments.problem='mental'
