package com.arthur.service;

import com.arthur.dao.AuthFunctionMapper;
import com.arthur.model.AuthFunction;
import com.arthur.model.AuthFunctionExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Arthur on 2017/10/5.
 */
@Service
public class AuthServiceImpl implements AuthSerivce {

    @Autowired
    private AuthFunctionMapper authFunctionMapper;

    @Override
    public int insert(AuthFunction record) {
        return authFunctionMapper.insert(record);
    }

    @Override
    public List<AuthFunction> selectByExample(AuthFunctionExample example) {
        return authFunctionMapper.selectByExample(example);
    }
}
