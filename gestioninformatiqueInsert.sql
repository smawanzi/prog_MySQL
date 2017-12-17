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




