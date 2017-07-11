package com.xoqao.web.service;

import com.xoqao.web.bean.shop.Shop;


import java.util.List;

/**
 * Author: lcy
 * Created by win8.1 on 2017/7/10.
 */
public interface ShopService {

    List<Shop> findAllShops()throws Exception;

    Shop saveShops(Shop shop)throws Exception;
}
