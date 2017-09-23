package com.xoqao.web.bean.bankShop;

import com.xoqao.web.bean.shop.Shop;

import java.io.Serializable;

/**
 * 说明：
 * Author: lovegod
 * Date:  2017/8/28.
 * Email:dx96_j@163.com
 */
public class BankShopSuShop extends BankShop implements Serializable {
    private Shop shop;

    public Shop getShop() {
        return shop;
    }

    public void setShop(Shop shop) {
        this.shop = shop;
    }
}
