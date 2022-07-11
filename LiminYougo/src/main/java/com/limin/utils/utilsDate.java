package com.limin.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author : 小冥
 * @date : 03:05 2022/5/19
 * */

public class utilsDate {
    public static String getDate(){
        Date date = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return simpleDateFormat.format(date);
    }
}
