DROP TABLE IF EXISTS PERSISTENT_LOGINS;
DROP TABLE IF EXISTS USERS;
DROP TABLE IF EXISTS ROLES;

/* Roles */
CREATE TABLE ROLES(
	role_id SERIAL PRIMARY KEY,
	role_name VARCHAR(50) UNIQUE
);

/* Users */
CREATE TABLE USERS(
	user_id SERIAL PRIMARY KEY,
	username VARCHAR(50) UNIQUE,
	password VARCHAR(50),
	role_id INT references ROLES(role_id),
	enabled BOOLEAN
);

/* Table for Spring security remember-me */
CREATE TABLE PERSISTENT_LOGINS(
  series varchar(64) primary key,
  username varchar(64) not null,
  token varchar(64) not null,
  last_used timestamp not null
 );