USE codeup_test_db;

DROP TABLE IF EXISTS book;

CREATE TABLE books(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
title VARCHAR(250) NOT NULL,
author_first_name VARCHAR(50),
author_last_name VARCHAR(100) NOT NULL DEFAULT 'unknown',
genre VARCHAR(50),
description VARCHAR(255),
release_year INT(4),
PRIMARY KEY (id)
);

