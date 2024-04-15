--- 15-04-2024 19:53:57
--- SQLite
CREATE TABLE item_bought (
    buyer TEXT NOT NULL,
    item TEXT NOT NULL
);

INSERT INTO item_bought (buyer, item) VALUES
('Abdul', 'iPhone'),
('Budi', 'Samsung'),
('Charlie', 'Realme'),
('Dimas', 'Realme'),
('Erik', 'Samsung'),
('Fikri', 'Realme');

--- 15-04-2024 19:54:05
--- SQLite
SELECT item
FROM item_bought
GROUP BY item
HAVING COUNT(item) != (SELECT COUNT(item) FROM item_bought GROUP BY item ORDER BY COUNT(item) DESC LIMIT 1)
AND COUNT(item) != (SELECT COUNT(item) FROM item_bought GROUP BY item ORDER BY COUNT(item) ASC LIMIT 1);

--- 15-04-2024 19:54:12
--- SQLite
INSERT INTO item_bought (buyer, item) VALUES
('Erik', 'Samsung'),
('Fikri', 'Realme'),
('Gerry', 'Huawei'),
('Hans', 'Huawei'),
('Ihsan', 'Huawei'),
('Jerome', 'Realme');

--- 15-04-2024 19:54:19
--- SQLite
SELECT DISTINCT item
FROM item_bought
GROUP BY item
HAVING COUNT(item) != (SELECT COUNT(item) FROM item_bought GROUP BY item ORDER BY COUNT(item) DESC LIMIT 1)
AND COUNT(item) != (SELECT COUNT(item) FROM item_bought GROUP BY item ORDER BY COUNT(item) ASC LIMIT 1);

--- 15-04-2024 19:54:25
--- SQLite
INSERT INTO item_bought (buyer, item) VALUES
('Kevin', 'Huawei');

--- 15-04-2024 19:54:32
--- SQLite
SELECT DISTINCT item
FROM item_bought
GROUP BY item
HAVING COUNT(item) != (SELECT COUNT(item) FROM item_bought GROUP BY item ORDER BY COUNT(item) DESC LIMIT 1)
AND COUNT(item) != (SELECT COUNT(item) FROM item_bought GROUP BY item ORDER BY COUNT(item) ASC LIMIT 1);

--- 15-04-2024 19:54:43
--- SQLite
INSERT INTO item_bought (buyer, item) VALUES
('Kevin', 'Huawei');

--- 15-04-2024 19:54:47
--- SQLite
SELECT DISTINCT item
FROM item_bought
GROUP BY item
HAVING COUNT(item) != (SELECT COUNT(item) FROM item_bought GROUP BY item ORDER BY COUNT(item) DESC LIMIT 1)
AND COUNT(item) != (SELECT COUNT(item) FROM item_bought GROUP BY item ORDER BY COUNT(item) ASC LIMIT 1);

