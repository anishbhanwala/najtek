CREATE DATABASE maindb DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_unicode_ci;


CREATE TABLE user (
	id int(11)  NOT NULL AUTO_INCREMENT PRIMARY KEY,
	username varchar(128) NOT NULL,
	email_address varchar(128),
	password varchar(128) NOT NULL,
	first_name varchar(64),
	middle_name varchar(64),
	last_name varchar(64),
	creation_timestamp timestamp default CURRENT_TIMESTAMP,
	organization_id INT(11) NOT NULL,
	
	CONSTRAINT email_address_uc UNIQUE(email_address),
	CONSTRAINT username_uc UNIQUE(username),
	FULLTEXT INDEX (email_address),
	FULLTEXT INDEX (username)
) CHARACTER SET=utf8;

CREATE TABLE user_role (
	id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	user_id INT(11) NOT NULL,
	role VARCHAR(64) NOT NULL,	
	
	CONSTRAINT role_user_id_uc UNIQUE(user_id, role)  
) CHARACTER SET=utf8; 

CREATE TABLE organization (
	id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(128) NOT NULL,
	primary_user_id INT(11) NOT NULL,
	default_database VARCHAR(64) NOT NULL,

	INDEX (primary_user_id)
) CHARACTER SET=utf8;

CREATE TABLE school (
	id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(128) NOT NULL,
	primary_user_id INT(11) NOT NULL,
	organization_id INT(11) NOT NULL,

	INDEX (organization_id)
) CHARACTER SET=utf8;

CREATE TABLE school_staff_member (
	id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	user_id INT(11) NOT NULL,
	school_id VARCHAR(64) NOT NULL,

	CONSTRAINT user_id_school_id_uc UNIQUE(user_id, school_id)
) CHARACTER SET=utf8;

CREATE TABLE school_staff_member_role (
	id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	user_id INT(11) NOT NULL,
	role VARCHAR(64) NOT NULL,

	CONSTRAINT school_role_user_id_uc UNIQUE(user_id, role)
) CHARACTER SET=utf8;
