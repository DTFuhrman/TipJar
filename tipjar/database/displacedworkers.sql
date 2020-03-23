DROP TABLE IF EXISTS worker;
DROP SEQUENCE IF EXISTS seq_workerId;

CREATE TABLE worker
(
	workerId INTEGER PRIMARY KEY,
	firstName VARCHAR(50) NOT NULL,
	lastName VARCHAR(50) NOT NULL,
	establishment VARCHAR(50) NOT NULL,
	industry VARCHAR(50) NOT NULL,
	status VARCHAR(50) NOT NULL,
	venmo VARCHAR(50),
	paypalLink VARCHAR(50),
	imagePath VARCHAR(50),
	personalMessage VARCHAR(500),
	entered DATE NOT NULL
);

CREATE SEQUENCE seq_workerId;

INSERT INTO worker(workerId, firstName, lastName, establishment, industry, status, venmo, paypalLink, entered) VALUES (1, 'john', 'doe', 'awesome cafe', 'coffee', 'laid-off permanently', '@venmoJohn', '/paypalLink', '2020-03-22');
INSERT INTO worker(workerId, firstName, lastName, establishment, industry, status, venmo, paypalLink, entered) VALUES (2, 'jane', 'doe', 'sweet bar', 'bar', 'laid-off permanently', '@venmoDoe', '/paypalLink', '2020-03-22');
INSERT INTO worker(workerId, firstName, lastName, establishment, industry, status, venmo, paypalLink, entered) VALUES (3, 'james', 'alpha', 'cool resteraunt', 'food', 'less hours', '@venmoAlphaMan', '/paypalLink', '2020-03-22');
INSERT INTO worker(workerId, firstName, lastName, establishment, industry, status, venmo, paypalLink, entered) VALUES (4, 'janine', 'beta', 'lame bar', 'bar', 'laid-off permanently', '@venmoJanineGotOne', '/paypalLink', '2020-03-22');
INSERT INTO worker(workerId, firstName, lastName, establishment, industry, status, venmo, paypalLink, entered) VALUES (5, 'janis', 'gamma', 'best salon', 'beauty', 'less customers', '@venmoJanisG', '/paypalLink', '2020-03-22');
INSERT INTO worker(workerId, firstName, lastName, establishment, industry, status, venmo, paypalLink, entered) VALUES (6, 'jeff', 'delta', 'wicked pizza', 'food', 'laid-off permanently', '@venmoJD', '/paypalLink', '2020-03-22');
INSERT INTO worker(workerId, firstName, lastName, establishment, industry, status, venmo, paypalLink, entered) VALUES (7, 'joline', 'epsilon', 'shady bar', 'bar', 'laid-off permanently', '@venmoNotTakingAnyonesMan', '/paypalLink', '2020-03-22');
INSERT INTO worker(workerId, firstName, lastName, establishment, industry, status, venmo, paypalLink, entered) VALUES (8, 'javier', 'zeta', 'great foodz', 'food', 'laid-off permanently', '@venmoGreatJavier', '/paypalLink', '2020-03-22');
INSERT INTO worker(workerId, firstName, lastName, establishment, industry, status, venmo, paypalLink, entered) VALUES (9, 'jake', 'eta', 'zoom food', 'delivery', 'less hours', '@venmoJAKE', '/paypalLink', '2020-03-22');

