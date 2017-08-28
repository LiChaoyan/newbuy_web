package com.xoqao.web.bean.Address;

/**
 * Created by win8.1 on 2017/8/23.
 */
public class Address {
    //province省
    private int pid;
    private String province;
    //city城市
    private int cityid;
    private String citycode;
    private String cityname;
    //district县
    private int did;
    private String districtcode;
    private String districtname;
    //towns乡镇
    private int tid;//自增id
    private String townscode;
    private String townsname;
    //Community社区信息
    private int cid;
    private String communitysort;//行政代码
    private String communitycode;
    private String communityname;

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public int getCityid() {
        return cityid;
    }

    public void setCityid(int cityid) {
        this.cityid = cityid;
    }

    public String getCitycode() {
        return citycode;
    }

    public void setCitycode(String citycode) {
        this.citycode = citycode;
    }

    public String getCityname() {
        return cityname;
    }

    public void setCityname(String cityname) {
        this.cityname = cityname;
    }

    public int getDid() {
        return did;
    }

    public void setDid(int did) {
        this.did = did;
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

    public int getTid() {
        return tid;
    }

    public void setTid(int tid) {
        this.tid = tid;
    }

    public String getTownscode() {
        return townscode;
    }

    public void setTownscode(String townscode) {
        this.townscode = townscode;
    }

    public String getTownsname() {
        return townsname;
    }

    public void setTownsname(String townsname) {
        this.townsname = townsname;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
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
}
