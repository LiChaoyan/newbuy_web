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

    private String province;
    private String city;
    private String district;
    private String towns;
    private String community;

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
        int a=address.indexOf(" ");//System.out.println(a);
        if(a>0) {
            this.province = address.substring(0, a);
            int b = address.indexOf(" ",a+1);//System.out.println(b);
            if(b>0) {
                this.city = address.substring(a+1, b);
                int c = address.indexOf(" ",b+1);//System.out.println(c);
                if(c>0) {
                    this.district = address.substring(b+1, c);
                    int d = address.indexOf(" ",c+1);//System.out.println(d);
                    if(d>0) {
                        this.towns = address.substring(c+1, d);
                        int e = address.indexOf(" ",d+1);//System.out.println(e);
                        if(e>0) {//河南省 郑州市 新郑市 龙湖镇 小乔沟村委会 双湖经济开发区淮河路1号(中原工学院校医院西)中原工学院
                            this.community = address.substring(d+1, e);
                        }
                    }
                }
            }
        }

        //System.out.println(this.province+" "+this.city+" "+this.district+" "+this.towns+" "+this.community);
    }

    public String getProvince() {
        return province;
    }

    public String getCity() {
        return city;
    }

    public String getDistrict() {
        return district;
    }

    public String getTowns() {
        return towns;
    }

    public String getCommunity() {
        return community;
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

    public void setSexword(String sexword) {
        this.sexword = sexword;
        if(sexword.equals("男")){
            this.sex=0;
        }else{
            this.sex=1;
        }
        System.out.println(this.sexword+" "+this.sex);
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
