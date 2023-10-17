select * from artiste

#Exo 1 Nom et année de naissance des artistes nés avant 1950.
select nom, annéenaiss from artiste as a
where a.annéenaiss < 1950;

select * from film
Exo 2 Titre de tous les drames.
select titre from film where genre='Drame';

select * from role
select * from artiste
Exo 3 Quels rôles a joué Bruce Willis.
select distinct nomrôle from role as r
inner join artiste as a
on a.idartiste=r.idacteur
where a.prénom = 'Bruce' and a.nom ='Willis'

select * from film
Exo 4 Qui est le réalisateur de Memento.
select idréalisateur from film where titre= 'Memento'

select * from notation
Exo 5 Quelles sont les notes obtenues par le film Fargo
select note,titre from notation as n
inner join film as f 
on n.idfilm=f.idfilm
where titre='Fargo'

select * from role
select * from artiste
Exo 6 Qui a joué le rôle de Chewbacca?
select distinct nom, prénom from artiste as a
inner join role as r on a.idartiste = r.idacteur where nomrôle='Chewbacca'

select * from film
select * from artiste
select * from role
Exo 7 Dans quels films Bruce Willis a-t-il joué le rôle de John McClane ?
select titre,r.nomrôle from film as f 
inner join role as r on f.idfilm=r.idfilm
inner join artiste as a on a.idartiste=r.idacteur where r.nomrôle='John McClane'


select * from film
select * from artiste
select * from role
Exo 8 Nom des acteurs de 'Sueurs froides'
select nom,titre from artiste as a 
inner join role as r on a.idartiste=r.idacteur
inner join film as f on f.idfilm=r.idfilm
where titre='Sueurs froides'

select * from internaute
select * from notation
select * from film
#Exo 9 Quelles sont les films notés par l'internaute Prénom 0 Nom0'
select a.titre,i.prénom, i.nom from film as a
inner join notation as n on a.idfilm=n.idfilm
inner join internaute as i on n.email=i.email
where prénom='Prénom0' and nom='Nom0'

select * from film
select * from artiste
select * from role
Exo 10 Films dont le réalisateur est Tim Burton, et l’un des acteurs Johnny Depp.
select nom,titre,idréalisateur from artiste as a 
inner join role as r on a.idartiste=r.idacteur
inner join film as f on f.idfilm=r.idfilm
where prénom='Johnny' and nom='Depp'

select * from artiste
select * from role
select * from film
Exo 11 Titre des films dans lesquels a joué ́Woody Allen. Donner aussi le rôle.
select titre,prénom,nom from film as f
inner join role as r on f.idfilm=r.idfilm
inner join artiste as a on a.idartiste=r.idacteur
where prénom='Woody' and nom='Allen'

select * from role
select * from film
Exo 12 Quel metteur en scène a tourné dans ses propres films ? Donner le nom, le rôle et le titre des films.
select titre,prénom,nom from film as f
inner join role as r on f.idfilm=r.idfilm

select * from film
select * from role
select * from artiste
Exo 13 Titre des films de Quentin Tarantino dans lesquels il n’a pas joué
select titre,idréalisateur,prénom,nom from film as f
inner join role as r on f.idfilm=r.idfilm
inner join artiste as a on a.idartiste=r.idacteur
where prénom='Quentin' and nom='Tarantino'

Exo 14 Quel metteur en scène a tourné ́en tant qu’acteur ? Donner le nom, le rôle et le titre des films dans lesquels cet artiste a joué.
 

Exo 15 Donnez les films de Hitchcock sans James Stewart



Exo 16 Dans quels films le réalisateur a-t-il le même prénom que l’un des interprètes ? (titre, nom du réalisateur, nom de l’interprète). Le réalisateur et l’interprète ne doivent pas être la même personne.



Exo 17 Les films sans rôle



Exo 18 Quelles sont les films non notés par l'internaute Prénom1 Nom1'



Exo 19 Quels acteurs n’ont jamais réalisé de film ?



Exo 20 Quelle est la moyenne des notes de Memento



Exo 21 id, nom et prénom des réalisateurs, et nombre de films qu’ils ont tournés.



Exo 22 Nom et prénom des réalisateurs qui ont tourné au moins deux films.



Exo 23 Quels films ont une moyenne des notes supérieure à 7
select * from notemoyenne
where moyenne > 7;