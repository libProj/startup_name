package com.startup_name.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginConroller {
	
	public static final String ROOT_MAPPING = "/";
    public static final String LOGIN_MAPPING = "/login";
    public static final String LOGIN_FAILED_MAPPING = "/failed";
    public static final String INDEX_MAPPING = "/index";

    private static final String LOGIN_PAGE = "login";
    private static final String INDEX_PAGE = "index";
    private static final String REDIRECT = "redirect:";
	private static final String LOGIN_FAILED_PROPERTY = "loginFailed";
	
	@RequestMapping(value = ROOT_MAPPING, method = RequestMethod.GET)
	public String root() {
        return REDIRECT + LOGIN_MAPPING;
    }

	@RequestMapping(value = LOGIN_MAPPING, method = RequestMethod.GET)
	public String login() {
		return LOGIN_PAGE;
	}
	
	@RequestMapping(value = LOGIN_FAILED_MAPPING, method = RequestMethod.GET)
	public String loginFailed(ModelMap model) {
		model.put(LOGIN_FAILED_PROPERTY, true);
		return LOGIN_PAGE;
	}

    @RequestMapping(value = INDEX_MAPPING, method = RequestMethod.GET)
    public String index() {
        return INDEX_PAGE;
    }

}
