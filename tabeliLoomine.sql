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
