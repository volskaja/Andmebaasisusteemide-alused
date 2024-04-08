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
