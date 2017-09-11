package com.xoqao.web.bean.city;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 说明：
 * Author: lovegod
 * Date:  2017/7/18.
 * Email:dx96_j@163.com
 */
public class City {

    private Integer cid;
    private Integer pid;
    private String citycode;
    private String cityname;
    private String url;
    private Integer mark;

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getCitycode() {
        return citycode;
    }

    public void setCitycode(String citycode) {
        this.citycode = citycode;
    }

    public String getCityname() {
        return cityname;
    }

    public void setCityname(String cityname) {
        this.cityname = cityname;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Integer getMark() {
        return mark;
    }

    public void setMark(Integer mark) {
        this.mark = mark;
    }

    @Override
    public String toString() {
        return "City{" +
                "cid=" + cid +
                ", pid=" + pid +
                ", citycode='" + citycode + '\'' +
                ", cityname='" + cityname + '\'' +
                ", url='" + url + '\'' +
                ", mark=" + mark +
                '}';
    }
}
