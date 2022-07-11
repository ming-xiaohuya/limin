package com.limin.jwt;

import org.apache.shiro.authc.AuthenticationToken;

/**
 *
 * @author : 小冥
 * @date : 17:14 2022/5/7
 **/

public class JWTToken implements AuthenticationToken {
    // 密钥
    private String token;

    public JWTToken(String token) {
        this.token = token;
    }

    @Override
    public Object getPrincipal() {
        return token;
    }

    @Override
    public Object getCredentials() {
        return token;
    }
}
