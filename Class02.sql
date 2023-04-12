DROP DATABASE IF EXISTS imdb;
CREATE DATABASE imdb;
use imdb;

CREATE TABLE Film(
   film_id int PRIMARY KEY NOT NULL auto_increment,
   title varchar(100),
   description varchar(255),
   release_year date
);

CREATE TABLE Actor(
   actor_id int PRIMARY KEY NOT NULL auto_increment,
   first_name varchar(30),
   last_name varchar(50)
);

CREATE TABLE Film_Actor(
   id int PRIMARY KEY NOT NULL auto_increment,
   actor_id int,
   film_id int
);

alter table Actor add last_update datetime;
alter table Film add last_update datetime;
alter table Film_Actor add FOREIGN KEY(actor_id) REFERENCES Actor(actor_id);
alter table Film_Actor add FOREIGN KEY(film_id) REFERENCES Film(film_id);

INSERT INTO Film (title, description, release_year, last_update)
VALUES ('The Godfather', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', '1972-03-24', NOW());
INSERT INTO Actor (first_name, last_name, last_update)
VALUES ('Marlon', 'Brando', NOW());
INSERT INTO Film_Actor (actor_id, film_id)
VALUES (1, 1);

