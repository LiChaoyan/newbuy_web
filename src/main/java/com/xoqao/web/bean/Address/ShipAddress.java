package com.xoqao.web.bean.Address;

/**
 * Created by win8.1 on 2017/8/22.
 */
public class ShipAddress {
    private int said;
    private int sex;
    private int statue=0;
    private int uid;
    private String name;
    private String phone;
    private String address;
    private String zip;
    private String sexword;

    public String getSexword() {
        return sexword;
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getZip() {
        return zip;
    }

    public void setZip(String zip) {
        this.zip = zip;
    }

    public int getSaid() {
        return said;
    }

    public void setSaid(int said) {
        this.said = said;
    }

    public int getSex() {
        return sex;
    }

    public void setSex(int sex) {
        this.sex = sex;
        if(sex==0){
            this.sexword="男";
        }else{
            this.sexword="女";
        }
    }

    public int getStatue() {
        return statue;
    }

    public void setStatue(int statue) {
        this.statue = statue;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }
}
