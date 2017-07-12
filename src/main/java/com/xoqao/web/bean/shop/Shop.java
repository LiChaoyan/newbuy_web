package com.xoqao.web.bean.shop;

import java.io.Serializable;

/**
 * Created by win8.1 on 2017/7/10.
 */
public class Shop implements Serializable {
    private Integer sid;
    private double latitude;
    private String logo;
    private double longgitude;
    private String saddress;
    private int salesvo;
    private String shopname;
    private String showpic;
    private double slevel;
    private String stel;
    private String subscrib;
    private String type;
    private String headershow;
    private String bossnick;
    private String bosspass;
    private String bosspic;
    private String permitpic;
    private String scope;
    private String city;

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public double getLonggitude() {
        return longgitude;
    }

    public void setLonggitude(double longgitude) {
        this.longgitude = longgitude;
    }

    public String getSaddress() {
        return saddress;
    }

    public void setSaddress(String saddress) {
        this.saddress = saddress;
    }

    public int getSalesvo() {
        return salesvo;
    }

    public void setSalesvo(int salesvo) {
        this.salesvo = salesvo;
    }

    public String getShopname() {
        return shopname;
    }

    public void setShopname(String shopname) {
        this.shopname = shopname;
    }

    public String getShowpic() {
        return showpic;
    }

    public void setShowpic(String showpic) {
        this.showpic = showpic;
    }

    public double getSlevel() {
        return slevel;
    }

    public void setSlevel(double slevel) {
        this.slevel = slevel;
    }

    public String getSubscrib() {
        return subscrib;
    }

    public void setSubscrib(String subscrib) {
        this.subscrib = subscrib;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getHeadershow() {
        return headershow;
    }

    public void setHeadershow(String headershow) {
        this.headershow = headershow;
    }

    public double getLatitude() {
        return latitude;
    }

    public void setLatitude(double latitude) {
        this.latitude = latitude;
    }

    public String getStel() {
        return stel;
    }

    public void setStel(String stel) {
        this.stel = stel;
    }



    public String getBossnick() {
        return bossnick;
    }

    public void setBossnick(String bossnick) {
        this.bossnick = bossnick;
    }

    public String getBosspass() {
        return bosspass;
    }

    public void setBosspass(String bosspass) {
        this.bosspass = bosspass;
    }

    public String getBosspic() {
        return bosspic;
    }

    public void setBosspic(String bosspic) {
        this.bosspic = bosspic;
    }

    public String getPermitpic() {
        return permitpic;
    }

    public void setPermitpic(String permitpic) {
        this.permitpic = permitpic;
    }

    public String getScope() {
        return scope;
    }

    public void setScope(String scope) {
        this.scope = scope;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    @Override
    public String toString() {
        return "Shop{" +
                "sid=" + sid +
                ", latitude=" + latitude +
                ", logo='" + logo + '\'' +
                ", longgitude=" + longgitude +
                ", saddress='" + saddress + '\'' +
                ", salesvo=" + salesvo +
                ", shopname='" + shopname + '\'' +
                ", showpic='" + showpic + '\'' +
                ", slevel=" + slevel +
                ", phone='" + stel + '\'' +
                ", subscrib='" + subscrib + '\'' +
                ", type='" + type + '\'' +
                ", headershow='" + headershow + '\'' +
                ", bossnick='" + bossnick + '\'' +
                ", bosspass='" + bosspass + '\'' +
                ", bosspic='" + bosspic + '\'' +
                ", permitpic='" + permitpic + '\'' +
                ", scope='" + scope + '\'' +
                ", city='" + city + '\'' +
                '}';
    }

}
