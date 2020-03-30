DROP TABLE IF EXISTS worker;
DROP TABLE IF EXISTS city;
DROP SEQUENCE IF EXISTS seq_workerId;
DROP SEQUENCE IF EXISTS seq_cityId;

CREATE TABLE city (
    cityId integer NOT NULL,
    name varchar(64) NOT NULL,
    countryCode character(3) NOT NULL,
    district varchar(64) NOT NULL,
    cityMessage varchar(1000),
    CONSTRAINT pk_city_id PRIMARY KEY (cityId)
);

CREATE TABLE worker
(
	workerId integer PRIMARY KEY,
	firstName VARCHAR(50) NOT NULL,
	lastName VARCHAR(50) NOT NULL,
	cityCode integer NOT NULL, 
	establishment VARCHAR(50) NOT NULL,
	industry VARCHAR(50) NOT NULL,
	status VARCHAR(50) NOT NULL,
	venmo VARCHAR(50),
	paypalLink VARCHAR(50),
	imagePath VARCHAR(50),
	personalMessage VARCHAR(500),
	entered DATE NOT NULL,
    CONSTRAINT fk_cityCode FOREIGN KEY (cityCode) REFERENCES city(cityId)
);

CREATE SEQUENCE seq_workerId;
CREATE SEQUENCE seq_cityId;

INSERT INTO city (cityId, name, countrycode, district, cityMessage) VALUES (1, 'Pittsburgh', 'USA', 'PA', '
The largest employment sector in Pittburgh is the service industry. 
As things have shut down because of the COVID19 virus 
restaurants, bars, cafes, salons, spas, theaters, and 
many other places of business have been forced to close. 
These workers were not the best paid in the region, but they 
served us every day. Because of their pay, a big part of their income was tips.
Pittsburgh alone hundreds of thousands of jobs have been affected.
Unemployment and temporary assistance for displaced
workers is likely on the way, but some people will likely be denied benefits
and asked to live off of less than they normally would have.');
INSERT INTO city (cityId, name, countrycode, district, cityMessage) VALUES (2, 'Buffalo', 'USA', 'NY', '
Buffalo has a huge service industry. 
As things have shut down because of the COVID19 virus 
restaurants, bars, cafes, salons, spas, theaters, and 
many other places of business have been forced to close. 
These workers were not the best paid in the region, but they 
served us every day. Because of their pay, a big part of their income was tips.
Buffalo alone hundreds of thousands of jobs have been affected.
Unemployment and temporary assistance for displaced
workers is likely on the way, but some people will likely be denied benefits
and asked to live off of less than they normally would have.');
INSERT INTO city (cityId, name, countryCode, district, cityMessage) VALUES (3, 'Baltimore', 'USA', 'PA', 'Baltimore!!');
INSERT INTO city (cityId, name, countryCode, district, cityMessage) VALUES (4, 'Annapolis', 'USA', 'MD', NULL);

INSERT INTO worker (workerId, firstName, lastName, cityCode, establishment, industry, status, venmo, paypalLink, entered) VALUES (1, 'john', 'doe', 1, 'awesome cafe', 'coffee', 'laid-off permanently', NULL, 'johnsPaypal', '2020-03-22');
INSERT INTO worker (workerId, firstName, lastName, cityCode, establishment, industry, status, venmo, paypalLink, entered) VALUES (2, 'jane', 'doe', 1, 'sweet bar', 'bar', 'laid-off permanently', 'venmoDoe', 'jane123', '2020-03-22');
INSERT INTO worker (workerId, firstName, lastName, cityCode, establishment, industry, status, venmo, paypalLink, entered) VALUES (3, 'james', 'alpha', 1, 'cool resteraunt', 'food', 'less hours', 'venmoAlphaMan', 'alphaFund', '2020-03-22');
INSERT INTO worker (workerId, firstName, lastName, cityCode, establishment, industry, status, venmo, paypalLink, entered) VALUES (4, 'janine', 'beta', 1, 'lame bar', 'bar', 'laid-off permanently', NULL, 'JBmoney', '2020-03-22');
INSERT INTO worker (workerId, firstName, lastName, cityCode, establishment, industry, status, venmo, paypalLink, entered) VALUES (5, 'janis', 'gamma', 1, 'best salon', 'beauty', 'less customers', 'venmoJanisG', 'glammerGamma', '2020-03-22');
INSERT INTO worker (workerId, firstName, lastName, cityCode, establishment, industry, status, venmo, paypalLink, entered) VALUES (6, 'jeff', 'delta', 1, 'wicked pizza', 'food', 'laid-off permanently', 'venmoJD', 'jeffPizzaFund', '2020-03-22');
INSERT INTO worker (workerId, firstName, lastName, cityCode, establishment, industry, status, venmo, paypalLink, entered) VALUES (7, 'joline', 'epsilon', 1, 'shady bar', 'bar', 'laid-off permanently', NULL, 'joooline93723', '2020-03-22');
INSERT INTO worker (workerId, firstName, lastName, cityCode, establishment, industry, status, venmo, paypalLink, entered) VALUES (8, 'javier', 'zeta', 1, 'great foodz', 'food', 'laid-off permanently', 'venmoGreatJavier', NULL, '2020-03-22');
INSERT INTO worker (workerId, firstName, lastName, cityCode, establishment, industry, status, venmo, paypalLink, entered) VALUES (9, 'jake', 'eta', 1, 'zoom food', 'delivery', 'less hours', 'venmoJAKE', 'jakeSE', '2020-03-22');