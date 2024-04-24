create table film(
filmId int PRIMARY AUTO_INCREMENT,
filmNimetus varchar (50),
kestvus int,
rezisoor varchar(50),
v_aasta int);
---------------------------------------------------------------------------------

insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Battlefield Earth', 214, 'Fidole Gladtbach', 1997);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('River Wild, The', 155, 'Milt Penlington', 2002);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Youth of the Son', 265, 'Zaccaria O''Mullally', 2008);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Public Access', 115, 'Ximenes Percifull', 1996);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('City Dark, The', 126, 'Abbi Hawford', 2003);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Möbius', 143, 'Cori Jennick', 2008);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Castle, The (Das Schloß)', 107, 'Clementia Whistlecraft', 2006);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Up in the Wind', 292, 'Aguistin Stegell', 1992);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('All the Little Animals', 203, 'Nicoline Halleybone', 2002);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Gnome-Mobile, The', 217, 'Waylan Feldstern', 1968);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('7th Dawn, The', 237, 'Tony Ranstead', 2003);
---------------------------------------------------------------------------------
  begin
	select * from film
	where filmnimetus like concat(taht,'%');
end;
CREATE PROCEDURE `otsing1taht`(IN `taht` CHAR(1)) NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER 
---------------------------------------------------------------------------------
--proceduure käivitamine
CALL otsing1taht ('C');
---------------------------------------------------------------------------------
--filmi kutsustamine
begin
select * from film;
delete from film where filmid=id;
select * from film;
end;
CREATE PROCEDURE `kustutaFilm`(IN `id` INT) NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER begin select * from film; delete from film where filmid=id; select * from film; end; 
---------------------------------------------------------------------------------
--удаление будет работать только через Funktsioonid--teosta
begin
select * from film;
delete from film where filmid=id;
select * from film;
end;
---------------------------------------------------------------------------------
begin
select COUNT(*) as 'filmide arv' from film;
end;
CALL `filmideARV`(); --potom
CREATE PROCEDURE `filmideARV`() NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER begin select COUNT(*) as 'filmide arv' from film; end; 
---------------------------------------------------------------------------------
begin
insert into film (filmnimetus, kestvus, rezisoor, v_aasta)
values (uusfilm, kestvus, rezisoor, aasta);
select * from film;
end;

CREATE PROCEDURE `lisafilm`(IN `uusfilm` VARCHAR(50), IN `kestvus` INT, IN `rezisoor` VARCHAR(50), IN `aasta` INT) NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER begin insert into film (filmnimetus, kestvus, rezisoor, v_aasta) values (uusfilm, kestvus, rezisoor, aasta); select * from film; end; 
"SET @p0='Kevad on kole'; SET @p1='2'; SET @p2='Loodus Maa'; SET @p3='2024'; CALL `lisafilm`(@p0, @p1, @p2, @p3); "--если делать по умному
