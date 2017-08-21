package com.xoqao.web.bean.commodity;

/**
 * Created by win8.1 on 2017/8/19.
 */
public class Cart {
    private int cbid;
    private int amount;
    private int cid;
    private String  commodity_name;
    private String  commodity_pic;
    private String commodity_select;
    private String shopname;
    private int sid;
    private int uid;
    private double price;

    public int getCbid() {
        return cbid;
    }

    public void setCbid(int cbid) {
        this.cbid = cbid;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getCommodity_name() {
        return commodity_name;
    }

    public void setCommodity_name(String commodity_name) {
        this.commodity_name = commodity_name;
    }

    public String getCommodity_pic() {
        return commodity_pic;
    }

    public void setCommodity_pic(String commodity_pic) {
        this.commodity_pic = commodity_pic;
    }

    public String getCommodity_select() {
        return commodity_select;
    }

    public void setCommodity_select(String commodity_select) {
        this.commodity_select = commodity_select;
    }

    public String getShopname() {
        return shopname;
    }

    public void setShopname(String shopname) {
        this.shopname = shopname;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
