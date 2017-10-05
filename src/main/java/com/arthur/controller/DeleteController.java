package com.arthur.controller;

import com.arthur.service.UserService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by Arthur on 2017/10/4.
 */
@Controller
@RequestMapping("/user")
public class DeleteController {

    @Autowired
    private UserService userService;

    @RequestMapping("/delete/{id}")
    @ResponseBody
    @RequiresPermissions("staff-delete")
    public String deleteByPrimayKey(@PathVariable String id) {
        Integer records = userService.deleteByPrimaryKey(id);
        return records.toString();
    }
}
