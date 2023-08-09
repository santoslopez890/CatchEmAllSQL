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

What are the names of the pokemon that belong to the trainer with trainerID 303?



How many pokemon have a secondary type Poison


What are all the primary types and how many pokemon have that type?


How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer


How many pokemon only belong to one trainer and no other?