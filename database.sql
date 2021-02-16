CREATE TABLE user (
id INT NOT NULL AUTO_INCREMENT,
username VARCHAR(30) NOT NULL,
email VARCHAR(30) NOT NULL,
password VARCHAR(255) NOT NULL,
profile VARCHAR(200) NOT NULL,
photo_url VARCHAR(100) NOT NULL,
PRIMARY KEY (id) );


CREATE TABLE computer (
id INT NOT NULL AUTO_INCREMENT,
title VARCHAR(50) NOT NULL,
PRIMARY KEY (id) );


CREATE TABLE likes (
user_id INT NOT NULL,
computer_id INT NOT NULL,
PRIMARY KEY (user_id, computer_id),
FOREIGN KEY (user_id) REFERENCES user(id),
FOREIGN KEY (computer_id) REFERENCES computer(id) );


CREATE TABLE message (
from_user_id INT NOT NULL,
to_user_id INT NOT NULL,
datetime DATETIME NOT NULL,
text VARCHAR(500) NOT NULL,
PRIMARY KEY (from_user_id, to_user_id),
FOREIGN KEY(from_user_id) REFERENCES user(id),
FOREIGN KEY(to_user_id) REFERENCES user(id) );