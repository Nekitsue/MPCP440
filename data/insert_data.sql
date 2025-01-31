WITH new_monster AS (
    INSERT INTO Monsters (name, type, weakness) 
    VALUES ('Rathalos', 'Flying Wyvern', 'Dragon') 
    RETURNING id
)
INSERT INTO ItemDrops (monster_id, item_name, drop_rate) 
VALUES 
((SELECT id FROM new_monster), 'Rathalos Scale', 40.00),
((SELECT id FROM new_monster), 'Rathalos Wing', 25.00),
((SELECT id FROM new_monster), 'Rathalos Plate', 10.00);