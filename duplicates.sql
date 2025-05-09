CREATE TABLE duplicates
(model_id INT PRIMARY KEY,
model_name VARCHAR(100),
color VARCHAR(100),
brand VARCHAR(100)
)

INSERT INTO duplicates (model_id, model_name, color, brand)
VALUES
(1, 'leaf', 'black', 'nissan'),
(2, 'leaf', 'black', 'nissan'),
(3, 'Model S', 'black', 'tesla'),
(4, 'Model X', 'white', 'tesla'),
(5, 'Alto', 'white', 'Maruti'),
(6, 'Alto', 'white', 'Maruti'),
(7, 'Alto', 'black', 'Maruti')

SELECT * FROM duplicates

-- Remove Duplicate Records

-- first select unique records with min model_id
SELECT MIN(model_id), model_name, color, brand FROM duplicates
GROUP BY model_name, color, brand

-- Delete all the duplicates keeping unique records with min model_id
DELETE FROM duplicates
WHERE model_id NOT IN (SELECT MIN(model_id) FROM duplicates
GROUP BY model_name, color, brand)

SELECT * FROM duplicates