Directions: Write a sql query or sql queries that can answer the following questions

What is each pokemon's primary type?
SELECT name, primary_type
FROM pokemons;

SELECT p.name AS name, t.type AS primary_type
FROM pokemons p
JOIN types t ON p.primary_name_id = t.id;

SELECT p.name AS pokemon_name, t.name
FROM pokemons p
JOIN types t ON p.primary_type = t.id;

What is Rufflet's secondary type?

SELECT p.name AS pokemons_name, t_primary.name AS primary_type, t_secondary.name AS secondary_type
FROM pokemons p
JOIN types t_primary ON p.primary_type = t_primary.id
LEFT JOIN types t_secondary ON p.secondary_type = t_secondary.id
WHERE p.name = 'Rufflet';

Select p.name,t.name From pokemon

What are the names of the pokemon that belong to the trainer with trainerID 303?

SELECT p.name FROM pokemons
    -> p
    -> JOIN pokemon_trainer pt
    -> ON p.id =pt.pokemon_id
    -> WHERE pt.trainerID =303;

Select p.name

How many pokemon have a secondary type Poison
SELECT COUNT(*)
FROM pokemons p
WHERE secondary_type =7;

SELECT COUNT(*)
FROM pokemons
LEFT JOIN types ON pokemons.secondary_type=types.id
WHERE types.name='Poison';

What are all the primary types and how many pokemon have that type?

SELECT COUNT(t.name),name
FROM types t
right join types t on p.primary_type

SELECT types.name, COUNT(*)
 FROM types
 LEFT JOIN pokemons ON pokemons.primary_type=types.id GROUP BY types.name;

How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer


SELECT trainers.trainername, COUNT(*)
FROM pokemon_trainer
 LEFT JOIN trainers ON trainers.trainerID=pokemon_trainer.pokemon_id
 WHERE pokemon_trainer.pokelevel>= 100;

How many pokemon only belong to one trainer and no other?

SELECT trainers.trainername,COUNT(*)
FROM pokemon_trainer
LEFT JOIN trainers ON
WHERE

SELECT p.name 'pokemon', Count(*) 'Count'
from pokemons p
JOIN pokemon_trainer pt
ON p.id = pt.pokemon_id
GROUP BY p.id
HAVING COUNT(*) = 1;

