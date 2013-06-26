DROP TABLE IF EXISTS PERSISTENT_LOGINS;

/* Table for Spring security remember-me */
CREATE TABLE PERSISTENT_LOGINS(
  series varchar(64) primary key,
  username varchar(64) not null,
  token varchar(64) not null,
  last_used timestamp not null
 );
