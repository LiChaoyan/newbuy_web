package com.xoqao.web.bean.commodity;

import java.awt.*;
import java.util.ArrayList;

/**
 * Created by win8.1 on 2017/7/26.
 */
public class Page {
    int p=1;//当前页数,从1开始
    int start=0;//每页开始在数据库中的位置
    int count = 2;//每页记录
    int listsize=0;
    int pagesize;
    int bp=0;//beforepage
    int ap=0;//afterpage
    int cgid=-1;
    String productname;
    String shopname;
    String city;
    int part=2;
    String big;
    String small;
    String secend;

    public String getCity() {
        return city;
    }

    public String getBig() {
        return big;
    }

    public void setBig(String big) {
        this.big = big;
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

    public void setCity(String city) {
        this.city = city;
    }

    public int getPart() {
        return part;
    }

    public void setPart(int part) {
        this.part = part;
    }

    public int getCgid() {
        return cgid;
    }

    public void setCgid(int cgid) {
        this.cgid = cgid;
    }

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname;
    }

    public String getShopname() {
        return shopname;
    }

    public void setShopname(String shopname) {
        this.shopname = shopname;
    }

    public int getP() {
        return p;
    }

    public void setP(int p) {
        this.p = p;
    }

    public int getStart() {
        return start;
    }

    public void setStart(int start) {
        this.start = start;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public int getListsize() {
        return listsize;
    }

    public void setListsize(int listsize) {
        this.listsize = listsize;
    }

    public int getPagesize() {
        return pagesize;
    }

    public void setPagesize(int pagesize) {
        this.pagesize = pagesize;
    }

    public int getBp() {
        return bp;
    }

    public void setBp(int bp) {
        this.bp = bp;
    }

    public int getAp() {
        return ap;
    }

    public void setAp(int ap) {
        this.ap = ap;
    }

    public void setPage(int p, int listsize) {
        this.p = p;
        this.listsize=listsize;
        //判断一共几页
        if(this.listsize%this.count==0){
            this.pagesize=this.listsize/count;
        }else{
            this.pagesize=this.listsize/count+1;
        }
        //判断每一页开始start
        this.start = (p-1) * this.count;
        //判断每一页的结束
        if(this.p==pagesize){
            this.count=this.listsize%this.count;
        }
        //判断p的上一页bp
        if(p==0){
            this.bp=0;
        }else{
            this.bp=p-1;
        }
        //判断p的下一页ap
        if(p==pagesize){
            this.ap=p;
        }else{
            this.ap=p+1;
        }
        //判断当前页面的前3页是否存在bplist


    }


}
