package com.xoqao.web.controller.shopmanager;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Author：1Q84
 * Date：2017/8/28
 * E-mail：lzhuo_1995@163.com
 */
@Controller
@RequestMapping("/shop")
public class ShopmanagerController {

    /**
     * 店铺经理首页
     * */
    @RequestMapping("/indexShopManager")
    public String indexShopManager1(Model model) throws Exception {
        return "shopmanager/Index_ShopManager";
    }

    /**
     * 商品管理( 默认查看商品 )
     * */
    @RequestMapping("/managerGoods")
    public String managerGoods(Model model)throws Exception{
        return "shopmanager/managedGoods/ManagedGoods";
    }

    /**
     * 添加、删除商品
     * */
    @RequestMapping("/addDeletedGoods")
    public String addDeletedGoods(Model model)throws Exception{
        return "shopmanager/managedGoods/AddDeletedGoods";
    }

    /**
     * 商品上下架
     * */
    @RequestMapping("/upDownGoods")
    public String upDownGoods(Model model)throws Exception{
        return "shopmanager/managedGoods/UpDownGoods";
    }

    /**
     * 热力分析
     * */
    @RequestMapping("/heatMap")
    public String heatMap(Model model)throws Exception{
        return "shopmanager/HeatMap";
    }

}
