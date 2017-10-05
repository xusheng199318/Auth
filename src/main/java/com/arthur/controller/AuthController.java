package com.arthur.controller;

import com.alibaba.fastjson.JSON;
import com.arthur.model.AuthFunction;
import com.arthur.service.AuthSerivce;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.UUID;

/**
 * Created by Arthur on 2017/10/5.
 */
@Controller
@RequestMapping("/auth")
public class AuthController {

    @Autowired
    private AuthSerivce authSerivce;

    @RequestMapping("/addAuth.do")
    @ResponseBody
    public String addAuth(AuthFunction auth) {
        auth.setId(UUID.randomUUID().toString().replaceAll("-", ""));
        int i = authSerivce.insert(auth);
        return i + "";
    }

    @RequestMapping(value = "/queryAuth.do", produces = "application/json; charset=UTF-8")
    @ResponseBody
    public String queryAuth() {
        PageHelper.offsetPage(1, 3);
        List<AuthFunction> authFunctions = authSerivce.selectByExample(null);
        PageInfo<AuthFunction> pageInfo =new PageInfo<AuthFunction>(authFunctions);
        List<AuthFunction> result = pageInfo.getList();
        String json = JSON.toJSONString(result);
        return json;
    }
}
