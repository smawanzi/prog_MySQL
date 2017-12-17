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

