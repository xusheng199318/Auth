package com.arthur.realm;

import com.arthur.dao.UserMapper;
import com.arthur.model.User;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by Arthur on 2017/9/27.
 */
public class AuthRealm extends AuthorizingRealm {

    @Autowired
    private UserMapper userMapper;
    //授权方法
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        return null;
    }

    //认证方法
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        System.out.println("执行自定义realm");
        UsernamePasswordToken passwordToken = (UsernamePasswordToken) authenticationToken;
        String username = passwordToken.getUsername();

        User user = userMapper.getUserByUsername(username);
        if (user == null) {
            return null;
        }

        AuthenticationInfo info = new SimpleAuthenticationInfo(user, user.getPassword(), this.getName());
        return null;
    }
}
