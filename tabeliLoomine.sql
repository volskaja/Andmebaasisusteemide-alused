SQL SERVER MANAGEMENT STUDIO

--ab loobine
CREATE DATABASE SoldatenkoLOGIPV22;

use SoldatenkoLOGIPV22;
--tabeli loomine
create table opilane(
id int Primary Key identity (1,1),
eesnimi varchar(20),
perenimi varchar(25)not null,
isikukood char(11) unique,
aadress TEXT,
sisseastumis_kp date
);
--primary key- primaarne võti mis annab inikaalsus
--identity(1,1) - määrb igaühele oma numbri

select * from opilane;

--kuva kõik mis on tabelis
select * from opilane;
--andmete lisamine
insert into opilane(eesnimi, perenimi, isikukood, aadress, sisseastumis_kp)
values(
'karina','soldatenko','123','kisa','2022-09-15'),
('mahsa','kirkorova','65656565','tapa','2022-09-15')
select * from opilane;
-----------------------------------------------------------------------------------
CREATE TABLE language
(
ID int NOT NULL PRIMARY KEY,
Code char(3) NOT NULL,
Language varchar(50) NOT NULL,
IsOfficial bit,
Percentage decimal(5,2)
);

--tabeli andmete lisamine
Select * from language;
insert into language(ID,code, Language, IsOfficial, Percentage)
values (100, 'EST','Eesti', 1, 81);

--tabeli struktuuri muutmine
alter table Language ADD Capital varchar(20); 

--veergu kustutamine
alter table Language DROP COLUMN Capital; 
----
insert into language(ID,code, Language, IsOfficial, Percentage, Capital)
values (101, 'FIN','Soome', 1, 96.5, 'Helsinki');
--uuendamine
UPDATE language SET Capital='Tallinn'
WHERE ID=100
--tabeli kustutamine
DROP TABLE language
------------------------------
--tabeli Ryhm loomine
CREATE TABLE ryhm(
ryhmId int  Primary Key identity(1,1),
ryhmNimetus varchar(20) UNIQUE,
osakond char(3));
SELECT * FROM  ryhm;
Insert into ryhm(ryhmNimetus, osakond)
VALUES ('LOGITPE23', 'IT');
SELECT * FROM  ryhm;
select * from opilane;
--foreign key --->pk teises tabelis
ALTER TAbLE opilane ADD ryhmId int
--tabeli opilane uuendamine
Update opilane SET ryhmId=2;
--FK lisamine opilane tabelisse
ALTER TABLE opilane
ADD FOREIGN KEY (ryhmId) REFERENCES ryhm(ryhmId)
--kutsutamine
drope table ....;
alter table ... drope column ...;

--tabeli ryhmajuhataja loomine
CREATE TABLE ryhmajuhataja(
juhatajaId int  Primary Key identity(1,1),
eesnimi varchar(20) UNIQUE,
perenimi varchar(25),
telefon varchar(20));

INSERT INTO ryhmajuhataja(eesnimi,perenimi,telefon)
VALUES ('karina', 'soldatenko','76767676')
SELECT *FROM ryhmajuhataja;
SELECT *FROM ryhm;

ALTER TABLE ryhm ADD juhatajaId int
--tabeli opilane uuendamine
Update opilane SET juhatajaId=1;
--FK lisamine opilane tabelisse
ALTER TABLE ryhm
ADD FOREIGN KEY (juhatajaId) REFERENCES ryhmajuhataja(juhatajaId)

Insert into ryhm(ryhmNimetus, osakond, juhatajaId)
VALUES ('LOGITGV23', 'IT', 1)
------------------------------------------
НЕ РАБОТАЕТ
CREATE TABLE hinnang (
hinnangID int PRIMARY KEY IDENTITY(1,1),
kuupaev date UNIQUE,
opilaneID int,
ryhmajuhatajaID int,
hinnang text
);
SELECT * FROM ryhmajuhataja;
SELECT * FROM ryhm;
SELECT * FROM hinnang;
SELECT * FROM opilane;

INSERT INTO hinnang (kuupaev, opilaneID, ryhmajuhatajaID, hinnang)
VALUES ('2024-10-09', '56', '67', 'nii');

ALTER TABLE opilane ADD hinnang int;
UPDATE opilane SET hinnang=1;

ALTER TABLE ryhm

ADD CONSTRAINT FK_juhatajaId FOREIGN KEY (juhatajaId) REFERENCES ryhmajuhataja(juhatajaId);
INSERT INTO ryhm (ryhmNimetus, osakond, juhatajaId)
VALUES ('LOGITGV23', 'IT', 1);

-----------------------------------------------------------------------------------------------

KINOTEATR
CREATE TABLE filmType(
	filmTypeID int Primary key identity(1,1),
	filmType varchar(25),
	kirjeldus TEXT);
select * from filmType;
INSERT INTO filmType (filmType, kirjeldus)
VALUES ('3D','ilus 3D film');
--table rezisor
CREATE TABLE rezisor(
	rezisorID int Primary key identity(1,1),
	eesnimi varchar(25),
	perenimi varchar(25));
select * from rezisor;
INSERT INTO rezisor(eesnimi, perenimi)
VALUES ('Viktor','Medveedev');
--table zanr
CREATE TABLE zanr(
	zanrID int Primary key identity(1,1),
	zanrNimi varchar(25),
	zanrKirjeldus TEXT);
select * from zanr;
INSERT INTO zanr(zanrNimi, zanrKirjeldus)
VALUES ('horror','horror film');
--kõik select
select * from filmType;
select * from rezisor;
select * from zanr;
select * from piletiMyyk;
select * from kinokava;
select * from filmi;

--table kinokava
CREATE TABLE kinokava(
	kinokavaID int Primary key identity(1,1),
	kuupaev DATETIME,
	filmNimetus int,
	piletihind int);
select * from kinokava;
INSERT INTO kinokava(kuupaev, filmNimetus, piletihind)
VALUES ('2024-10-22',1, '5');
DROP TABLE kinokava;

--table piletiMyyk
CREATE TABLE piletiMyyk(
	piletiMyykID int Primary key identity(1,1),
	kogus int,
	kinokavaID int);
select * from piletiMyyk;
INSERT INTO piletiMyyk(kogus, kinokavaID)
VALUES ('18',0);
--FK: piletiMyyk --> kinokava
ALTER TABLE piletiMyyk ADD FOREIGN KEY (kinokavaID) 
references kinokava(kinokavaID);
DROP TABLE piletiMyyk;


--table film
CREATE TABLE filmi(
	filmID int Primary key identity(1,1),
	filmNimetus varchar(25),
	zanrID int,
	pikkus int,
	rezisorID int,
	filmTypeID int,
	reklaam image);
select * from filmi;
INSERT INTO filmi(filmTypeID,rezisorID, zanrID, filmNimetus, pikkus, reklaam )  --filmNimetus, pikkus,
VALUES (4,4,1,'vova', '6', '8');

DROP TABLE filmi;

--FK: film --> filmType
ALTER TABLE filmi ADD FOREIGN KEY (filmTypeID) 
references filmType(filmTypeID);

--FK: film --> rezisor
ALTER TABLE filmi ADD FOREIGN KEY (rezisorID) 
references rezisor(rezisorID);

--FK: film --> zanrID
ALTER TABLE filmi ADD FOREIGN KEY (zanrID) 
references zanr(zanrID);

--FK: kinokava --> film
ALTER TABLE kinokava ADD FOREIGN KEY (filmNimetus) 
references film(filmID);







