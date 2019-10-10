USE codeup_test_db;

-- Albums released after 1991
SELECT name AS 'Albums released after 1991' from albums WHERE release_date > 1991;
DELETE from albums WHERE release_date > 1991;
-- Albums with the genre 'disco'
SELECT name AS 'Albums with the genre ''disco''' from albums WHERE genre = 'disco';
DELETE from albums WHERE genre = 'disco';
-- Albums by 'Eagles'
SELECT name AS 'Albums by ''Eagles''' from albums WHERE artist = 'Eagles';
DELETE from albums WHERE artist = 'Eagles';