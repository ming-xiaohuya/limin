//package com.limin.utils;
//
//import com.auth0.jwt.JWT;
//import com.auth0.jwt.JWTVerifier;
//import com.auth0.jwt.algorithms.Algorithm;
//import com.auth0.jwt.exceptions.JWTCreationException;
//import com.auth0.jwt.exceptions.JWTVerificationException;
//import com.auth0.jwt.interfaces.DecodedJWT;
//import com.limin.pojo.User;
//
//import java.util.Date;
//
//public class TokenUtils {
//
//    //token到期时间10小时
//    private static final long EXPIRE_TIME= 10*60*60*1000;
//
//    /**
//     * 生成token
//     *
//     * @param username 用户名
//     * @param secret   用户的密码
//     * @return 加密的token
//     */
//    public static String sign(String username, String secret){
//
//        String token=null;
//        try {
//            Date expireAt=new Date(System.currentTimeMillis()+EXPIRE_TIME);
//            token = JWT.create()
//                    .withIssuer("auth0")
//                    .withClaim("username", username)
//                    .withExpiresAt(expireAt)
//                    .sign(Algorithm.HMAC256(secret));
//        } catch (IllegalArgumentException| JWTCreationException je) {
//
//        }
//        System.out.println("token" + token);
//        return token;
//    }
//
//
//    /**
//     * 校验token是否正确
//     *
//     * @param token  密钥
//     * @param secret 用户的密码
//     * @return 是否正确
//     */
//    public static Boolean verify(String token, String username, String secret){
//
//        try {
//            //创建token验证器
//            JWTVerifier jwtVerifier = JWT.require(Algorithm.HMAC256(secret))
//                    .withIssuer("auth0")
//                    .withClaim("username", username)
//                    .build();
//            DecodedJWT decodedJWT=jwtVerifier.verify(token);
//            System.out.println("认证通过：");
//            System.out.println("username: " + decodedJWT.getClaim("username").asString());
//            System.out.println("过期时间：      " + decodedJWT.getExpiresAt());
//            return true;
//        } catch (IllegalArgumentException | JWTVerificationException e) {
//            //抛出错误即为验证不通过
//            return false;
//        }
//    }
//
//}
