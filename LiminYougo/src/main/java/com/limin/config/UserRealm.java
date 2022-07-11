//package com.limin.config;
//
//
//import com.limin.pojo.User;
//import com.limin.service.UserService;
//import org.apache.shiro.authc.*;
//import org.apache.shiro.authz.AuthorizationInfo;
//import org.apache.shiro.realm.AuthorizingRealm;
//import org.apache.shiro.subject.PrincipalCollection;
//import org.springframework.beans.factory.annotation.Autowired;
//
//public class UserRealm extends AuthorizingRealm {
//
//    @Autowired
//    private UserService userService;
//
//    @Override
//    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
//        System.out.println("执行=>授权doGetAuthorizationInfo");
//        return null;
//    }
//
//    @Override
//    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
//        UsernamePasswordToken userToken = (UsernamePasswordToken) authenticationToken;
//
//        // 连接数据库
//        User user = userService.queryUserName(userToken.getUsername());
//
//        // 判断用户名是否存在
//        if (user == null){
//            return null;    // UnknownAccountException
//        }
//
//        // 密码认证，交由Shiro来实现
//        return new SimpleAuthenticationInfo("",user.getPassword(),"");
//    }
//}
