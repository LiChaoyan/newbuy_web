package com.xoqao.web.dao;

import com.xoqao.web.bean.commodity.Page;
import com.xoqao.web.bean.shop.Shop;
import com.xoqao.web.bean.shop.ShopCity;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Author: lcy
 * Created by win8.1 on 2017/7/10.
 */
@Service
public interface ShopMapper {
    List<Shop> findAllShops()throws Exception;
    Shop saveShops(Shop shop)throws Exception;
    void updateShop(Shop shop)throws Exception;
    Shop selectShopBybid(@Param("bid")int  bid)throws Exception;
    Shop selectShopBysid(@Param("sid")int sid)throws Exception;
    int selectShopsizeByname(@Param("shopname") String shopname)throws Exception;
    ArrayList<ShopCity> selectShopByname(@Param("page") Page page)throws Exception;
}
