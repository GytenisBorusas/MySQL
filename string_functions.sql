-- CREATE DATABASE book_shop;
-- USE book_shop;

-- CREATE TABLE books 
-- 	(
-- 		book_id INT NOT NULL AUTO_INCREMENT,
-- 		title VARCHAR(100),
-- 		author_fname VARCHAR(100),
-- 		author_lname VARCHAR(100),
-- 		released_year INT,
-- 		stock_quantity INT,
-- 		pages INT,
-- 		PRIMARY KEY(book_id)
-- 	);

-- INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
-- VALUES
-- ('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
-- ('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
-- ('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
-- ('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
-- ('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
-- ('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
-- ('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
-- ('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
-- ('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
-- ('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
-- ('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
-- ("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
-- ('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
-- ('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
-- ('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
-- ('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);


-- SELECT * FROM books;


-- SELECT CONCAT(author_fname, author_lname) as author_name FROM books;


-- SELECT SUBSTRING('Hello World', 1, 4);
--  
-- SELECT SUBSTRING('Hello World', 7);
--  
-- SELECT SUBSTRING('Hello World', -3);
--  
-- SELECT SUBSTRING(title, 1, 10) AS 'short title' FROM books;
--  
-- SELECT SUBSTR(title, 1, 10) AS 'short title' FROM books;






-- SELECT 
--     CONCAT(SUBSTRING(title, 1, 10), '...') AS 'short title'
-- FROM
--     books;





-- SELECT REPLACE('Hello World', 'Hell', '%$#@');
--  
-- SELECT REPLACE('Hello World', 'l', '7');
--  
-- SELECT REPLACE('Hello World', 'o', '0');
--  
-- SELECT REPLACE('HellO World', 'o', '*');
--  
-- SELECT
--   REPLACE('cheese bread coffee milk', ' ', ' and ');
--  
-- SELECT REPLACE(title, 'e ', '3') FROM books;
--  
-- SELECT REPLACE(title, ' ', '-') FROM books;
























-- SELECT REVERSE('Hello World');
--  
-- SELECT REVERSE('meow meow');
--  
-- SELECT REVERSE(author_fname) FROM books;
--  
-- SELECT CONCAT('woof', REVERSE('woof'));
--  
-- SELECT CONCAT(author_fname, REVERSE(author_fname)) FROM books;








-- SELECT CHAR_LENGTH('Hello World');
--  
-- SELECT CHAR_LENGTH(title) as length, title FROM books;
--  
-- SELECT author_lname, CHAR_LENGTH(author_lname) AS 'length' FROM books;
--  
-- SELECT CONCAT(author_lname, ' is ', CHAR_LENGTH(author_lname), ' characters long') FROM books;





-- SELECT CONCAT(
-- 				'I LOVE ',
-- 				UCASE(title),
--                 ' !!!'                
-- 			)
-- FROM books;


-- SELECT UPPER('Hello World');
--  
-- SELECT LOWER('Hello World');
--  
-- SELECT UPPER(title) FROM books;
--  
-- SELECT CONCAT('MY FAVORITE BOOK IS ', UPPER(title)) FROM books;
--  
-- SELECT CONCAT('MY FAVORITE BOOK IS ', LOWER(title)) FROM books;





-- SELECT INSERT('Hello Bobby', 6, 0, 'There'); 
--  
-- SELECT LEFT('omghahalol!', 3);
--  
-- SELECT RIGHT('omghahalol!', 4);
--  
-- SELECT REPEAT('ha', 4);
--  
-- SELECT TRIM('  pickle  ');






-- SELECT UPPER(REVERSE('Why does my cat look at me with such hatred?'))

-- SELECT REPLACE(title, ' ', '->') AS title FROM books;

-- SELECT author_lname as forwards, REVERSE(author_lname) as backwards FROM books;

-- SELECT UPPER(CONCAT(author_fname, ' ', author_lname)) AS 'full name in caps' FROM books;

-- SELECT CONCAT(title, ' was released in ', released_year) as blurb FROM books;

-- SELECT title, (CHAR_LENGTH(title)) AS 'character count' FROM books;

-- SELECT 
-- 	CONCAT(LEFT(title, 10), '...') as 'short title',
--     CONCAT(author_lname, ',', author_fname) as author,
--     CONCAT(stock_quantity, ' in stock') as quantity
-- FROM books;

-- SELECT * from BOOKS;
















-- INSERT INTO books
--     (title, author_fname, author_lname, released_year, stock_quantity, pages)
--     VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
--            ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
--            ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);

-- SELECT * FROM books;

-- SELECT DISTINCT author_lname FROM books;

-- SELECT author_lname FROM books;
--  
-- SELECT DISTINCT author_lname FROM books;
--  
-- SELECT author_fname, author_lname FROM books;
--  
-- SELECT DISTINCT CONCAT(author_fname,' ', author_lname) FROM books;
--  
-- SELECT DISTINCT author_fname, author_lname FROM books;





-- SELECT * FROM books
-- ORDER BY author_lname;
--  
-- SELECT * FROM books
-- ORDER BY author_lname DESC;
--  
-- SELECT * FROM books
-- ORDER BY released_year;




-- SELECT book_id, author_fname, author_lname, pages
-- FROM books ORDER BY 2 desc;
--  
-- SELECT book_id, author_fname, author_lname, pages
-- FROM books ORDER BY author_lname, author_fname;




-- SELECT title FROM books LIMIT 3;
--  
-- SELECT title FROM books LIMIT 1;
--  
-- SELECT title FROM books LIMIT 10;
--  
-- SELECT * FROM books LIMIT 1;
--  
-- SELECT title, released_year FROM books 
-- ORDER BY released_year DESC LIMIT 5;
--  
-- SELECT title, released_year FROM books 
-- ORDER BY released_year DESC LIMIT 1;
--  
-- SELECT title, released_year FROM books 
-- ORDER BY released_year DESC LIMIT 14;
--  
-- SELECT title, released_year FROM books 
-- ORDER BY released_year DESC LIMIT 0,5;
--  
-- SELECT title, released_year FROM books 
-- ORDER BY released_year DESC LIMIT 0,3;
--  
-- SELECT title, released_year FROM books 
-- ORDER BY released_year DESC LIMIT 1,3;
--  
-- SELECT title, released_year FROM books 
-- ORDER BY released_year DESC LIMIT 10,1;
--  
-- SELECT * FROM tbl LIMIT 95,18446744073709551615;
--  
-- SELECT title FROM books LIMIT 5;
--  
-- SELECT title FROM books LIMIT 5, 123219476457;
--  
-- SELECT title FROM books LIMIT 5, 50;









-- SELECT title, author_fname, author_lname, pages 
-- FROM books
-- WHERE author_fname LIKE '%da%';
--  
-- SELECT title, author_fname, author_lname, pages 
-- FROM books
-- WHERE title LIKE '%:%';
--  
-- SELECT * FROM books
-- WHERE author_fname LIKE '____';
--  
-- SELECT * FROM books
-- WHERE author_fname LIKE '_a_';









-- To select books with '%' in their title:
-- SELECT * FROM books
-- WHERE title LIKE '%\%%';
--  
-- To select books with an underscore '_' in title:
-- SELECT * FROM books
-- WHERE title LIKE '%\_%';





-- SELECT title FROM books WHERE title LIKE '%stories%';
-- SELECT * FROM books;
-- SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;
-- SELECT CONCAT(title,' - ', released_year) AS summary FROM books ORDER BY released_year DESC LIMIT 3;
-- SELECT title, author_lname FROM books WHERE author_lname LIKE '% %';
-- SELECT title, released_year, stock_quantity FROM books ORDER BY stock_quantity, released_year DESC LIMIT 3;
-- SELECT title, author_lname FROM books ORDER BY author_lname, title;
-- SELECT UPPER(CONCAT('My favorite author is ',author_fname,' ', author_lname)) AS yell FROM books ORDER BY author_lname;


































