-- DROP TABLE tblOwner;
CREATE TABLE tblOwner
(
	RegistrationId INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
	EMail          VARCHAR(150) NOT NULL,
    Pswd           VARCHAR(50)  NOT NULL,
    FirstName      VARCHAR(50)  NOT NULL,
    Surname        VARCHAR(50)  NOT NULL
);

INSERT INTO tblOwner (Email, Pswd, FirstName, Surname) VALUES ('a@b.c', 'Please', 'Jane',  'Doe');
INSERT INTO tblOwner (Email, Pswd, FirstName, Surname) VALUES ('b@b.c', 'Please', 'John',  'Doe');
INSERT INTO tblOwner (Email, Pswd, FirstName, Surname) VALUES ('c@b.c', 'Please', 'Jim',   'Doe');
INSERT INTO tblOwner (Email, Pswd, FirstName, Surname) VALUES ('d@b.c', 'Please', 'Julia', 'Doe');
