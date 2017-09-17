package com.arthur.controller;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Arthur on 2017/9/17.
 */
@Controller
public class PageController {

    @RequestMapping(value = "/goto/{pageName}")
    public String toPage(@PathVariable String pageName) {
        return pageName;
    }
}
