USE codeup_test_db;

SELECT name AS 'All albums in your table.' from albums;
SELECT name AS 'All albums released before 1980' from albums WHERE release_date < 1980;
SELECT name AS 'All albums by Michael Jackson' from albums WHERE artist = 'Michael Jackson';

UPDATE albums SET sales = sales * 10;
SELECT * from albums;
-- Move all the albums before 1980 back to the 1800s.
UPDATE albums SET release_date = release_date - 100 WHERE release_date < 1980;
SELECT * from albums WHERE release_date < 1980;
-- Change 'Michael Jackson' to 'Peter Jackson'
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT * from albums WHERE artist = 'Peter Jackson';