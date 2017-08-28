package com.xoqao.web.bean.employ;

/**
 * 说明：
 * Author: lovegod
 * Date:  2017/8/27.
 * Email:dx96_j@163.com
 */
public class EmPloyerCuShop extends Employer {

    private String shopname;
    private String logo;

    public String getShopname() {
        return shopname;
    }

    public void setShopname(String shopname) {
        this.shopname = shopname;
    }

    @Override
    public String getLogo() {
        return logo;
    }

    @Override
    public void setLogo(String logo) {
        this.logo = logo;
    }
}
