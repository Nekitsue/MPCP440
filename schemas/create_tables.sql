CREATE TABLE Monsters (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    type VARCHAR(50),
    weakness VARCHAR(50)
);

CREATE TABLE ItemDrops (
    id INT IDENTITY(1,1) PRIMARY KEY,  
    monster_id INT NOT NULL,           
    item_name VARCHAR(100) NOT NULL,
    drop_rate DECIMAL(5,2) CHECK (drop_rate BETWEEN 0 AND 100), 
    FOREIGN KEY (monster_id) REFERENCES Monsters(id) ON DELETE CASCADE
);