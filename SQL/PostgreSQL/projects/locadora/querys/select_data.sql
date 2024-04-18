-- todos os filmes de um determinado ator
SELECT b.name as movie, b.year, d.name as genre, a.name as actor, c.character_name, e.name as roles   
FROM actors a, movies b, movie_actors c, movie_genre d, movie_roles e
WHERE a.name = 'Gerard Butler'
AND d.id = b.movie_genre_id
AND c.actor_id = a.id
AND c.movie_roles_id = e.id;

-- todos filmes alugados por cliente
select a.name as client, d.name as movie, e.rental_date, e.return_date
FROM clients a, movie_location b, dvd c, movies d, rental_registration e
WHERE a.id = 1
AND b.client_id = 1
AND b.dvd_id = c.id
AND c.movie_id = d.id
AND e.client_id = a.id

-- registro de locaçao do cliente (valor total e quantidade de dvd`s alugados)
select 
    id, 
    (select sum(a.value) from dvd a inner join movie_location b on a.id = b.dvd_id
        inner join clients c on b.client_id = c.id
        where c.id = 1
    ) as preco,
    (select count(b) 
        from clients a inner join movie_location b 
        on a.id = b.client_id
        where a.id = 1
    ) as quatity_movies_location
from rental_registration
where client_id = 1;

-- preço total
select sum(a.value)
from dvd a inner join movie_location b
on a.id = b.dvd_id
inner join clients c
on b.client_id = c.id
where c.id = 1

-- quantidade de locações
select count(b) 
from clients a inner join movie_location b 
on a.id = b.client_id
where a.id = 1