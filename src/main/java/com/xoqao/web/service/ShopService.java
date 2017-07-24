package com.xoqao.web.service;

import com.xoqao.web.bean.boss.Boss;
import com.xoqao.web.bean.shop.Shop;


import java.util.List;

/**
 * Author: lcy
 * Created by lcy on 2017/7/10.
 */
public interface ShopService {

    List<Shop> findAllShops()throws Exception;

    Shop saveShops(Shop shop)throws Exception;
    void updateShop(Shop shop)throws Exception;
    Shop selectShopBybid(Integer bid) throws Exception;
    Shop selectShopBysid(Integer sid) throws Exception;


}
