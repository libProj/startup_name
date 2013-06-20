/* Roles */
INSERT INTO ROLES(role_name) 
VALUES('ROLE_ADMINISTRATOR');

INSERT INTO ROLES(role_name) 
VALUES('ROLE_USER');

/* Users */
INSERT INTO USERS(username, password, role_id, enabled)
VALUES('admin', 'ceb4f32325eda6142bd65215f4c0f371', 1, true);

INSERT INTO USERS(username, password, role_id, enabled)
VALUES('user', '47a733d60998c719cf3526ae7d106d13', 2, true);
