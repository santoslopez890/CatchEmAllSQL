Select p.name  ,
        t.trainername , pt.pokelevel  ,tp.name , ts.name
FROM pokemons p
JOIN pokemon_trainer pt ON p.id = pt.pokemon_id
JOIN trainers t ON pt.trainerID = t.trainerID
JOIN types tp ON p.primary_type = tp.id
LEFT JOIN types ts ON p.secondary_type = ts.id
ORDER BY pt.pokelevel DESC;