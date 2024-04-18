INSERT INTO actors (name)
VALUES 
    ('Rodrigo Santoro'),
    ('Gerard Butler'),
    ('David Wenham'),
    ('Lena Headey');

INSERT INTO movie_genre (name)
VALUES 
    ('Ação'),
    ('Suspense'),
    ('Comédia'),
    ('Romance')

INSERT INTO movie_roles (name)
VALUES 
    ('Protagonista'),
    ('Antagonista'),
    ('Coadjuvantes');

INSERT INTO movies (name, year, movie_genre_id)
VALUES 
    ('300', '2007-03-09', 1),
    ('Invasão a casa branca', '2013-04-05', 1);

INSERT INTO movie_actors (character_name, actor_id, movie_id, movie_roles_id)
VALUES 
    ('Xerxes', 1, 1, 2),
    ('Rei Leonidas', 2, 1, 1),
    ('Dilios', 3, 1, 3),
    ('Rainha Gorgo', 4, 1, 3);

INSERT INTO dvd (disks, value, movie_id)
VALUES 
    (1, 14.00, 1),
    (2, 11.00, 2);

INSERT INTO clients (name, last_name, phone_number, address)
VALUES 
    ('Ricardo', 'Ronchini', '11 94455-3345', 'Rua São Paulo, 30, São Paulo - SP'),
    ('Amanda', 'Arq', '11 92345-3245', 'Rua São Paulo, 30, São Paulo - SP'),
    ('Francisco', 'Dev', '11 91252-3245', 'Rua Campestre, 32, São Paulo - SP'),
    ('Dev', 'Test', '11 92345-3452', 'Rua São Jose dos campos, 310, São Paulo - SP');

INSERT INTO movie_location (dvd_id, client_id)
VALUES 
    (1, 1),
    (2, 4);

INSERT INTO rental_registration (rental_date, return_date, client_id)
VALUES 
    ('2024-04-11 12:00:00', '2024-04-18 12:00:00', 1),
    ('2024-04-10 12:00:00', '2024-04-17 12:00:00', 2);


