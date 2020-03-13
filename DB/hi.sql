
--i1  Who are the judges with the longest sentence given?

select Sentences.judge
from Sentences
where Sentences.years >= ALL(select Sentences.years
							from Sentences
							)

--rewritten with aggregation operators
select Sentences.judge
from Sentences
where Sentences.years=(select max(Sentences.years) from Sentences)

--i2, h3
--Who are the lawyers who have their average sentence received for their client greater than the average of all judges?							
select Sentences.lawyer, AVG(Sentences.years) as average
from Sentences
group by Sentences.lawyer
having AVG(Sentences.years)<ALL(select AVG(Sentences.years)
			from Sentences
			group by Sentences.judge
		)


--rewritten with aggregators
select Sentences.lawyer, AVG(Sentences.years) as average
from Sentences
group by Sentences.lawyer
having AVG(Sentences.years)<(select MAX(S.years) 
								from Sentences S
								)
							
							
--i3: The prison will cancel the contracts of each inmate who has the flag of potential danger on. Give me the IDs and names of those prisoners.
select inmates.iid , inmates.name
from inmates
where inmates.Danger=1 and inmates.iid=ANY(select inmates.iid
						from contracts
						where inmates.iid=contracts.iid
						)

--i3 rewritten with IN
select inmates.iid , inmates.name
from inmates
where inmates.Danger=1 and inmates.iid IN (select inmates.iid
						from contracts
						where inmates.iid=contracts.iid
						)

							

--i4: The prison wants to check the level of discrimination in the prison. Give me all the IDs and 
select inmates.iid, inmates.name
from inmates
where inmates.country=ANY(
						SELECT X.country
						from (
							select inmates.country, COUNT(*) as C
							from inmates
							group by inmates.country
							order by c
							OFFSET 1 ROWS FETCH NEXT 1 ROWS ONLY	) as X	)							
										
--i4 with in
select inmates.iid, inmates.name
from inmates
where inmates.country in (
						SELECT X.country
						from (
							select inmates.country, COUNT(*) as C
							from inmates
							group by inmates.country
							order by c
							OFFSET 1 ROWS FETCH NEXT 1 ROWS ONLY	) as X	)
