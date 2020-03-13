--g(subquery in from clause)  Select the prisoners who received the longest sentence from all the inmates with the same country
select I.name, S.years, I.country
from(select MAX(S.years) as maxim, I.country
		from Sentences S, inmates as I
		where S.iid=I.iid
		group by I.country
		)as Shit, inmates as I, Sentences as S
where S.iid=I.iid and I.country=Shit.country and S.years=Shit.maxim  



--g(subquery in from clause) Dangeours Wings:  Select the wings in which the ratio of NumberOfInmates / NumberOfDangerousInmates smaller than average, EXCEPT wing 6(with most notorious criminals)
SELECT W.number as wing, BadWings.Nr as DangerousInmates
FROM (
	SELECT COUNT(I.Danger) as Nr, W.number
	FROM inmates I, Wings W
	where I.Number=W.number and I.Danger=1
	group by W.number
	having W.number!=6
)as BadWings, Wings as W
where BadWings.number=W.number and BadWings.Nr!=0 AND W.nrOfInmates/BadWings.Nr<=50


