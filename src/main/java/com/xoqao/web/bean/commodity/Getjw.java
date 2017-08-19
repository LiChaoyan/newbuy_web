package com.xoqao.web.bean.commodity;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;

/**
 * Created by win8.1 on 2017/8/17.
 */

public class Getjw {

     private double x;
     private double y;

    public void setX(double x) {
        this.x = x;
    }

    public String getXY(String ip) {
        String[] jw=getIPXY(ip);
        this.x=Double.valueOf(jw[0]);
        this.y=Double.valueOf(jw[1]);
        String range="ROUND("+
                "6378.138 * 2 * ASIN("+
                        "SQRT("+
                                "POW("+
                                        "SIN("+
                                                "("+
                                                        this.x +"* PI() / 180 - shop.latitude * PI() / 180"+
                                                ") / 2"+
                                        "),"+
                                        "2"+
                                 ") + COS("+this.x+" * PI() / 180) * COS(shop.latitude * PI() / 180) * POW("+
                                        "SIN("+
                                                "("+
                                                        this.y+" * PI() / 180 - shop.longgitude * PI() / 180"+
                                                ") / 2"+
                                        "),"+
                                        "2"+
                                ")"+
                        ")"+
                ") * 1000"+
        ")";
        return range;
    }


    /**
     * 获取指定IP对应的经纬度（为空返回当前机器经纬度）
     *
     * @param ip
     * @return
     */
    @org.jetbrains.annotations.Nullable
    public static String[] getIPXY(String ip) {

        String ak = "WTznswwX57OEdcEuS6YXlmmK8VQhQX5e";
        if (null == ip) {
            ip = "";
        }

        try {

            URL url = new URL("http://api.map.baidu.com/location/ip?ak=" + ak
                    + "&ip=" + ip + "&coor=bd09ll");
            //http://api.map.baidu.com/location/ip?ak=WTznswwX57OEdcEuS6YXlmmK8VQhQX5e&ip=118.89.171.150&coor=bd09ll
            InputStream inputStream = url.openStream();
            InputStreamReader inputReader = new InputStreamReader(inputStream);
            BufferedReader reader = new BufferedReader(inputReader);
            StringBuffer sb = new StringBuffer();
            String str=null;
            do {
                str = reader.readLine();
                sb.append(str);
            } while (null != str);


            str = sb.toString();
            if (str.length()<=0||str==null) {
                return null;
            }


// 获取坐标位子
            int index = str.indexOf("point");
            int end = str.indexOf("}}", index);


            if (index == -1 || end == -1) {
                return null;
            }


            str = str.substring(index - 1, end + 1);
            if ((null == str) || str.length()<=0) {
                return null;
            }


            String[] ss = str.split(":");
            if (ss.length != 4) {
                return null;
            }


            String x = ss[2].split(",")[0];
            String y = ss[3];


            x = x.substring(x.indexOf("\"") + 1, x.indexOf("\"", 1));
            y = x.substring(y.indexOf("\"") + 1, y.indexOf("\"", 1));

            return new String[] { x, y };


        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }


        return null;
    }
}
