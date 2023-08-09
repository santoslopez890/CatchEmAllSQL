Part 2: Simple Selects and Counts
Directions: Write a sql query or sql queries that can answer the following questions

1. What are all the types of pokemon that a pokemon can have?

select name from types;

2. What is the name of the pokemon with id 45?
SELECT name
FROM Pokemon
WHERE id = 45;

EEVEE

3. How many pokemon are there?

SELECT COUNT(*)
FROM pokemons;

656

4. How many types are there?

SELECT COUNT(*)
FROM types;

18

5. How many pokemon have a secondary type?

SELECT COUNT(*)
FROM pokemons
WHERE secondary_type IS NOT NULL;

316