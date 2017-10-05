package com.arthur.controller;

import com.arthur.model.User;
import com.arthur.util.MD5Utils;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;

/**
 * Created by Arthur on 2017/9/27.
 */
@Controller
@RequestMapping("/user")
public class LoginController {

    @RequestMapping(value = "/login.do", method = RequestMethod.POST)
    public String login(User user, HttpSession session) {

        if (StringUtils.isEmpty(user.getUsername()) || StringUtils.isEmpty(user.getPassword())) {
            return "login";
        }

        String md5Pwd = MD5Utils.encoderByMd5(user.getPassword());
        UsernamePasswordToken token = new UsernamePasswordToken(user.getUsername(), md5Pwd);
        Subject subject = SecurityUtils.getSubject();

        try {
            subject.login(token);
        } catch (Exception e) {
            e.printStackTrace();
            return "login";
        }

        User currentUser = (User) subject.getPrincipal();
        session.setAttribute("currentUser", currentUser);

        return "main";
    }
}
