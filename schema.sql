-- CREATE DATABASE join_us;

-- CREATE TABLE users (
-- 	email VARCHAR(255) PRIMARY KEY,
--     created_at TIMESTAMP DEFAULT NOW()
-- );



-- SELECT * FROM users;

-- INSERT INTO users(email) VALUES
-- ('firtemail@gmail.com'), ('secondemail@gmail.com')

-- DELETE FROM users;



-- SELECT 
-- 	DATE_FORMAT(created_at, "%b %D %Y") AS earliest_date
-- FROM 
-- 	users
-- ORDER BY
-- 	created_at ASC
-- LIMIT 1;





-- SELECT 
-- 	email, created_at
-- FROM 
-- 	users
-- ORDER BY
-- 	created_at ASC
-- LIMIT 1;


	

-- SELECT 
-- 	DATE_FORMAT(created_at, "%M") AS creation_month,
--     COUNT(*) AS count
-- FROM 
-- 	users
-- GROUP BY
-- 	creation_month
-- ORDER BY
-- 	count DESC;






-- SELECT
-- 	COUNT(*) AS yahoo_users
-- FROM
-- 	users
-- WHERE
-- 	email LIKE '%@yahoo.com';





-- SELECT
-- 	CASE
-- 		WHEN email LIKE '%@yahoo.com' THEN 'yahoo'
--         WHEN email LIKE '%@gmail.com' THEN 'gmail'
--         WHEN email LIKE '%@hotmail.com' THEN 'hotmail'
--         ELSE 'others'
--     END AS provider,
--     COUNT(*) AS total_users
-- FROM
-- 	users
-- GROUP BY
-- 	provider
-- ORDER BY
-- 	total_users DESC;
	










