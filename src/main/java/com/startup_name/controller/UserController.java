package com.startup_name.controller;

import com.startup_name.model.User;
import com.startup_name.service.UserService;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.inject.Inject;

@Controller
@RequestMapping(value = UserController.USER_MAPPING)
public class UserController {

    public static final String USER_MAPPING = "/user";
    public static final String ADD_USER_MAPPING = "/add";
    public static final String GET_USER_BY_ID_MAPPING = "/{userId}";

    private static final String USER_PAGE = "user/user_page";

    @Inject
    private UserService userService;

    @RequestMapping(method = RequestMethod.GET)
    public String addUserPage() {
        return USER_PAGE;
    }

    @RequestMapping(value = ADD_USER_MAPPING, method = RequestMethod.POST)
    public ResponseEntity<Void> addUser(@RequestBody User user) {
        userService.addUser(user);
        return new ResponseEntity<Void>(new HttpHeaders(), HttpStatus.CREATED);
    }

    @ResponseBody
    @RequestMapping(value = GET_USER_BY_ID_MAPPING, method = RequestMethod.GET)
    public ResponseEntity<User> getUserById(@PathVariable("userId") int userId) {
        return new ResponseEntity<User>(userService.getUserById(userId), new HttpHeaders(), HttpStatus.OK);
    }

}
