Create database gestinfosm;
use gestinfosm;
create table EMPLOYE (
	numEmploye int,
	nomEmploye varchar(45),
	prenomEmploye varchar(25),
	nomservice varchar(20)
);
create table ORDINATEUR (
	numordinateur int,
	nomordinateur varchar(15),
	datemiseenservice varchar(15),
	proc_ordi varchar(25),
	ram_ordi varchar(25),
	taille_hdd_ordi varchar(25),
	nomservice varchar(20)
);
create table LOGICIEL (
	codelogiciel int,
	nomlogiciel varchar(45),
	editeurlogiciel varchar(25),
	caracteristiquelogiciel varchar(255)
);
create table SERVICE (
	nomservice varchar(20)
);

create table UTILISER (
	numEmploye int,
	codelogiciel int
);
create table INSTALLER (
	numordinateur int,
	codelogiciel int
);
alter table SERVICE add constraint pk_serv primary key (nomservice);
alter table LOGICIEL add constraint pk_log primary key (codelogiciel);
alter table EMPLOYE add constraint pk_emp primary key (numEmploye);
alter table ORDINATEUR add constraint pk_ordi primary key (numordinateur);
alter table EMPLOYE add constraint fk_emp_serv foreign key (nomservice) references SERVICE(nomservice);
alter table ORDINATEUR add constraint fk_ordi_serv foreign key (nomservice) references SERVICE(nomservice);
alter table UTILISER add constraint fk_util_log foreign key (codelogiciel) references LOGICIEL(codelogiciel);
alter table INSTALLER add constraint fk_inst_log foreign key (codelogiciel) references LOGICIEL(codelogiciel);
alter table UTILISER add constraint fk_util_emp foreign key (numemploye) references EMPLOYE(numEmploye);
alter table INSTALLER add constraint fk_inst_ordi foreign key (numordinateur) references ORDINATEUR(numordinateur);
alter table UTILISER add constraint pk_util primary key (numemploye,codelogiciel);
alter table INSTALLER add constraint pk_inst primary key (codelogiciel,numordinateur);
insert into SERVICE values ('info');
insert into SERVICE values ('sav');
insert into SERVICE values ('ventes');

insert into EMPLOYE (numEmploye,nomEmploye,prenomEmploye,nomservice) values (1,'Nezmar','Jean','info');
insert into EMPLOYE (numEmploye,nomEmploye,prenomEmploye,nomservice) values (2,'zeblouse','agathe','sav');
insert into EMPLOYE (numEmploye,nomEmploye,prenomEmploye,nomservice) values (3,'groisdanslacave','gedeon','ventes');
insert into ORDINATEUR (numordinateur,nomordinateur,datemiseenservice,proc_ordi,ram_ordi,taille_hdd_ordi,nomservice) values (1,'pc1','30/01/2017','8192','intel i7','2To','info');
insert into ORDINATEUR (numordinateur,nomordinateur,datemiseenservice,proc_ordi,ram_ordi,taille_hdd_ordi,nomservice) values (2,'pc2','30/01/2017','4096','intel i5','500Go','ventes');
insert into ORDINATEUR (numordinateur,nomordinateur,datemiseenservice,proc_ordi,ram_ordi,taille_hdd_ordi,nomservice) values (3,'pc3','30/01/2017','8192','AMD Athlon FX','1To','sav');
insert into LOGICIEL (codelogiciel,nomlogiciel,editeurlogiciel,caracteristiquelogiciel) values (1,'Acrobat Reader','Adobe','Lecteur PDF');
insert into LOGICIEL (codelogiciel,nomlogiciel,editeurlogiciel,caracteristiquelogiciel) values (2,'LibreOffice','Oracle','Suite Bureautique');
insert into LOGICIEL (codelogiciel,nomlogiciel,editeurlogiciel,caracteristiquelogiciel) values (3,'GIMP','GIMP Fundation','Retouche Images');

insert into UTILISER (numEmploye,codelogiciel) values (1,2);
insert into UTILISER (numEmploye,codelogiciel) values (1,3);
insert into UTILISER (numEmploye,codelogiciel) values (2,1);
insert into UTILISER (numEmploye,codelogiciel) values (2,2);
insert into UTILISER (numEmploye,codelogiciel) values (1,1);
insert into UTILISER (numEmploye,codelogiciel) values (3,1);
insert into UTILISER (numEmploye,codelogiciel) values (3,2);
insert into INSTALLER (numordinateur,codelogiciel) values (1,1);
insert into INSTALLER (numordinateur,codelogiciel) values (1,2);
insert into INSTALLER (numordinateur,codelogiciel) values (1,3);
insert into INSTALLER (numordinateur,codelogiciel) values (2,1);
insert into INSTALLER (numordinateur,codelogiciel) values (3,1);
insert into INSTALLER (numordinateur,codelogiciel) values (2,2);
insert into INSTALLER (numordinateur,codelogiciel) values (3,2);
