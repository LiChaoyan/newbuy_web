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
public class Province {
    private int pid;
    private String province;
    private String url;
    private Integer mark;

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
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
        return "Province{" +
                "pid=" + pid +
                ", province='" + province + '\'' +
                ", url='" + url + '\'' +
                ", mark=" + mark +
                '}';
    }
}
