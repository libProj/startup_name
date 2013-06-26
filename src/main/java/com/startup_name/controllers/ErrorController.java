package com.startup_name.controllers;

import javax.servlet.http.HttpServletRequest;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.common.base.Throwables;

@Controller
public class ErrorController {

    private static final String ERROR_STATUS_CODE = "javax.servlet.error.status_code";
    private static final String ERROR_REQUEST_URI = "javax.servlet.error.request_uri";
    private static final String ERROR_EXCEPTION = "javax.servlet.error.exception";
    private static final String ERROR_PAGE = "error/error";
    private static final String ERROR = "error";

    @RequestMapping(value = ERROR, method = RequestMethod.GET)
    public String customError(HttpServletRequest request, Model model) {
        // Retrieve useful information from the request.
        Throwable throwable = (Throwable) request.getAttribute(ERROR_EXCEPTION);
        Integer statusCode = (Integer) request.getAttribute(ERROR_STATUS_CODE);
        String requestUri = (String) request.getAttribute(ERROR_REQUEST_URI);
        String exceptionMessage = getExceptionMessage(throwable, statusCode);

        // Send information back to model.
        model.addAttribute("exceptionMessage", exceptionMessage);
        model.addAttribute("statusCode", statusCode);
        model.addAttribute("requestUri", requestUri);
        return ERROR_PAGE;
    }

    private String getExceptionMessage(Throwable throwable, Integer statusCode) {
        if (throwable != null) {
            return Throwables.getRootCause(throwable).getMessage();
        }
        HttpStatus httpStatus = HttpStatus.valueOf(statusCode);
        return httpStatus.getReasonPhrase();
    }
}
