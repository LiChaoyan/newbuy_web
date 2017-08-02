package com.xoqao.web.service;

import com.github.pagehelper.sqlsource.PageProviderSqlSource;
import com.xoqao.web.bean.commodity.Commodity;
import com.xoqao.web.bean.commodity.CommodityShop;
import com.xoqao.web.bean.commodity.Page;
import com.xoqao.web.bean.commodity.Partshop;
import com.xoqao.web.dao.CommodityMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by win8.1 on 2017/7/26.
 */
@Service
public class CommodityServicelmpl implements CommodityService{
    @Autowired
    private CommodityMapper commodityMapper;
    public ArrayList<CommodityShop> selectCommodityShopBy1(String big)throws Exception{
        return commodityMapper.selectCommodityShopBy1(big);
    }
    public ArrayList<CommodityShop> selectCommodityShopBycgidpage( Page page)throws Exception{
     return commodityMapper.selectCommodityShopBycgidpage(page);
    }
    public int selectCommodityShopsize(int cgid)throws Exception{
        return commodityMapper.selectCommodityShopsize(cgid);
    }
    public ArrayList<CommodityShop> selectCommodityShopBy2(String big,String small)throws Exception{
        return commodityMapper.selectCommodityShopBy2(big,small);
    }
    public ArrayList<CommodityShop> selectCommodityShopBycgid(int cgid)throws Exception{
        return commodityMapper.selectCommodityShopBycgid(cgid);
    }
    //查询长度
    public int selectCommodityShopsizeByproductname(String productname)throws Exception{
        return commodityMapper.selectCommodityShopsizeByproductname(productname);
    }
    //查询结果集
    public ArrayList<CommodityShop> selectCommodityShopByproductname(Page page)throws Exception{
        return commodityMapper.selectCommodityShopByproductname(page);
    }
    public ArrayList<CommodityShop> selectCommodityShopByshopname(Page page)throws Exception{
        return commodityMapper.selectCommodityShopByshopname(page);
    }


//合作商品
    public ArrayList<Partshop> selectAllPartshop()throws Exception{
        return commodityMapper.selectAllPartshop();
    }
}
