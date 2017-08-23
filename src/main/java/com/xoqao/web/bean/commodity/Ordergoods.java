package com.xoqao.web.bean.commodity;

/**
 * Created by win8.1 on 2017/8/22.
 */
public class Ordergoods {
    private int ogid;
    private int cid;
    private int count;
    private int evaluatestue=0;//评价状态
    private int oid;//订单id
    private String param;
    private int sid;
    private double totalprice;
    private String goodsname;
    private String logo;

    public Ordergoods(){};
    public Ordergoods(Cart cart){
        this.cid=cart.getCid();
        this.count=cart.getAmount();
        this.param=cart.getCommodity_select();
        this.sid=cart.getSid();
        this.totalprice=cart.getPrice()*cart.getAmount();
        this.goodsname=cart.getCommodity_name();
        this.logo=cart.getCommodity_pic();
    }

    public int getOgid() {
        return ogid;
    }

    public void setOgid(int ogid) {
        this.ogid = ogid;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public int getEvaluatestue() {
        return evaluatestue;
    }

    public void setEvaluatestue(int evaluatestue) {
        this.evaluatestue = evaluatestue;
    }

    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public String getParam() {
        return param;
    }

    public void setParam(String param) {
        this.param = param;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public double getTotalprice() {
        return totalprice;
    }

    public void setTotalprice(double totalprice) {
        this.totalprice = totalprice;
    }

    public String getGoodsname() {
        return goodsname;
    }

    public void setGoodsname(String goodsname) {
        this.goodsname = goodsname;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }
}
