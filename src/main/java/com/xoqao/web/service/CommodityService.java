package com.xoqao.web.service;

import com.xoqao.web.bean.commodity.*;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by win8.1 on 2017/7/26.
 */
public interface CommodityService {
    ArrayList<CommodityShop> selectCommodityShopBy1(String big) throws Exception;

    int selectCommodityShopsize(Page page) throws Exception;

    ArrayList<CommodityShop> selectCommodityShopBycgid(int cgid) throws Exception;

    ArrayList<CommodityShop> selectCommodityShopBycgidpage(Page page) throws Exception;

    ArrayList<CommodityShop> selectCommodityShopBy2(String big, String small) throws Exception;

    int selectCommodityShopsizeByproductname(Page page) throws Exception;

    ArrayList<CommodityShop> selectCommodityShopByproductname(Page page) throws Exception;

    ArrayList<CommodityShop> selectCommodityShopByshopname(Page page) throws Exception;
    //合作商品
    ArrayList<Partshop> selectAllPartshop()throws Exception;
    //热销商品
    ArrayList<Commodity> selecthootBycid(int cid)throws Exception;
    //商品详情页对象
    CommodityShop selectProductBycid(int cid)throws Exception;
    //查找好评中评差评个数
    int selectGA(@Param("cid") int cid)throws Exception;
    int selectMA(@Param("cid") int cid)throws Exception;
    int selectBA(@Param("cid") int cid)throws Exception;
    int selectAssesssizeBycid(@Param("cid") int cid)throws Exception;
    //查找评论
    ArrayList<Assess> selectAssess(@Param("page")APage page)throws Exception;
    //商品参数筛选
    //1.城市筛选
    List<City> selectAllCity(Page page)throws Exception;
}