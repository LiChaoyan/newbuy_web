package com.xoqao.web.service;

import com.xoqao.web.bean.commodity.Commodity;
import com.xoqao.web.bean.commodity.CommodityShop;
import com.xoqao.web.bean.commodity.Page;
import com.xoqao.web.bean.commodity.Partshop;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by win8.1 on 2017/7/26.
 */
public interface CommodityService {
    ArrayList<CommodityShop> selectCommodityShopBy1(String big) throws Exception;

    int selectCommodityShopsize(int cgid) throws Exception;

    ArrayList<CommodityShop> selectCommodityShopBycgid(int cgid) throws Exception;

    ArrayList<CommodityShop> selectCommodityShopBycgidpage(Page page) throws Exception;

    ArrayList<CommodityShop> selectCommodityShopBy2(String big, String small) throws Exception;

    int selectCommodityShopsizeByproductname(String productname) throws Exception;

    ArrayList<CommodityShop> selectCommodityShopByproductname(Page page) throws Exception;

    ArrayList<CommodityShop> selectCommodityShopByshopname(Page page) throws Exception;
    //合作商品
    ArrayList<Partshop> selectAllPartshop()throws Exception;
    //热销商品
    ArrayList<Commodity> selecthootBycid(int cid)throws Exception;
    //商品详情页对象
    CommodityShop selectProductBycid(int cid)throws Exception;
}