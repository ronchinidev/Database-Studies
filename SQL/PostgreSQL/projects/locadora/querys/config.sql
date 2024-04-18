CREATE DATABASE IF NOT EXISTS video_store;

CREATE TABLE "dvd" (
  "id" serial PRIMARY KEY,
  "disks" int,
  "value" money,
  "movie_id" int NOT NULL
);

CREATE TABLE "movies" (
  "id" serial PRIMARY KEY,
  "name" varchar,
  "year" date,
  "movie_genre_id" int NOT NULL
);

CREATE TABLE "movie_genre" (
  "id" serial PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "actors" (
  "id" serial PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "movie_actors" (
  "id" serial PRIMARY KEY,
  "character_name" varchar,
  "actor_id" int NOT NULL,
  "movie_id" int NOT NULL,
  "movie_roles_id" int NOT NULL
);

CREATE TABLE "movie_roles" (
  "id" serial PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "clients" (
  "id" serial PRIMARY KEY,
  "name" varchar,
  "last_name" varchar,
  "phone_number" varchar,
  "address" varchar
);

CREATE TABLE "movie_location" (
  "id" serial PRIMARY KEY,
  "dvd_id" int REFERENCES dvd(id) NOT NULL,
  "client_id" int NOT NULL
);

CREATE TABLE "rental_registration" (
  "id" serial PRIMARY KEY,
  "rental_date" timestamp,
  "return_date" timestamp,
  "returned_in" timestamp,
  "client_id" int NOT NULL
);

ALTER TABLE "dvd" ADD FOREIGN KEY ("movie_id") REFERENCES "movies" ("id");

ALTER TABLE "movies" ADD FOREIGN KEY ("movie_genre_id") REFERENCES "movie_genre" ("id");

ALTER TABLE "movie_actors" ADD FOREIGN KEY ("actor_id") REFERENCES "actors" ("id");

ALTER TABLE "movie_actors" ADD FOREIGN KEY ("movie_id") REFERENCES "movies" ("id");

ALTER TABLE "movie_actors" ADD FOREIGN KEY ("movie_roles_id") REFERENCES "movie_roles" ("id");

ALTER TABLE "movie_location" ADD FOREIGN KEY ("dvd_id") REFERENCES "dvd" ("id");

ALTER TABLE "movie_location" ADD FOREIGN KEY ("client_id") REFERENCES "clients" ("id");

ALTER TABLE "rental_registration" ADD FOREIGN KEY ("client_id") REFERENCES "clients" ("id");
