-- CREATE TABLE cats (
--     cat_id INT AUTO_INCREMENT,
--     name VARCHAR(100),
--     breed VARCHAR(100),
--     age INT,
--     PRIMARY KEY (cat_id)
-- ); 



-- INSERT INTO cats(name, breed, age) 
-- VALUES ('Ringo', 'Tabby', 4),
--        ('Cindy', 'Maine Coon', 10),
--        ('Dumbledore', 'Maine Coon', 11),
--        ('Egg', 'Persian', 4),
--        ('Misty', 'Tabby', 13),
--        ('George Michael', 'Ragdoll', 9),
--        ('Jackson', 'Sphynx', 7);



-- SELECT name, breed FROM cats WHERE age=4;

-- SELECT * FROM cats WHERE age=4;

-- SELECT cat_id FROM cats;

-- SELECT name, age FROM cats WHERE breed='Tabby';

-- SELECT cat_id, age FROM cats WHERE cat_id=age;

-- SELECT cat_id, age FROM cats WHERE cat_id=age 






-- SELECT cat_id as ID, name FROM cats;



-- UPDATE cats SET breed='Shorthair' WHERE breed='Tabby';

-- UPDATE cats SET age=14 WHERE name='Misty';



-- SELECT * FROM cats WHERE breed='Maine Coon';

-- UPDATE cats SET name='Jack' WHERE name='Jackson';
-- UPDATE cats SET breed='British Shorthair' WHERE name='Ringo';
-- UPDATE cats SET age=12 WHERE breed='Maine Coon';

-- SELECT * FROM cats;



-- DELETE FROM cats WHERE age=4;
-- DELETE FROM cats WHERE age=cat_id;
-- DELETE FROM cats;













-- CREATE DATABASE shirts_db;
-- USE shirts_db;

-- CREATE TABLE shirts (
-- 	shirt_id INT auto_increment,
--     article VARCHAR(50),
--     color VARCHAR(50),
--     shirt_size VARCHAR(5),
--     last_worn INT,
--     PRIMARY KEY(shirt_id)
-- );

-- DESC shirts;
-- SELECT * FROM shirts;

-- INSERT INTO shirts (article, color, shirt_size, last_worn)
-- VALUES 
-- 	('t-shirt', 'white', 'S', 10),
-- 	('t-shirt', 'green', 'S', 200),
-- 	('polo shirt', 'black', 'M', 10),
-- 	('tank top', 'blue', 'S', 50),
-- 	('t-shirt', 'pink', 'S', 0),
-- 	('polo shirt', 'red', 'M', 5),
-- 	('tank top', 'white', 'S', 200),
-- 	('tank top', 'blue', 'M', 15);

-- SELECT * FROM shirts;





-- INSERT INTO shirts (article, color, shirt_size, last_worn)
-- VALUES 
-- 	('polo shirt', 'purple', 'M', 50);

-- SELECT * FROM shirts;





-- SELECT article, color FROM shirts;

-- SELECT article, color, shirt_size, last_worn FROM shirts WHERE shirt_size='M';

-- SELECT * FROM shirts;
-- SELECT * FROM shirts WHERE article='polo shirt';
-- UPDATE shirts SET shirt_size='L' WHERE article='polo shirt';
-- SELECT * FROM shirts;



-- SELECT * FROM shirts WHERE last_worn='15';
-- UPDATE shirts SET last_worn='0' WHERE last_worn='15';
-- SELECT * FROM shirts;

-- SELECT * FROM shirts WHERE color='white';
-- UPDATE shirts SET shirt_size='XS', color='off white' WHERE color='white';
-- SELECT * FROM shirts

-- SELECT * FROM shirts WHERE last_worn=200;
-- DELETE FROM shirts WHERE last_worn=200;
-- SELECT * FROM shirts

-- SELECT * FROM shirts WHERE article='tank top';
-- DELETE FROM shirts WHERE article='tank top';
-- SELECT * FROM shirts

-- SELECT * FROM shirts;
-- DELETE FROM shirts;
-- SELECT * FROM shirts

DELETE shirts FROM shirts_db;














