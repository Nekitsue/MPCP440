# Monster Hunter Database Project

This project contains SQL scripts to create and manage a Monster Hunter database.

## Structure:
- \`schemas/create_tables.sql\` → Contains table creation scripts.
- \`schemas/alter_tables.sql\` → Holds schema modifications.
- \`data/insert_data.sql\` → Contains initial database entries.

## How to Use:
1. Clone the repository.
2. Run the SQL scripts in PostgreSQL or MySQL.
3. Add or modify data as needed.
4. Commit changes to github

## Github Commands Refresher
git clone https://github.com/nekitsue/MPCP440.git
cd MPCP440 (Open your gitbash to the correct folder)
pwd (Find the file path if you don't know where it is)

## Updating github with changes
git add .
git commit -m "What changes you made"
git push origin main (To push your changes onto the web for us to see.)
git pull origin main -Update your branch


Example SQL commands for adding monsters and there drops

INSERT INTO Monsters (name, type, weakness) 
VALUES 
('Rathalos', 'Flying Wyvern', 'Dragon'),
('Diablos', 'Flying Wyvern', 'Ice');


INSERT INTO ItemDrops (monster_id, item_name, drop_rate)
VALUES 
(1, 'Rathalos Scale', 40.00), 
(1, 'Rathalos Wing', 25.00), 
(1, 'Rathalos Plate', 10.00);

Query for database confirmation

SELECT m.name AS Monster, i.item_name AS ItemDrop, i.drop_rate
FROM ItemDrops i
JOIN Monsters m ON i.monster_id = m.id
WHERE m.name = 'Rathalos' (Replace Rathalos with any monster
ORDER BY i.drop_rate DESC;