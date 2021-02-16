DROP DATABASE itech3108_30318101_a1;
CREATE DATABASE itech3108_30318101_a1;

CREATE TABLE itech3108_30318101_a1.user (
id INT NOT NULL AUTO_INCREMENT,
username VARCHAR(30) NOT NULL,
email VARCHAR(30) NOT NULL,
password VARCHAR(255) NOT NULL,
profile VARCHAR(200) NOT NULL,
photo_url VARCHAR(100) NOT NULL,
PRIMARY KEY (id) );


CREATE TABLE itech3108_30318101_a1.computer (
id INT NOT NULL AUTO_INCREMENT,
title VARCHAR(50) NOT NULL,
PRIMARY KEY (id) );


CREATE TABLE itech3108_30318101_a1.likes (
user_id INT NOT NULL,
computer_id INT NOT NULL,
PRIMARY KEY (user_id, computer_id),
FOREIGN KEY (user_id) REFERENCES user(id),
FOREIGN KEY (computer_id) REFERENCES computer(id) );


CREATE TABLE itech3108_30318101_a1.message (
from_user_id INT NOT NULL,
to_user_id INT NOT NULL,
datetime DATETIME NOT NULL,
text VARCHAR(500) NOT NULL,
PRIMARY KEY (from_user_id, to_user_id),
FOREIGN KEY(from_user_id) REFERENCES user(id),
FOREIGN KEY(to_user_id) REFERENCES user(id) );

