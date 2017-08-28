package com.xoqao.web.service;

import com.xoqao.web.bean.commodity.Page;
import com.xoqao.web.bean.shop.Shop;
import com.xoqao.web.bean.shop.ShopCity;
import com.xoqao.web.dao.ShopMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Author: lcy
 * Created by win8.1 on 2017/7/10.10
 */
@Service
public class ShopServicelmpl implements ShopService{

    @Autowired
    private ShopMapper shopMapper;

    public List<Shop> findAllShops() throws Exception {
        List<Shop> allShops = shopMapper.findAllShops();
        return allShops;
    }

    public Shop saveShops(Shop shop)throws Exception{
        return shopMapper.saveShops(shop);
    }
    public void updateShop(Shop shop)throws Exception{
         shopMapper.updateShop(shop);
    }
    public Shop selectShopBybid(Integer bid)throws Exception{
        return shopMapper.selectShopBybid(bid);
    }
    public Shop selectShopBysid(Integer sid)throws Exception{
        return shopMapper.selectShopBysid(sid);
    }
    public ArrayList<ShopCity> selectShopByname(Page page)throws Exception{
        return shopMapper.selectShopByname(page);
    }

    public void insertShop(Shop shop) throws Exception {
        shopMapper.insertShop(shop);
    }

    public List<Shop> findShopByBid(Integer bid) throws Exception {
        List<Shop> shopByBid = shopMapper.findShopByBid(bid);
        return shopByBid;
    }

    public Shop findShopBySid(int sid) throws Exception {
        Shop shopBySid = shopMapper.findShopBySid(sid);
        return shopBySid;
    }

    public int selectShopsizeByname(String shopname)throws Exception{
        return shopMapper.selectShopsizeByname(shopname);
    }


}
