CREATE TABLE Monsters (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    type VARCHAR(50),
    weakness VARCHAR(50)
); 

CREATE TABLE ItemDrops (
    id SERIAL PRIMARY KEY,
    monster_id INT REFERENCES Monsters(id) ON DELETE CASCADE,
    item_name VARCHAR(100) NOT NULL,
    drop_rate DECIMAL(5,2) CHECK (drop_rate BETWEEN 0 AND 100) -- Drop rate as a percentage
);