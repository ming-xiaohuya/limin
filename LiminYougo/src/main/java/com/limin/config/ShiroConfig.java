//package com.limin.config;
//
//import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
//import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
//import org.springframework.beans.factory.annotation.Qualifier;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//
//import java.util.LinkedHashMap;
//import java.util.Map;
//
//@Configuration
//public class ShiroConfig {
//
//    // ShiroFilterFactoryBean : 3
//    // @Qualifier 一般情况下关联方法名即可，当方法名过长时，可以在Bean后加一个name建立别名
//    @Bean
//    public ShiroFilterFactoryBean getShiroFilterFactoryBean(@Qualifier("securityManager") DefaultWebSecurityManager defaultSecurityManager){
//        ShiroFilterFactoryBean bean = new ShiroFilterFactoryBean();
//
//
//        // 设置安全管理器
//        bean.setSecurityManager(defaultSecurityManager);
//
//        // 添加shiro的内置过滤器
//        /*
//         *   anon: 无需认证就可以访问
//         *   authc: 必须认证才能访问
//         *   user: 必须拥有 记住我 功能才能使用
//         *   perms: 拥有对某个资源的权限才能访问
//         *   role: 拥有某个角色权限才能访问
//         * */
//        // 拦截
//        Map<String,String> filterMap = new LinkedHashMap<>();
//
//        filterMap.put("/user/login","anon");
//        filterMap.put("/admin/toLogin","anon");
//        filterMap.put("/swagger-ui/**","anon");
//        filterMap.put("/swagger-resources/**","anon");
//        filterMap.put("/v3/**","anon");
//        filterMap.put("/webjars/**","anon");
//
//        // 首页拦截，这里支持通配符
//        filterMap.put("/admin/*","anon");
//
//        // 注销过滤
//        filterMap.put("/admin/logout","logout");
//
//        bean.setFilterChainDefinitionMap(filterMap);
//
//        // 设置登录的请求
//        bean.setLoginUrl("/admin/login");
//
//        return bean;
//    }
//
//    // DefaultSecurityManager : 2
//    @Bean(name = "securityManager")
//    public DefaultWebSecurityManager getDefaultSecurityManager(@Qualifier("userRealm") UserRealm userRealm){
//        DefaultWebSecurityManager securityManager = new DefaultWebSecurityManager();
//        securityManager.setRealm(userRealm);
//        return securityManager;
//    }
//
//    // 创建UserRealm对象    需要自定义类 : 1
//    @Bean
//    public UserRealm userRealm(){
//
//        return new UserRealm();
//    }
//
//
//}
