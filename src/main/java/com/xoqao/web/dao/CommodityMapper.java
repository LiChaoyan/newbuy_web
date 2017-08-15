package com.xoqao.web.dao;

import com.xoqao.web.bean.commodity.*;
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
    int selectCommodityShopsize(@Param("page")Page page)throws Exception;
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
    //查找好评中评差评个数
    int selectGA(@Param("cid") int cid)throws Exception;
    int selectMA(@Param("cid") int cid)throws Exception;
    int selectBA(@Param("cid") int cid)throws Exception;
    int selectAssesssizeBycid(@Param("cid") int cid)throws Exception;
    //查找评论
    ArrayList<Assess> selectAssess(@Param("page")APage page)throws Exception;
    //商品参数筛选
    //1.城市筛选
    List<City> selectAllCity(@Param("cgid")int cgid)throws Exception;
}
