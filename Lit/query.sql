USE master
GO

CREATE DATABASE homework; 
GO

USE homework;
GO

-- Table user
CREATE TABLE userInfo ( -- want user is niet mogelijk
	userID		TINYINT IDENTITY(1,1),
	name		VARCHAR(30),
	pin			INT,
);

-- Table vak
CREATE TABLE subject (
	subjectID	INT IDENTITY(1,1),
	name VARCHAR(15) NOT NULL,
);

-- Table resultaten
CREATE TABLE results (
homeworkID		INT IDENTITY(1,1),
subjectID		INT,
subjectName		VARCHAR(30) NOT NULL,
exerciseName	VARCHAR(30) NOT NULL,
description		VARCHAR(80),
result			DECIMAL(2,1)	
);

-- PK user
ALTER TABLE userInfo
ADD CONSTRAINT pk_userID
PRIMARY KEY (userID);

--PK vak
ALTER TABLE subject
ADD CONSTRAINT pk_subjectID
PRIMARY KEY (subjectID);

--PK resultaat
ALTER TABLE results
ADD CONSTRAINT pk_homeworkID
PRIMARY KEY (homeworkID);

ALTER TABLE results
ADD CONSTRAINT fk_subjectID
FOREIGN KEY (subjectID)
REFERENCES subject(subjectID);

-- Values user
INSERT INTO userInfo (name, pin)
VALUES 
	('Devon', 1235);

-- Values vak
INSERT INTO subject (name)
VALUES
	('ASP'),
	('PHP'),
	('SQL'),
	('Analyseren');

INSERT INTO results (subjectName, exerciseName, description, result)
VALUES
	--ASP
	('ASP', 'Opdracht 5.1', 'Validation', 2),
	('ASP', 'Opdracht 6.1', 'Masterpages', 2),
	('ASP', 'Opdracht 7.1', 'Gridview', 2),
	('ASP', 'Opdracht 7.2', '', 2),
	
	--PHP
	('PHP', 'Opdracht 6.1', 'Sessie', 1),
	('PHP', 'Opdracht 6.2', 'Cookie', 1),
	('PHP', 'Opdracht 6.3', 'Webshop', 1),
	('PHP', 'Opdracht 7.1', 'Database koppelen', 1),
	('PHP', 'Opdracht 7.2', 'Jokes', 1),
	('PHP', 'Opdracht 7.3', 'Aanpassen van de database', 1),
	('PHP', 'Opdracht 7.4', 'Toevoegen aan de database', 1),
	('PHP', 'Opdracht 7.5', 'Unknown', 1),

	--SQL
	('SQL', 'Opdracht 8.1', 'Ontwerpen van een veel op veel-relatie', 0),
	('SQL', 'Opdracht 8.2', 'Realiseren van veel op veel-relaties', 0),
	('SQL', 'Opdracht 8.3', 'Ontwerpen van een database met de juiste type relatie', 0),
	('SQL', 'Opdracht 9.1', 'Saai', 0),
	('SQL', 'Opdracht 9.2', 'Saai', 0),

	--Analyseren
		--ICT
	('Analyseren', 'ICT deel 1', 'Uniciteitregel', 0),
	('Analyseren', 'ICT deel 2', 'Deelverzamelingregel', 0),
	('Analyseren', 'ICT deel 3', 'Gelijkheidregel', 0),
		--NYC
	('Analyseren', 'NYC deel 1', 'Uniciteitregel', 2),
	('Analyseren', 'NYC deel 2', 'Deelverzamelingregel', 2),
	('Analyseren', 'NYC deel 3', 'Gelijkheidregel', 2),
		--Cannabis
	('Analyseren', 'Cannabis deel 1', 'Uniciteitregel', 0),
	('Analyseren', 'Cannabis deel 2', 'Deelverzamelingregel', 0),
	('Analyseren', 'Cannabis deel 3', 'Gelijkheidregel', 0);



SELECT * FROM results
select * from userInfo
select * from subject
