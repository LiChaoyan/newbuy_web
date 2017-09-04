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

public class Community {
    private Integer cid;
    private Integer tid;
    private String communitysort;
    private String communitycode;
    private String communityname;
    private String url;

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public Integer getTid() {
        return tid;
    }

    public void setTid(Integer tid) {
        this.tid = tid;
    }

    public String getCommunitysort() {
        return communitysort;
    }

    public void setCommunitysort(String communitysort) {
        this.communitysort = communitysort;
    }

    public String getCommunitycode() {
        return communitycode;
    }

    public void setCommunitycode(String communitycode) {
        this.communitycode = communitycode;
    }

    public String getCommunityname() {
        return communityname;
    }

    public void setCommunityname(String communityname) {
        this.communityname = communityname;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Override
    public String toString() {
        return "Community{" +
                "cid=" + cid +
                ", tid=" + tid +
                ", communitysort='" + communitysort + '\'' +
                ", communitycode='" + communitycode + '\'' +
                ", communityname='" + communityname + '\'' +
                ", url='" + url + '\'' +
                '}';
    }
}
