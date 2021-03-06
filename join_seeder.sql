DROP DATABASE IF EXISTS join_test_db;
CREATE DATABASE join_test_db;

USE join_test_db;

CREATE TABLE roles (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT,
   name VARCHAR(100) NOT NULL,
   PRIMARY KEY (id)
);
CREATE TABLE users (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT,
   name VARCHAR(100) NOT NULL,
   email VARCHAR(100) NOT NULL,
   role_id INT UNSIGNED DEFAULT NULL,
   PRIMARY KEY (id),
   FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null),
('jason','jason@example.com', 2),
('johnny','johnny@example.com',2),
('mark','mark@example.com',2),
('chris','chris@example.com',null);

select * from users;

SELECT u.name, r.name
FROM users AS u JOIN roles AS r
ON r.id = u.role_id;

SELECT users.name, roles.name
FROM users
LEFT JOIN roles
ON roles.id = users.role_id;

SELECT users.name, roles.name
FROM users
RIGHT JOIN roles
ON roles.id = users.role_id;

SELECT users.name, roles.name
from users JOIN roles
ON users.role_id = roles.id;

describe users;