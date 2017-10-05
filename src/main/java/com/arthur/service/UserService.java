package com.arthur.service;

import com.arthur.model.User;

/**
 * Created by Arthur on 2017/9/16.
 */
public interface UserService {

    int insert(User record);

    int deleteByPrimaryKey(String id);
}
