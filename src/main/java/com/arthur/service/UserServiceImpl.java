package com.arthur.service;

import com.arthur.dao.UserMapper;
import com.arthur.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Arthur on 2017/9/16.
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private UserService1 userService1;

    @Override
    public int insert(User user) {
        userService1.insert(user);
        int i = 1 / 0;
        return userMapper.insert(user);
    }

}
