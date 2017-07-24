package com.xoqao.web.bean.category;

/**
 * Created by win8.1 on 2017/7/20.
 */
public class Category {
    private int cgid;
    private String big;
    private  int sid;
    private String logo;
    private String small;
    private String secend;

    public int getCgid() {
        return cgid;
    }

    public void setCgid(int cgid) {
        this.cgid = cgid;
    }

    public String getBig() {
        return big;
    }

    public void setBig(String big) {
        this.big = big;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public String getSmall() {
        return small;
    }

    public void setSmall(String small) {
        this.small = small;
    }

    public String getSecend() {
        return secend;
    }

    public void setSecend(String secend) {
        this.secend = secend;
    }

    @Override
    public String toString() {
        return "Category{" +
                "cgid=" + cgid +
                ", big='" + big + '\'' +
                ", sid=" + sid +
                ", logo='" + logo + '\'' +
                ", small='" + small + '\'' +
                ", secend='" + secend + '\'' +
                '}';
    }
}
