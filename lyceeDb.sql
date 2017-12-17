drop database if exists lycee;
create database lycee;
USE lycee
/* création de la table eleve */



CREATE TABLE eleve
 (Num int auto_increment not null,
  Nom  varchar(20) NOT NULL,
  Prenom varchar(20) NOT NULL,
  Adresse varchar(50) ,
  CP varchar(5) ,
  Ville varchar(30),
  primary key(Num))engine=innodb;

 
 
 alter table eleve
 add constraint pk_eleve Primary Key (num);

  
 describe eleve;



/* insertion des lignes  eleve*/

INSERT INTO eleve (Nom, Prenom, Adresse, CP, Ville) 
VALUES('Jallon', 'Virgile', '15 rue Carnot', '95330', 'Domont');
