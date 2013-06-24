/* Roles */
INSERT INTO ROLES(role_name) 
VALUES('ROLE_ANONIMOUS');

INSERT INTO ROLES(role_name) 
VALUES('ROLE_ADMINISTRATOR');

/* Users */
INSERT INTO USERS(username, password, role_id, enabled)
VALUES('admin', 'ceb4f32325eda6142bd65215f4c0f371', 2, true);

