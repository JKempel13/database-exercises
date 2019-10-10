USE codeup_test_db;
SELECT name AS 'The name of all albums by Pink Floyd.' from albums WHERE artist = 'Pink FLoyd';
SELECT release_date AS 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' from albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
SELECT genre AS 'The genre for Nevermind' from albums WHERE name = 'Nevermind';
SELECT name AS 'Which albums were released in the 1990s' from albums WHERE release_date BETWEEN 1990 AND 1999;
SELECT name AS 'Which albums had less than 20 million certified sales' from albums WHERE sales < 20;
SELECT name AS 'All the albums with a genre of "Rock"' from albums WHERE genre LIKE '%rock%';