INSERT INTO itech3108_30318101_a1.user (id, username, email, password, profile, photo_url) VALUES (1, 'benjaminfenech', 'benjamin.fenech@outlook.com', '$2y$12$7PA4c8E4l.EAyyYdMNoXceJibp42EAclUtprbXkYSblztMXHY6sw6', 'This is a basic profile description. I am a guest user.', 'profilebenjamin.jpg');
INSERT INTO itech3108_30318101_a1.user (id, username, email, password, profile, photo_url) VALUES (2, 'bcastilljo1', 'fmaher1@forbes.com', '$2y$12$7PA4c8E4l.EAyyYdMNoXceJibp42EAclUtprbXkYSblztMXHY6sw6', 'This is a basic profile description. I have 6 cats. My best friend is Dewayne Collins.', 'profile.jpg');
INSERT INTO itech3108_30318101_a1.user (id, username, email, password, profile, photo_url) VALUES (3, 'amein2', 'wwoodus2@patch.com', '$2y$12$g8lYzuAdE9/mV7KmJ65L9Ob0/LMOHl.Cp/Ymy7ti52b0n71O6LgLy', 'This is a basic profile description. I have 0 cats. My best friend is Edna Macejkovic.', 'profile.jpg');
INSERT INTO itech3108_30318101_a1.user (id, username, email, password, profile, photo_url) VALUES (4, 'wcradoc3', 'ldumphry3@usnews.com', '$2y$12$/v68t./5U4rO9XBqO9IEkOPImVHZbUw0ypoVUqHH.ye6zV0qywxRW', 'This is a basic profile description. I have 0 cats. My best friend is Ezra Jacobson.', 'profile.jpg');
INSERT INTO itech3108_30318101_a1.user (id, username, email, password, profile, photo_url) VALUES (5, 'cembow4', 'acrickmore4@topsy.com', '$2y$12$/v68t./5U4rO9XBqO9IEkOPImVHZbUw0ypoVUqHH.ye6zV0qywxRW', 'This is a basic profile description. I have 8 cats. My best friend is Audria Sanford.', 'profile.jpg');
INSERT INTO itech3108_30318101_a1.user (id, username, email, password, profile, photo_url) VALUES (6, 'aflounders5', 'vswanson5@ehow.com', '$2y$12$/v68t./5U4rO9XBqO9IEkOPImVHZbUw0ypoVUqHH.ye6zV0qywxRW', 'This is a basic profile description. I have 9 cats. My best friend is Chante Rau.', 'profile.jpg');
INSERT INTO itech3108_30318101_a1.user (id, username, email, password, profile, photo_url) VALUES (7, 'nclayal6', 'ddelacour6@discuz.net', '$2y$12$/v68t./5U4rO9XBqO9IEkOPImVHZbUw0ypoVUqHH.ye6zV0qywxRW', 'This is a basic profile description. I have 8 cats. My best friend is Irving Howe.', 'profile.jpg');
INSERT INTO itech3108_30318101_a1.user (id, username, email, password, profile, photo_url) VALUES (8, 'dcuttler7', 'reasby7@ca.gov', '$2y$12$/v68t./5U4rO9XBqO9IEkOPImVHZbUw0ypoVUqHH.ye6zV0qywxRW', 'This is a basic profile description. I have 9 cats. My best friend is Drew Collins.', 'profile.jpg');
INSERT INTO itech3108_30318101_a1.user (id, username, email, password, profile, photo_url) VALUES (9, 'malliband8', 'tdanilovitch8@tumblr.com', '$2y$12$7PA4c8E4l.EAyyYdMNoXceJibp42EAclUtprbXkYSblztMXHY6sw6', 'This is a basic profile description. I have 3 cats. My best friend is Daine Rowe.', 'profile.jpg');
INSERT INTO itech3108_30318101_a1.user (id, username, email, password, profile, photo_url) VALUES (10, 'washwell9', 'tguise9@whitehouse.gov', '$2y$12$7PA4c8E4l.EAyyYdMNoXceJibp42EAclUtprbXkYSblztMXHY6sw6', 'This is a basic profile description. I have 7 cats. My best friend is Jonas Haley.', 'profile.jpg');
INSERT INTO itech3108_30318101_a1.user (id, username, email, password, profile, photo_url) VALUES (11, 'rmidsona', 'abeswella@adobe.com', '$2y$12$/v68t./5U4rO9XBqO9IEkOPImVHZbUw0ypoVUqHH.ye6zV0qywxRW', 'This is a basic profile description. I have 6 cats. My best friend is Cassi Collins.', 'profile.jpg');
INSERT INTO itech3108_30318101_a1.user (id, username, email, password, profile, photo_url) VALUES (12, 'sduffynb', 'zmckelvieb@unblog.fr', '$2y$12$/v68t./5U4rO9XBqO9IEkOPImVHZbUw0ypoVUqHH.ye6zV0qywxRW', 'This is a basic profile description. I have 3 cats. My best friend is Alejandro Keeling.', 'profile.jpg');
INSERT INTO itech3108_30318101_a1.user (id, username, email, password, profile, photo_url) VALUES (13, 'lroughsedgec', 'wbarteletc@vkontakte.ru', '$2y$12$7PA4c8E4l.EAyyYdMNoXceJibp42EAclUtprbXkYSblztMXHY6sw6', 'This is a basic profile description. I have 3 cats. My best friend is Mia Stamm.', 'profile.jpg');
INSERT INTO itech3108_30318101_a1.user (id, username, email, password, profile, photo_url) VALUES (14, 'tschultzd', 'wbirkd@tinypic.com', '$2y$12$g8lYzuAdE9/mV7KmJ65L9Ob0/LMOHl.Cp/Ymy7ti52b0n71O6LgLy', 'This is a basic profile description. I have 5 cats. My best friend is Dessie Strosin.', 'profile.jpg');
INSERT INTO itech3108_30318101_a1.user (id, username, email, password, profile, photo_url) VALUES (15, 'mhoulridgee', 'hoverstalle@google.com.au', '$2y$12$V9AbbSyayb66Fz7SLZUsFOT4VXbOWn0h7mIbaxlD6HH9ZNH6jEN/u', 'This is a basic profile description. I have 5 cats. My best friend is Holley Kris.', 'profile.jpg');
INSERT INTO itech3108_30318101_a1.user (id, username, email, password, profile, photo_url) VALUES (16, 'sdeverehuntf', 'cwiersmaf@craigslist.org', '$2y$12$/v68t./5U4rO9XBqO9IEkOPImVHZbUw0ypoVUqHH.ye6zV0qywxRW', 'This is a basic profile description. I have 4 cats. My best friend is Mariana Dooley.', 'profile.jpg');
INSERT INTO itech3108_30318101_a1.user (id, username, email, password, profile, photo_url) VALUES (17, 'kpenhaligong', 'gbinnieg@i2i.jp', '$2y$12$7PA4c8E4l.EAyyYdMNoXceJibp42EAclUtprbXkYSblztMXHY6sw6', 'This is a basic profile description. I have 5 cats. My best friend is Brent Abshire.', 'profile.jpg');
INSERT INTO itech3108_30318101_a1.user (id, username, email, password, profile, photo_url) VALUES (18, 'acayleyh', 'asaichh@delicious.com', '$2y$12$7PA4c8E4l.EAyyYdMNoXceJibp42EAclUtprbXkYSblztMXHY6sw6', 'This is a basic profile description. I have 9 cats. My best friend is Teddy O''Keefe.', 'profile.jpg');
INSERT INTO itech3108_30318101_a1.user (id, username, email, password, profile, photo_url) VALUES (19, 'htruswelli', 'fdeguerrei@cdbaby.com', '$2y$12$7PA4c8E4l.EAyyYdMNoXceJibp42EAclUtprbXkYSblztMXHY6sw6', 'This is a basic profile description. I have 7 cats. My best friend is Brock Marks.', 'profile.jpg');
INSERT INTO itech3108_30318101_a1.user (id, username, email, password, profile, photo_url) VALUES (20, 'lgoodludj', 'nklemenzj@goodreads.com', '$2y$12$/v68t./5U4rO9XBqO9IEkOPImVHZbUw0ypoVUqHH.ye6zV0qywxRW', 'This is a basic profile description. I have 3 cats. My best friend is Roselyn Rath.', 'profile.jpg');
INSERT INTO itech3108_30318101_a1.user (id, username, email, password, profile, photo_url) VALUES (21, 'bdeverickk', 'rlewinsk@si.edu', '$2y$12$/v68t./5U4rO9XBqO9IEkOPImVHZbUw0ypoVUqHH.ye6zV0qywxRW', 'This is a basic profile description. I have 8 cats. My best friend is Dorcas Anderson.', 'profile.jpg');
INSERT INTO itech3108_30318101_a1.user (id, username, email, password, profile, photo_url) VALUES (22, 'lmelatol', 'vgravenorl@privacy.gov.au', '$2y$12$V9AbbSyayb66Fz7SLZUsFOT4VXbOWn0h7mIbaxlD6HH9ZNH6jEN/u', 'This is a basic profile description. I have 8 cats. My best friend is Latoria Stiedemann.', 'profile.jpg');
INSERT INTO itech3108_30318101_a1.user (id, username, email, password, profile, photo_url) VALUES (23, 'lyansonsm', 'rstaitm@whitehouse.gov', '$2y$12$/v68t./5U4rO9XBqO9IEkOPImVHZbUw0ypoVUqHH.ye6zV0qywxRW', 'This is a basic profile description. I have 2 cats. My best friend is Chung Oberbrunner.', 'profile.jpg');
INSERT INTO itech3108_30318101_a1.user (id, username, email, password, profile, photo_url) VALUES (24, 'hdevaneyn', 'rberzinsn@senate.gov', '$2y$12$/v68t./5U4rO9XBqO9IEkOPImVHZbUw0ypoVUqHH.ye6zV0qywxRW', 'This is a basic profile description. I have 5 cats. My best friend is Brady Hammes.', 'profile.jpg');
INSERT INTO itech3108_30318101_a1.user (id, username, email, password, profile, photo_url) VALUES (25, 'bambergo', 'ckeetcho@tinypic.com', '$2y$12$7PA4c8E4l.EAyyYdMNoXceJibp42EAclUtprbXkYSblztMXHY6sw6', 'This is a basic profile description. I have 2 cats. My best friend is Jimmy Rempel.', 'profile.jpg');
INSERT INTO itech3108_30318101_a1.user (id, username, email, password, profile, photo_url) VALUES (26, 'agullanep', 'rbroschkep@sfgate.com', '$2y$12$/v68t./5U4rO9XBqO9IEkOPImVHZbUw0ypoVUqHH.ye6zV0qywxRW', 'This is a basic profile description. I have 4 cats. My best friend is Arden Fisher.', 'profile.jpg');
INSERT INTO itech3108_30318101_a1.user (id, username, email, password, profile, photo_url) VALUES (27, 'acarsq', 'mmcgaraghanq@flickr.com', '$2y$12$7PA4c8E4l.EAyyYdMNoXceJibp42EAclUtprbXkYSblztMXHY6sw6', 'This is a basic profile description. I have 3 cats. My best friend is Irwin Cremin.', 'profile.jpg');
INSERT INTO itech3108_30318101_a1.user (id, username, email, password, profile, photo_url) VALUES (28, 'fgalpinr', 'crosedaler@miitbeian.gov.cn', '$2y$12$7PA4c8E4l.EAyyYdMNoXceJibp42EAclUtprbXkYSblztMXHY6sw6', 'This is a basic profile description. I have 3 cats. My best friend is Kathryn Daugherty.', 'profile.jpg');
INSERT INTO itech3108_30318101_a1.user (id, username, email, password, profile, photo_url) VALUES (29, 'sstanboroughs', 'ksellimans@ow.ly', '$2y$12$/v68t./5U4rO9XBqO9IEkOPImVHZbUw0ypoVUqHH.ye6zV0qywxRW', 'This is a basic profile description. I have 7 cats. My best friend is Diedra Volkman.', 'profile.jpg');
INSERT INTO itech3108_30318101_a1.user (id, username, email, password, profile, photo_url) VALUES (30, 'lferriest', 'mlordt@sciencedirect.com', '$2y$12$7PA4c8E4l.EAyyYdMNoXceJibp42EAclUtprbXkYSblztMXHY6sw6', 'This is a basic profile description. I have 8 cats. My best friend is Theodore Hackett.', 'profile.jpg');

