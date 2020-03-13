
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
having AVG(Sentences.years)<(select  MAX(Inner.Y)
							from (select AVG(S.years)  as Y, S.judge
								from Sentences S
								group by S.judge) as Inner
							w


								)  
							

							
										
										

