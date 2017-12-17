1)//ajouter un souscripteur

delimiter |
drop procedure if exists ajoutSouscrit |
create procedure ajoutSouscrit(num integer, nom char(20), ville char(20), total decimal(10,0))

begin	
	insert into souscrit (num,nom,ville,total) values (num,nom,ville,total);
end
|

delimiter ;
call ajoutSouscrit(9,"BROGNIART","Paris",100000);
select * from souscrit;
show create procedure ajoutSouscrit;


2)//liste des souscripteurs ayant fait au moins un versement

delimiter |
drop procedure if exists NbSouscripteur|
create procedure NbSouscripteur
(borneInferieur int, borneSuperieur int)
begin
	
	 select num from verse where montant>borneInferieur and num in 
	(select num from verse where montant<borneSuperieur);

end |
delimiter ;
call NbSouscripteur(500,100);
//EN SQL

select num,nom,ville
from souscrit s
inner join verse v
on s.num = v.num
where montant < 100
and num
in (select num from verse where montant > 500);



3)//Abonné souscripteur

delimiter |
drop procedure if exists AbSouscripteur|
create procedure AbSouscripteur
(Dates dateTime)
begin
	select distinct nom,Dates from souscrit s inner join abonne a on a.num=s.num  where date_add(datedebut,interval duree month)>Dates;

	end |
delimiter ;
call AbSouscripteur("2017/06/05");

4)//Mettre à jour

delimiter |
drop procedure if exists MAJverse|
create procedure MAJverse
(nom char(20),pourcentage int)
begin
	update verse v inner join souscrit s on s.num=v.num set montant = montant +(montant*(pourcentage/100)) where s.nom=nom;

	end |
delimiter ;
call MAJverse("Dupond",10);