-- Populate the selectable preferences
INSERT INTO itech3108_30318101_a1.computer (id,title) VALUES (1, 'Macbook Air 2014 11"');
INSERT INTO itech3108_30318101_a1.computer (id,title) VALUES (2, 'Macbook Air 2014 13"');
INSERT INTO itech3108_30318101_a1.computer (id,title) VALUES (3, 'Macbook Air 2015 11"');
INSERT INTO itech3108_30318101_a1.computer (id,title) VALUES (4, 'Macbook Air 2015 13"');
INSERT INTO itech3108_30318101_a1.computer (id,title) VALUES (5, 'Macbook Air 2017 13"');
INSERT INTO itech3108_30318101_a1.computer (id,title) VALUES (6, 'Macbook Air 2018 13"');
INSERT INTO itech3108_30318101_a1.computer (id,title) VALUES (7, 'Dell XPS 11');
INSERT INTO itech3108_30318101_a1.computer (id,title) VALUES (8, 'Dell XPS 12');
INSERT INTO itech3108_30318101_a1.computer (id,title) VALUES (9, 'Dell XPS 13');
INSERT INTO itech3108_30318101_a1.computer (id,title) VALUES (10, 'Dell XPS 14');
INSERT INTO itech3108_30318101_a1.computer (id,title) VALUES (11, 'Dell XPS 15');
INSERT INTO itech3108_30318101_a1.computer (id,title) VALUES (12, 'Dell XPS 16');
INSERT INTO itech3108_30318101_a1.computer (id,title) VALUES (13, 'Custom Computer');

