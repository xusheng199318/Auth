package com.arthur.service;

import com.arthur.dao.AuthFunctionMapper;
import com.arthur.model.AuthFunction;
import com.arthur.model.AuthFunctionExample;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Arthur on 2017/10/5.
 */
@Service
public interface AuthSerivce {

    int insert(AuthFunction record);

    List<AuthFunction> selectByExample(AuthFunctionExample example);

}
