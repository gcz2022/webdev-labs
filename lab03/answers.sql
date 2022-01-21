-- Exercise 1 (done for you):
SELECT * FROM users;



-- Exercise 2 (done for you):
SELECT id, first_name, last_name 
FROM users;



-- Exercise 3

SELECT id, first_name, last_name 
FROM users
ORDER BY last_name;


-- Exercise 4

SELECT id, image_url, user_id
FROM posts
WHERE user_id=26;


-- Exercise 5

SELECT id, image_url, user_id
FROM posts
WHERE user_id=26 or user_id=12;


-- Exercise 6

SELECT count(*) from posts;


-- Exercise 7

SELECT user_id, count(*) count
FROM comments
GROUP BY user_id
ORDER BY count desc;


-- Exercise 8

SELECT posts.id, posts.image_url, posts.user_id, users.username, users.first_name, users.last_name
FROM posts
INNER JOIN users
ON posts.user_id=users.id
WHERE user_id=26 or user_id=12;


-- Exercise 9

SELECT posts.id, posts.pub_date, posts.user_id as following_id
FROM posts
INNER JOIN following
on following.following_id=posts.user_id
WHERE following.user_id=26;


-- Exercise 10



-- Exercise 11

INSERT INTO bookmarks(post_id, user_id)
SELECT posts.id as post_id, user_id
FROM posts
WHERE posts.id=219 or posts.id=220 or posts.id=221;



-- Exercise 12

DELETE FROM bookmarks WHERE (post_id, user_id) in
(SELECT posts.id as post_id, user_id
FROM posts
WHERE posts.id=219 or posts.id=220 or posts.id=221);


-- Exercise 13

UPDATE users
SET email='cyoung2022@gmail.com'
WHERE first_name='Cody';


-- Exercise 14
