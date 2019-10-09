USE codeup_test_db;

CREATE TABLE IF NOT EXISTS albums (
  id INT UNSIGNED AUTO_INCREMENT,
  PRIMARY KEY (id),
  artist VARCHAR (255),
  name VARCHAR (255),
  release_date INT,
  sales DECIMAL,
  genre VARCHAR (255)
);