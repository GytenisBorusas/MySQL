

-- 1. finding 5 oldest users
-- SELECT 
--     *
-- FROM
--     users
-- ORDER BY created_at ASC
-- LIMIT 5;


-- 2. Most popular registration day
-- SELECT
--     DAYNAME(created_at) AS week_day,
--     COUNT(DAYNAME(created_at)) AS weekday_count
-- FROM
-- 	users
-- GROUP BY week_day
-- ORDER BY weekday_count DESC;


-- 3. Idenity inactive users (users with no photos)
-- SELECT 
--     username
-- FROM
--     users
--         LEFT JOIN
--     photos ON users.id = photos.user_id
-- WHERE
--     image_url IS NULL;


-- 4. The most liked picture
-- SELECT 
--     username,
--     photos.id,
--     photos.image_url, 
--     COUNT(*) AS total
-- FROM photos
-- INNER JOIN likes
--     ON likes.photo_id = photos.id
-- INNER JOIN users
--     ON photos.user_id = users.id
-- GROUP BY photos.id
-- ORDER BY total DESC
-- LIMIT 1;



-- 5. Calculate avg number of photos per user
-- SELECT 
--     AVG(total_pics_per_user) AS avg_pics_per_user
-- FROM (
--     SELECT 
--         users.username,
--         COUNT(*) AS total_pics_per_user
--     FROM
--         users
--         JOIN
--         photos ON users.id = photos.user_id
--     GROUP BY 
--         users.username
-- 	ORDER BY total_pics_per_user DESC
-- ) AS user_picture_counts;

-- Other simpler solution
-- SELECT (SELECT Count(*) 
--         FROM   photos) / (SELECT Count(*) 
--                           FROM   users) AS avg; 


-- 6. 5 most common hashtags
-- SELECT 
--     tag_name, 
--     COUNT(*) AS times_used
-- FROM
--     tags
--         JOIN
--     photo_tags ON tags.id = photo_tags.tag_id
-- GROUP BY tag_name
-- ORDER BY times_used DESC
-- LIMIT 5;



-- 7. finding bots - users who have liked every photo
-- SELECT username, 
--        Count(*) AS num_likes 
-- FROM   users 
--        INNER JOIN likes 
--                ON users.id = likes.user_id 
-- GROUP  BY likes.user_id 
-- HAVING num_likes = (SELECT Count(*) 
--                     FROM   photos);









































































































































































