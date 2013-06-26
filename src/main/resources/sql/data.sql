DELETE FROM USERS;
DELETE FROM ROLES;

/* Roles */
INSERT INTO ROLES(role_id, role_name)
VALUES(0, 'ROLE_ANONYMOUS');

INSERT INTO ROLES(role_id, role_name)
VALUES(1, 'ROLE_ADMINISTRATOR');

/* Users */
INSERT INTO USERS(user_id, username, password, role_id, enabled)
VALUES(0, 'admin', 'ceb4f32325eda6142bd65215f4c0f371', 1, true);

INSERT INTO USERS(user_id, username, password, role_id, enabled)
VALUES(1, 'user1', 'ceb4f32325eda6142bd65215f4c0f371', 1, true);

INSERT INTO USERS(user_id, username, password, role_id, enabled)
VALUES(2, 'user2', 'ceb4f32325eda6142bd65215f4c0f371', 1, true);

INSERT INTO USERS(user_id, username, password, role_id, enabled)
VALUES(3, 'user3', 'ceb4f32325eda6142bd65215f4c0f371', 1, true);

INSERT INTO USERS(user_id, username, password, role_id, enabled)
VALUES(4, 'user4', 'ceb4f32325eda6142bd65215f4c0f371', 1, true);

INSERT INTO USERS(user_id, username, password, role_id, enabled)
VALUES(5, 'user5', 'ceb4f32325eda6142bd65215f4c0f371', 1, true);
