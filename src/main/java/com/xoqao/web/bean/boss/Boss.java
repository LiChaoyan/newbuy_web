package com.xoqao.web.bean.boss;

/**
 * Created by lcy on 2017/7/12.
 */
public class Boss {
    private Integer bid;
    private String id;//身份证号
    private String name;
    private String nickname;
    private String password;
    private String phone;
    private String pic;
    private Integer sid;


    private String facepic; //用户证件像
    private String idpic;  //身份证正反照
    private Integer statue;  //店主状态


    public Integer getBid() {
        return bid;
    }

    public void setBid(Integer bid) {
        this.bid = bid;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFacepic() {
        return facepic;
    }

    public void setFacepic(String facepic) {
        this.facepic = facepic;
    }

    public String getIdpic() {
        return idpic;
    }

    public void setIdpic(String idpic) {
        this.idpic = idpic;
    }

    public Integer getStatue() {
        return statue;
    }

    public void setStatue(Integer statue) {
        this.statue = statue;
    }

    @Override
    public String toString() {
        return "Boss{" +
                "bid=" + bid +
                ", id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", nickname='" + nickname + '\'' +
                ", password='" + password + '\'' +
                ", phone='" + phone + '\'' +
                ", pic='" + pic + '\'' +
                ", sid=" + sid +
                ", facepic='" + facepic + '\'' +
                ", idpic='" + idpic + '\'' +
                ", statue=" + statue +
                '}';
    }
}
