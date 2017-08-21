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

    @RequestMapping("/shopadd_online")
    public String Regist_shop(Model model) throws Exception {
        return "shopkeeper/shopadd_online";
    }

}
