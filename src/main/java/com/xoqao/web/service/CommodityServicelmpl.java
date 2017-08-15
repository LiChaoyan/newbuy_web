package com.xoqao.web.service;

import com.github.pagehelper.sqlsource.PageProviderSqlSource;
import com.xoqao.web.bean.commodity.*;
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
    public int selectCommodityShopsize(Page page)throws Exception{
        return commodityMapper.selectCommodityShopsize(page);
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
    //热销商品
    public ArrayList<Commodity> selecthootBycid(int cid)throws Exception{
        return commodityMapper.selecthootBycid(cid);
    }
    //商品详情页对象
    public CommodityShop selectProductBycid(int cid)throws Exception{
        return commodityMapper.selectProductBycid(cid);
    }
    //查找好评差评个数
    public int selectGA(int cid)throws Exception{
        return commodityMapper.selectGA(cid);
    }
    public int selectMA(int cid)throws Exception{
        return commodityMapper.selectMA(cid);
    }
    public int selectBA(int cid)throws Exception{
        return commodityMapper.selectBA(cid);
    }
    public int selectAssesssizeBycid(int cid)throws Exception{
        return commodityMapper.selectAssesssizeBycid(cid);
    }
    //查找评论
    public ArrayList<Assess> selectAssess(APage page)throws Exception{
        return commodityMapper.selectAssess(page);
    }
    //商品参数筛选
    //1.城市筛选
    public List<City> selectAllCity(int cgid)throws Exception{
        return commodityMapper.selectAllCity(cgid);
    }

}
