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

public class Towns {
    private Integer tid;
    private Integer did;
    private String townscode;
    private String townsname;
    private String url;
    private Integer mark;

    public Integer getTid() {
        return tid;
    }

    public void setTid(Integer tid) {
        this.tid = tid;
    }

    public Integer getDid() {
        return did;
    }

    public void setDid(Integer did) {
        this.did = did;
    }

    public String getTownscode() {
        return townscode;
    }

    public void setTownscode(String townscode) {
        this.townscode = townscode;
    }

    public String getTownsname() {
        return townsname;
    }

    public void setTownsname(String townsname) {
        this.townsname = townsname;
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
        return "Towns{" +
                "tid=" + tid +
                ", did=" + did +
                ", townscode='" + townscode + '\'' +
                ", townsname='" + townsname + '\'' +
                ", url='" + url + '\'' +
                ", mark=" + mark +
                '}';
    }
}
