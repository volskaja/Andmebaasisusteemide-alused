
CREATE DATABASE KarinaProcedure;
USE KarinaProcedure;


create table film(
filmId int PRIMARY KEY IDENTITY(1,1),
filmNimetus varchar (50),
kestvus int,
rezisoor varchar(50),
v_aasta int);
select * from film;
---mockaroo.com
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
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('My Lucky Stars (Fuk sing go jiu)', 226, 'Marcille Werner', 2003);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Penny Serenade', 254, 'Julita Boden', 2002);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('A Justified Life: Sam Peckinpah and the High Country', 282, 'Gavra Harral', 2010);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Life Is All You Get (Das Leben ist eine Baustelle.)', 157, 'Jameson Fenn', 2006);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('So Much So Fast', 143, 'Munroe Cordeau]', 2006);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Ju-on: Black Ghost', 201, 'Jennette Terrington', 1989);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Little Girl Who Conquered Time, The (Toki o kakeru shôjo)', 209, 'Hercules Spoor', 1990);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Mean Guns', 196, 'Cece Eastment', 1995);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Silver Streak', 261, 'Rozalie Pietasch', 1994);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Halloween', 141, 'Angel Forst', 1993);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Idolmaker, The', 200, 'Cthrine Willars', 2010);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Paris', 173, 'Farleigh Aishford', 2012);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Wild Life, The', 237, 'Sella Notley', 2012);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Grandpa for Christmas, A (Bert & Becca)', 182, 'Benton Rockwell', 2000);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('How to Eat Your Watermelon in White Company (and Enjoy It)', 201, 'Una Saing', 2006);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Brussels Business, The', 190, 'Demetris Roderham', 1987);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Promised Land', 186, 'Keane Dye', 2006);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Prisoner of Zenda, The', 165, 'Etty Tisun', 1993);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Moog', 270, 'Wildon Twittey', 2008);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Lewis Black: Stark Raving Black', 204, 'Seymour Kinney', 2009);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Partners in Crime (Associés contre le crime...)', 119, 'Jed Jacmar', 1999);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Pretty Devils', 155, 'Wendeline Mapplebeck', 1990);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Breakfast Club, The', 127, 'Salvidor Siviour', 2009);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Terms and Conditions May Apply', 104, 'Shandra Stokey', 1993);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Monster House', 298, 'Jody Brownjohn', 2001);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Radioland Murders', 204, 'Georas McGrirl', 2011);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Heaven Help Us', 262, 'Pansy Kittiman', 2009);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Johnson Family Vacation', 294, 'Elsa Cawt', 2005);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Hecho en México', 151, 'Bil Conroy', 2001);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Tom Sawyer', 212, 'Jacintha Windows', 2011);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Ruby Cairo', 123, 'Christie Gosse', 1968);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Lucky 7', 185, 'Alys MacKean', 2008);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Something Like Happiness (Stestí)', 231, 'Trey Batey', 1994);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Detour ', 230, 'Gusty Beeres', 1994);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Alive Inside', 189, 'Claude Meus', 2007);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Vampire Girl vs. Frankenstein Girl (Kyûketsu Shôjo tai Shôjo Furanken)', 275, 'Wanda Tyer', 1996);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('In the Shadow of Doubt (Epäilyksen varjossa)', 241, 'Haven Baford', 2011);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Sidewalks of New York', 118, 'Erhard McGrirl', 1986);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Love Life', 152, 'Rufe Dallender', 2011);

select * from film;

--------------------------------------------------------------

select * from film;
--filmiNimetus otsing esimese tähe järgi
CREATE Procedure otsing1Taht
@taht char(1)
AS
Begin
	select * from film 
	WHERE filmNimetus LIKE CONCAT(@taht,'%');
ENd;

--käivitamine

EXEC otsing1Taht 'S';


--------------------------------------------------------------
--protseduur mis kutsutab sisestatu id järgi
CREATE Procedure kustutaFilm 
@id int
AS
BEGIN
select * from film;
delete from film WHERE filmId-@id;
select * from film;
END;

EXEC kustutaFilm 2;
--------------------------------------------------------------
--proceduur, mis loeb filmide arv kokku

create procedure FilmideARV
AS
select COUNT(*) AS 'filmide ARV' from film;

EXEC FilmideARV
