package com.xoqao.web.bean.shop;

import java.io.Serializable;

/**
 * Created by win8.1 on 2017/7/10.
 */
public class Shop implements Serializable {

    private int sid;
    private String shopname;//店铺名称
    private String saddress; //地址
    private String stel;  //电话
    private Double slevel; //星级
    private Double longgitude; //经度
    private Double latitude;//纬度
    private String type; //店铺类型
    private Integer salesvo; //销售总量
    private String subscrib;  //店铺描述
    private String logo;  //店铺logo
    private String showpic; //店铺展示图片
    private String headershow;  //头部展示
    private String permitpic; //营业执照图片
    private String scope;  //经营范围
    private Integer city;//店铺所在城市
    private Integer bid;//店主id
    private Integer chain;//连锁
    private Integer openstatue;

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getShopname() {
        return shopname;
    }

    public void setShopname(String shopname) {
        this.shopname = shopname;
    }

    public String getSaddress() {
        return saddress;
    }

    public void setSaddress(String saddress) {
        this.saddress = saddress;
    }

    public String getStel() {
        return stel;
    }

    public void setStel(String stel) {
        this.stel = stel;
    }

    public Double getSlevel() {
        return slevel;
    }

    public void setSlevel(Double slevel) {
        this.slevel = slevel;
    }

    public Double getLonggitude() {
        return longgitude;
    }

    public void setLonggitude(Double longgitude) {
        this.longgitude = longgitude;
    }

    public Double getLatitude() {
        return latitude;
    }

    public void setLatitude(Double latitude) {
        this.latitude = latitude;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Integer getSalesvo() {
        return salesvo;
    }

    public void setSalesvo(Integer salesvo) {
        this.salesvo = salesvo;
    }

    public String getSubscrib() {
        return subscrib;
    }

    public void setSubscrib(String subscrib) {
        this.subscrib = subscrib;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public String getShowpic() {
        return showpic;
    }

    public void setShowpic(String showpic) {
        this.showpic = showpic;
    }

    public String getHeadershow() {
        return headershow;
    }

    public void setHeadershow(String headershow) {
        this.headershow = headershow;
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

    public Integer getCity() {
        return city;
    }

    public void setCity(Integer city) {
        this.city = city;
    }

    public Integer getBid() {
        return bid;
    }

    public void setBid(Integer bid) {
        this.bid = bid;
    }

    public Integer getChain() {
        return chain;
    }

    public void setChain(Integer chain) {
        this.chain = chain;
    }

    public Integer getOpenstatue() {
        return openstatue;
    }

    public void setOpenstatue(Integer openstatue) {
        this.openstatue = openstatue;
    }

    @Override
    public String toString() {
        return "Shop{" +
                "sid=" + sid +
                ", shopname='" + shopname + '\'' +
                ", saddress='" + saddress + '\'' +
                ", stel='" + stel + '\'' +
                ", slevel=" + slevel +
                ", longgitude=" + longgitude +
                ", latitude=" + latitude +
                ", type='" + type + '\'' +
                ", salesvo=" + salesvo +
                ", subscrib='" + subscrib + '\'' +
                ", logo='" + logo + '\'' +
                ", showpic='" + showpic + '\'' +
                ", headershow='" + headershow + '\'' +
                ", permitpic='" + permitpic + '\'' +
                ", scope='" + scope + '\'' +
                ", city=" + city +
                ", bid=" + bid +
                ", chain=" + chain +
                ", openstatue=" + openstatue +
                '}';
    }
}
