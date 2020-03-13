UPDATE inmates
SET cellNumber=1
WHERE [name]='KORODI ANDREEA' and country='ROMANIA'

UPDATE Guards
SET number=1
WHERE age>25

UPDATE PersonalPossessions
SET aproxValue=0
WHERE nrOfItems is null

uPDATE Visitors
SET PotentialDanger=1
WHERE nrOfVisits BETWEEN 2 AND 3

DELETE FROM inmates
WHERE country in ('AUSTRALIA')

DELETE FROM inmates
WHERE [name] like 'Q%'








