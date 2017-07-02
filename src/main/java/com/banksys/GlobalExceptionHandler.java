package com.banksys;

import org.springframework.dao.DataAccessException;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.NoHandlerFoundException;

/**
 * Created by lakshithar on 7/1/2017.
 *
 */
@ControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(AccessDeniedException.class)
    public ModelAndView handleException(AccessDeniedException ex) {
        ModelAndView mnv = new ModelAndView("accessDenied", "errorMessage", ex.getCause());
        System.out.println(ex);
        return mnv;
    }

    @ExceptionHandler(DataAccessException.class)
    public ModelAndView handleException(DataAccessException ex) {
        ModelAndView mnv = new ModelAndView("error", "errorMessage", ex.getCause());
        System.out.println(ex);
        return mnv;
    }

    @ExceptionHandler(Exception.class)
    public ModelAndView handleException(Exception ex) {
        ModelAndView mnv = new ModelAndView("error", "errorMessage", ex.getCause());
        System.out.println(ex);
        return mnv;
    }
}
