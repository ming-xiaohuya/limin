package com.limin.utils;

import java.util.UUID;

/**
 *
 * @author : 小冥
 * @date : 03:05 2022/5/19
 * */

public class utilsID {
    public static String getId(){

        return UUID.randomUUID().toString().replaceAll("-","").substring(0,8);
    }
}
