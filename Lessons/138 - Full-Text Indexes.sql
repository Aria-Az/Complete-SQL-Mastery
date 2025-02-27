-- Full-Text Indexes 

-- run create-db-blog.sql file

USE sql_blog;
SELECT * FROM posts
WHERE title LIKE '%react redux%' OR body LIKE '%react redux%';  -- not helpfull for building search engines


CREATE FULLTEXT INDEX idx_title_body ON posts (title, body);


USE sql_blog;
SELECT * , MATCH(title,body) AGAINST('react redux')  -- closer to 1 means more relevance but closer to 0 means less relevance (relevance score)
FROM posts
-- WHERE MATCH(title,body) AGAINST('react redux');
-- WHERE MATCH(title,body) AGAINST('react -redux +form' IN BOOLEAN MODE);  -- show results that have react but not redux,also must have form
WHERE MATCH(title,body) AGAINST('"handling a form"' IN BOOLEAN MODE); -- searching for a full exact phrase
