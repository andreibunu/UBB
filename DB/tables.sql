
--one primary key, no foreign key
create table Wings
(number int primary key, nrOfInmates int, capacity int, [floor] int, bedsPercell int);

--one primary key, one foreign key
create table inmates
(iid int primary key, [name] varchar(30),country varchar(30), cellNumber int,  Number int references Wings(number), Danger int, lastProblem date);


create table Guards
(gid int primary key, [name] varchar(30), number int references Wings(number), age int, Reputation int);


create table Visitors
(Vid int primary key, [name] varchar(30), nrOfVisits int, PotentialDanger int);

create table jobsForInmates
(Jid int primary key, payment int,facility varchar(50), nrOfInmates int );


--multicoloumn primary key
create table Doctors
(firstname varchar(30), surname varchar(30), salary int,age int, specialisation varchar(30), primary key(firstname, surname))

--create table HealthCareAppointments
--(HAid int primary key, [date] date, did int references Doctors(did), iid int references inmates(iid), problem varchar(80));

create table PersonalPossessions
(ppid int primary key, iid int references inmates(iid),nrOfItems int, aproxValue int, [weight] float);

create table Visits
(visitsId int primary key,Vid int references Visitors(Vid) , iid int references Inmates(iid) , [date] date);

create table Sentences
(iid int references inmates(iid), [sid] int primary key, judge varchar(30), lawyer varchar(30), years int );

create table contracts
(cid int primary key,iid int references inmates(iid), jid int references jobsForInmates(Jid),experience int)




