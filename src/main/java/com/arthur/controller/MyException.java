package com.arthur.controller;

import org.apache.shiro.authz.AuthorizationException;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by Arthur on 2017/10/4.
 */
public class MyException implements HandlerExceptionResolver{
    @Override
    public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) {
        ModelAndView modelAndView = new ModelAndView();
        if (ex instanceof AuthorizationException) {
            modelAndView.setViewName("unauthorized");
        }
        return modelAndView;
    }
}
