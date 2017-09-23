package com.xoqao.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 说明：此处座位新添加的页面测试使用
 * Author: lovegod
 * Date:  2017/8/18.
 * Email:dx96_j@163.com
 */
@Controller
public class ViewController {

    @RequestMapping("admin_boss")
    public String admin_boss(Model model) throws Exception {
        return "admin/admin_boss";
    }
    @RequestMapping("index_admin")
    public String index_admin(Model model) throws Exception {
        return "admin/index_admin";
    }
    @RequestMapping("admin_product")
    public String admin_product(Model model) throws Exception {
        return "admin/admin_product";
    }
    @RequestMapping("admin_shop")
    public String admin_shop(Model model) throws Exception {
        return "admin/admin_shop";
    }

}

