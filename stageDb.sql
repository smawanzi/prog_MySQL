drop database if exists ppestage;
create database ppestage;
use ppestage

CREATE TABLE Entreprise (
  IdEntreprise INT(11) NOT NULL AUTO_INCREMENT,
  RaisonSocial varchar(20) NOT NULL,
  Adresse varchar(50) NOT NULL,
  Ville varchar(20) NOT NULL,
  CodePostal int(5) NOT NULL,
  Telephone int (10),
  PRIMARY KEY (IdEntreprise)
  );



CREATE TABLE Eleve (
  IdEleve INT(11) NOT NULL AUTO_INCREMENT,
  Nom varchar(20) NOT NULL,
  Prenom varchar(50) NOT NULL,
  DateNaissance date,
  SectionEleve char(5),
  AnnéeDiplome int(4) NOT NULL,
  PRIMARY KEY (IdEleve)
);


CREATE TABLE Stage (
  IdStage INT(11) NOT NULL AUTO_INCREMENT,
  DateDébut date,
  DateFin date,
  IdEntreprise INT(11),
  IdEleve INT(11),
  PRIMARY KEY (IdStage)
   );
  
  ALTER TABLE Stage ADD CONSTRAINT fk_Entreprise_IdEntreprise FOREIGN KEY (IdEntreprise) REFERENCES Entreprise(IdEntreprise);
  
  ALTER TABLE Stage ADD CONSTRAINT fk_Eleve_IdEleve FOREIGN KEY (IdEleve) REFERENCES Eleve(IdEleve);
 
  


