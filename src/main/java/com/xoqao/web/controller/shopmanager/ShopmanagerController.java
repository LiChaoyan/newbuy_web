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
@RequestMapping("/shopmanager")
public class ShopmanagerController {

    @RequestMapping("/indexShopManager")
    public String indexShopManager(Model model)throws Exception{
        return "shopmanager/Index_ShopManager";
    }
}
