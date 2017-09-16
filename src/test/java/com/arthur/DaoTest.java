package com.arthur;

import com.alibaba.druid.pool.DruidDataSource;
import com.arthur.dao.UserMapper;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.sql.SQLException;

/**
 * Created by Arthur on 2017/9/16.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/applicationContext-dao.xml")
public class DaoTest {

    @Autowired
    private DruidDataSource dataSource;

    @Autowired
    private SqlSessionFactoryBean sqlSessionFactoryBean;

    @Autowired
    private UserMapper userMapper;

    @Test
    public void testDataSource() throws SQLException {
        System.out.println(dataSource.getUrl());
        System.out.println(dataSource.getUsername());
        System.out.println(dataSource.getPassword());

        System.out.println(dataSource.getConnection());
    }

    @Test
    public void testSqlSessionFactory() {
        Assert.assertNotNull(sqlSessionFactoryBean);
    }

    @Test
    public void testDaoGet() {

        System.out.println(userMapper.selectByPrimaryKey("11"));
    }

}
