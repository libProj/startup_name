package com.startup_name.service;

import com.startup_name.model.User;
import com.startup_name.persistence.UserDAO;
import org.springframework.stereotype.Service;

import javax.inject.Inject;

/**
 * Service class for managing users
 */
@Service
public class UserService {

    @Inject
    private UserDAO userDAO;

    public void addUser(User user) {
        //There is will be more logic
        userDAO.addUser(user);
    }

    public User getUserById(int userId) {
        //There is will be more logic
        return userDAO.getUserById(userId);

    }

}
