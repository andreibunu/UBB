
--WINGS
INSERT INTO Wings
VALUES(1, 200, 300, 0, 2)
INSERT INTO Wings
VALUES(2, 100, 200, 3, 2)
INSERT INTO Wings
VALUES(3, 140, 300, 0, 4)
INSERT INTO Wings
VALUES(4, 250, 300, 1, 10)
INSERT INTO Wings
VALUES(5, 300, 300, 2, 2)
--wing for g)
INSERT INTO Wings
VALUES(6, 2, 50, 3, 1)


--INMATES


INSERT INTO inmates
VALUES(1, 'JOHN FIRST', 'USA', 23, 1, null, null)
INSERT INTO inmates
VALUES(2, 'JOHN SECOND', 'USA', 112, 1, null, null)
INSERT INTO inmates
VALUES(3, 'GHEORGHE DEDUPASAT', 'ROMANIA', 111, 2, null, null)
INSERT INTO inmates
VALUES(4, 'FERNANDO MANONDO', 'MEXIC', 122, 2, null, null)
INSERT INTO inmates
VALUES(5, 'MICHAEL ANGELO', 'USA',200, 3, null, null)
INSERT INTO inmates
VALUES(6, 'POP CRISTIAN', 'ROMANIA', 155, 3, 1, '12/05/2019')
INSERT INTO inmates
VALUES(7, 'KORODI ANDREEA' , 'ROMANIA', 97, 1, null, null)
INSERT INTO inmates
VALUES(8, 'JOHN THIRD', 'USA', 148, 2, null, null)
INSERT INTO inmates
VALUES(9, 'GHILVACS GABRIEL', 'ROMANIA', 111, 3, null, null)
INSERT INTO inmates
VALUES(10, 'BUNU IULIAN', 'ROMANIA', 12, 1, null, null)
INSERT INTO inmates
VALUES(11, 'ZORI ZOLTAN', 'MEXIC', 12, 1, NULL, NULL)
INSERT INTO inmates
VALUES(13, 'WOODY ALLEN', 'MEXIC', 45, 2, NULL, NULL)
INSERT INTO inmates
VALUES(12, 'ANDY SAMBERS', 'AUSTRALIA', 45, 2, NULL, NULL)
INSERT INTO inmates
VALUES(13, 'ANDY SAMBERS', 'AUSTRALIA', 45, 6, 1, NULL)
INSERT INTO inmates
VALUES(14, 'ANDY SOMBRERO', 'AUSTRALIA', 45, 3, 1, NULL)
INSERT INTO inmates
VALUES(15, 'ANDY SOMBRERO', 'AUSTRALIA', 45, 3, 1, NULL)





--GUARDS



INSERT INTO Guards
VALUES(1, 'BUTCHER', 1, 30, 60)
INSERT INTO Guards
VALUES(2, 'BUCKBEAK', 2, 24, 80)
INSERT INTO Guards
VALUES(3, 'JOHNNY BIG', 2, 55, 95)
insert into Guards
values(4, 'MICKEY MOUSE', 5, 40, 80)


--Personal Possesions

INSERT INTO PersonalPossessions
VALUES(2, 1, NULL, 0, NULL)
INSERT INTO PersonalPossessions
VALUES(1, 2, 3, 120, 350)
INSERT INTO PersonalPossessions
VALUES(3, 3, 8, 400, 1000)

--VISITORS
INSERT INTO Visitors
VALUES (1, 'ANDREI BUNU', 3, 0)
INSERT INTO Visitors
VALUES (2, 'VLAD DOBRESCU', 1, 0)
INSERT INTO Visitors
VALUES (3, 'MIRCEA GIOANA', 1, 0)
--visits
INSERT INTO Visits
VALUES(1,1, 1, '10/11/2019')
INSERT INTO Visits
VALUES(2, 1, 3, '12/11/2019')
INSERT INTO Visits
VALUES(3, 1, 2, '11/11/2019')
INSERT INTO Visits
VALUES(4, 2, 1, '09/11/2019')
INSERT INTO Visits
VALUES(5, 3, 2, '10/11/2019')


--doctors
INSERT INTO Doctors
VALUES(1, 'SARAH JOHNSON', 400, 26, 'PEDIATRICIAN')

INSERT INTO Doctors
VALUES(2, 'ALBERT SATROKOVICH', 1000, 40, 'SURGEON')

INSERT INTO Doctors
VALUES(3, 'MARTA BARNA', 700, 50, 'CARDIOLOGIST')

INSERT INTO Doctors
VALUES(4, 'FLEUR DELACOUR', 800, 36, 'PSYCHIATRIST')

--sentences
INSERT INTO Sentences
VALUES(1, 1, 'JUDGE FUDGE', 'MARSHALL ERIKSON', 100)
INSERT INTO Sentences
VALUES(2, 2, 'SIMMONS MAYHEM', 'MARSHALL ERIKSON', 60)
INSERT INTO Sentences
VALUES(3, 3, 'JUDGE FUDGE', 'FATU ANDREI', 2)
INSERT INTO Sentences
VALUES(4, 4, 'SIMMONS MAYHEME', 'FATU ANDREI', 5)
INSERT INTO Sentences
VALUES(5, 5, 'JUDGE FUDGE', 'MARSHALL ERIKSON', 51)
INSERT INTO Sentences
VALUES(6, 6, 'JUDGE FUDGE', 'MARSHALL ERIKSON', 2)
INSERT INTO Sentences
VALUES(7, 7, 'JUDGE FUDGE', 'MARSHALL ERIKSON', 40)
INSERT INTO Sentences
VALUES(8,8, 'JUDGE FUDGE', 'MARSHALL ERIKSON', 35)

--HEALTH CARE APPOINMENTS


INSERT INTO HealthCareAppointments
VALUES(6, '11/15/2019', 1,5,'inmates altercation')
INSERT INTO HealthCareAppointments
VALUES(4, '11/15/2019', 1,1,'inmates altercation')
INSERT INTO HealthCareAppointments
VALUES(5, '11/15/2019', 3,4,'faint')
INSERT INTO HealthCareAppointments
VALUES(7, '12/11/2019', 2, 3, 'mental')
INSERT INTO HealthCareAppointments
VALUES(8, '02/19/2019', 1, 2, 'mental')

--JOBS FOR INMATES
insert into jobsForInmates
values(1, 30, 'CHURCH', 20)

insert into jobsForInmates
values(2, 40, 'KITCHEN', 15)

--CONTRACTS
insert into contracts
values(1, 1, 2, 17)

insert into contracts
values(2, 2, 1, 5)

insert into contracts
values(3, 3, 1, 15)
insert into contracts
values(4, 4, 2, 65)
insert into contracts
values(5, 5, 1, 50)
INSERT INTO contracts
values(6, 13, 1, 40)

