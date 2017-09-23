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
public class District {
    private Integer did;
    private Integer cid;
    private String districtcode;
    private String districtname;
    private String url;
    private Integer mark;

    public Integer getDid() {
        return did;
    }

    public void setDid(Integer did) {
        this.did = did;
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getDistrictcode() {
        return districtcode;
    }

    public void setDistrictcode(String districtcode) {
        this.districtcode = districtcode;
    }

    public String getDistrictname() {
        return districtname;
    }

    public void setDistrictname(String districtname) {
        this.districtname = districtname;
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
        return "District{" +
                "did=" + did +
                ", cid=" + cid +
                ", districtcode='" + districtcode + '\'' +
                ", districtname='" + districtname + '\'' +
                ", url='" + url + '\'' +
                ", mark=" + mark +
                '}';
    }
}
