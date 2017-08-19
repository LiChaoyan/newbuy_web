package com.xoqao.web.bean.commodity;

/**
 * Created by win8.1 on 2017/8/9.
 */
public class Assess {
    private int aid;
    private int  cid;//商品cid
    private String detail;
    private double grade;
    private String hollrall;
    private String pics;
    private int uid;//userid
    private String  date;
    private String param;
    private String bossback;
    private int count;
    private int ogid;

    //用户信息
    private String username;
    private String headerpic;//头像

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public double getGrade() {
        return grade;
    }

    public void setGrade(double grade) {
        this.grade = grade;
    }

    public String getHollrall() {
        return hollrall;
    }

    public void setHollrall(String hollrall) {
        this.hollrall = hollrall;
    }

    public String getPics() {
        return pics;
    }

    public void setPics(String pics) {
        this.pics = pics;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getParam() {
        return param;
    }

    public void setParam(String param) {
        this.param = param;
    }

    public String getBossback() {
        return bossback;
    }

    public void setBossback(String bossback) {
        this.bossback = bossback;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public int getOgid() {
        return ogid;
    }

    public void setOgid(int ogid) {
        this.ogid = ogid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getHeaderpic() {
        return headerpic;
    }

    public void setHeaderpic(String headerpic) {
        this.headerpic = headerpic;
    }
}
