package com.xoqao.web.bean.commodity;

/**
 * Created by win8.1 on 2017/8/22.
 */
public class Orders {
    private int oid;
    private int count;
    private String createtime;
    private String dealtime;
    private double freight;
    private String number;
    private int openstatue=0;
    private String paytime;
    private String paytype;
    private int said;//收货地址id
    private String shiptime;//发货时间
    private int sid;
    private int statue=0;//0未付款1代发货2待收货3已收货
    private double totalprice;
    private int uid;
    private  String leaveword;

    public Orders(){};
    public Orders(Cart cart){
        this.uid=cart.getUid();
        this.count=cart.getAmount();
        this.sid=cart.getSid();
        this.totalprice=cart.getAmount()*cart.getPrice();

    }

    public String getLeaveword() {
        return leaveword;
    }

    public void setLeaveword(String leaveword) {
        this.leaveword = leaveword;
    }

    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }

    public String getDealtime() {
        return dealtime;
    }

    public void setDealtime(String dealtime) {
        this.dealtime = dealtime;
    }

    public double getFreight() {
        return freight;
    }

    public void setFreight(double freight) {
        this.freight = freight;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public int getOpenstatue() {
        return openstatue;
    }

    public void setOpenstatue(int openstatue) {
        this.openstatue = openstatue;
    }

    public String getPaytime() {
        return paytime;
    }

    public void setPaytime(String paytime) {
        this.paytime = paytime;
    }

    public String getPaytype() {
        return paytype;
    }

    public void setPaytype(String paytype) {
        this.paytype = paytype;
    }

    public int getSaid() {
        return said;
    }

    public void setSaid(int said) {
        this.said = said;
    }

    public String getShiptime() {
        return shiptime;
    }

    public void setShiptime(String shiptime) {
        this.shiptime = shiptime;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public int getStatue() {
        return statue;
    }

    public void setStatue(int statue) {
        this.statue = statue;
    }

    public double getTotalprice() {
        return totalprice;
    }

    public void setTotalprice(double totalprice) {
        this.totalprice = totalprice;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }
}