-- Random distribution of computer preferences for the 30 users.
INSERT INTO itech3108_30318101_a1.likes (user_id,computer_id) VALUES (1,9),(2,2),(3,13),(4,8),(5,3),(6,8),(7,10),(8,1),(9,11),(10,6);
INSERT INTO itech3108_30318101_a1.likes (user_id,computer_id) VALUES (11,10),(12,13),(13,11),(14,6),(15,9),(16,1),(17,11),(18,3),(19,12),(20,5);
INSERT INTO itech3108_30318101_a1.likes (user_id,computer_id) VALUES (21,6),(22,9),(23,4),(24,10),(25,2),(26,11),(27,12),(28,11),(29,5),(30,5);
INSERT INTO itech3108_30318101_a1.likes (user_id,computer_id) VALUES (1,13),(2,8),(3,3),(4,4),(5,6),(6,3),(7,4),(8,2),(9,3),(10,2);
INSERT INTO itech3108_30318101_a1.likes (user_id,computer_id) VALUES (11,12),(12,12),(13,10),(14,12),(15,8),(16,12),(17,10),(18,10),(19,3),(20,9);
INSERT INTO itech3108_30318101_a1.likes (user_id,computer_id) VALUES (21,12),(22,13),(23,12),(24,6),(25,6),(26,1),(27,2),(28,8),(29,13),(30,11);

-- Populate message table with test messages for the guest user.
INSERT INTO itech3108_30318101_a1.message (from_user_id,to_user_id,datetime,text) VALUES (1,2,"2019-05-04 09:22:29","Hi Bcastill, how are you?");
INSERT INTO itech3108_30318101_a1.message (from_user_id,to_user_id,datetime,text) VALUES (1,3,"2019-05-03 06:02:36","Hey, what's up?");
INSERT INTO itech3108_30318101_a1.message (from_user_id,to_user_id,datetime,text) VALUES (1,4,"2019-05-02 11:05:18","how r u?");
INSERT INTO itech3108_30318101_a1.message (from_user_id,to_user_id,datetime,text) VALUES (1,5,"2019-05-02 21:24:28","hiya!");
INSERT INTO itech3108_30318101_a1.message (from_user_id,to_user_id,datetime,text) VALUES (5,1,"2019-05-02 19:44:26","Hi Benjamin, my name is Cembow. I saw your account and decided to say hi!");