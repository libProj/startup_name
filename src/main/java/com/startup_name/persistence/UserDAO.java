package com.startup_name.persistence;

import com.startup_name.model.User;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.inject.Inject;

/**
 * Class for storage/getting all user information to/from DB
 */
@Repository
public class UserDAO{

    private static final String SELECT_USER_BY_ID_QUERY = "FROM User WHERE userId = %s";

    @Inject
    private SessionFactory sessionFactory;

    @Transactional
    public void addUser(User user) {
        sessionFactory.getCurrentSession().save(user);
    }

    @Transactional(readOnly = true)
    public User getUserById(int userId) {
        return (User) sessionFactory.getCurrentSession().createQuery(
                String.format(SELECT_USER_BY_ID_QUERY, userId)).uniqueResult();
    }

}