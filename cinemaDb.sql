
drop database if exists cinemaSM;



create database cinemaSM;

use cinemaSM;

create table acteur(
		codeActeur numeric(4.0),
		nomActeur char(30)
);	
	
create table film(
		codeFilm int(4),
		titreFilm char(40),
		anneeSortie numeric(4,0),
		note numeric(2.1), 
		nombreVotants int(4), 
		codeRealisateur int(4)
);		
		
create table realisateur(
		codeRealisateur int(4),
		nomRealisateur char(40)
);
	
create table distribution(
		codeFilm int(4),
		codeActeur int(4),
		rangActeur int(4)
);

Alter table acteur
add constraint PK_Acteur
primary key (codeActeur);
	
Alter table film
add constraint PK_Film
primary key (codeFilm);
	
Alter table realisateur
add constraint PK_realisateur
primary key (codeRealisateur);
	
Alter table distribution
add constraint PK_distribution
primary key (codeActeur,codeFilm);
	
Alter table film
add constraint FK_film_realisateur
foreign key (codeRealisateur)
references realisateur(codeRealisateur);
	
Alter table distribution
add constraint FK_distribution_film
foreign key (codeFilm)
references film(codeFilm);
	
Alter table distribution
add constraint FK_distribution_codeacteur_acteur
foreign key (codeActeur)
references acteur(codeActeur);
	