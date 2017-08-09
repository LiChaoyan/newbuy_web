package com.xoqao.web.dao;

import com.xoqao.web.bean.commodity.Commodity;
import com.xoqao.web.bean.commodity.CommodityShop;
import com.xoqao.web.bean.commodity.Page;
import com.xoqao.web.bean.commodity.Partshop;
import org.apache.ibatis.annotations.Param;
import org.junit.runners.Parameterized;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/**
 * Created by win8.1 on 2017/7/26.
 */
@Service
public interface CommodityMapper {
    ArrayList<CommodityShop> selectCommodityShopBy1(@Param("big")String big)throws Exception;
    int selectCommodityShopsize(@Param("cgid")int cgid)throws Exception;
    ArrayList<CommodityShop> selectCommodityShopBycgidpage(@Param("page") Page page)throws Exception;
    ArrayList<CommodityShop> selectCommodityShopBy2(@Param("big")String big,@Param("small")String small)throws Exception;
    int selectCommodityShopsizeByproductname(@Param("productname")String productname)throws Exception;
    ArrayList<CommodityShop> selectCommodityShopByproductname(@Param("page")Page page)throws Exception;
    ArrayList<CommodityShop> selectCommodityShopByshopname(@Param("page")Page page)throws Exception;
    ArrayList<CommodityShop> selectCommodityShopBycgid(@Param("cgid") int cgid)throws Exception;
    //合作商品
    ArrayList<Partshop> selectAllPartshop()throws Exception;
    //热销商品
    ArrayList<Commodity> selecthootBycid(@Param("cid") int cid)throws Exception;
    //商品详情页对象
    CommodityShop selectProductBycid(@Param("cid")int cid)throws Exception;
}
