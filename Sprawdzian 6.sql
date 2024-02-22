create database Test;
use Test;

-----------------------------

create table przedmioty
(
ID_przedmiotu int identity (1,1) not null primary key,
Nazwa varchar (20),
Prowadz¹cy varchar (20),
ID_ucznia int not null,
);

--------------------------------------------------------------

select * from przedmioty;
insert into przedmioty(Nazwa,prowadz¹cy,ID_ucznia) values
('Polski','Kowalski',1),
('Religia','NULL',2),
('Matematyka','Olszewska',2);

----------------------------------

select * from przedmioty;
update przedmioty set Prowadz¹cy='Nowak' where ID_przedmiotu=2;

---------------------------------

create table Uczniowie
(
ID int identity (1,1) not null primary key,
Imie varchar (20)
);
insert into Uczniowie(Imie) values
('Karol'),
('Kasia');
select * from Uczniowie;

-----------------------------------------

alter table Uczniowie add Wiek int;
UPDATE Uczniowie set Wiek=4 where ID=1;
UPDATE Uczniowie set Wiek=20 where ID=2;

select * from Uczniowie;
------------------------------------------

select COUNT(przedmioty.Nazwa) as 'Ile przedmiotów' from Przedmioty join Uczniowie on uczniowie.ID=Przedmioty.ID_ucznia where Uczniowie.ID=1;
select COUNT(przedmioty.Nazwa) as 'Ile przedmiotów' from Przedmioty join Uczniowie on uczniowie.ID=Przedmioty.ID_ucznia where Uczniowie.ID=2;

------------------------------------------

alter table Przedmioty drop column Prowadz¹cy;

---------------------------------------------