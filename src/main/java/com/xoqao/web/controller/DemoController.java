package com.xoqao.web.controller;

import com.xoqao.web.bean.user.User;
import com.xoqao.web.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * 说明：
 * Author: lovegod
 * Date:  2017/7/9.
 * Email:dx96_j@163.com
 */
@Controller
public class DemoController {

    @Autowired
    UserService userService;

    @RequestMapping("/backlogin")
    public String backlogin(Model model) throws Exception {
        return "backmanage/backlogin";
    }
    @RequestMapping("/brand")
    public String BRAND(Model model) throws Exception {
        return "Brand";
    }
    @RequestMapping("/Member_User")
    public String Member_User(Model model) throws Exception {
        return "Member_User";
    }
    @RequestMapping("/Member_Head")
    public String Member_Head(Model model) throws Exception {
        return "Member_Head";
    }
    @RequestMapping("/Member_Safehead")
    public String Member_Safehead(Model model) throws Exception {
        return "Member_Safehead";
    }


    @RequestMapping("/goodsadd")
    public String Goodsadd(Model model) throws Exception {
        return "Goodsadd";
    }
    @RequestMapping("/index")
    public String INDEX(Model model) throws Exception {
        return "Index";
    }
    @RequestMapping("/CategoryList")
    public String CategoryList(Model model) throws Exception {
        return "CategoryList";
    }
    @RequestMapping("/Login")
    public String Login(Model model) throws Exception {
        return "Login";
    }
    @RequestMapping("/Regist")
    public String Regist(Model model) throws Exception {
        return "Regist";
    }
    @RequestMapping("/Registtwo")
    public String Registtwo (Model model) throws Exception {
        return "Registtwo";
    }
    @RequestMapping("/Registthree")
    public String Registthree (Model model) throws Exception {
        return "Registthree";
    }
    @RequestMapping("/product")
    public String Product (Model model) throws Exception {
        return "Product";
    }


    @RequestMapping("/postManage")
    public String postmanage(Model model) throws Exception {
        return "backmanage/postmanage";
    }

    @RequestMapping("/intoSecAdd")
    public String sectionAdd(Model model) throws Exception {
        return "backmanage/sectionAdd";
    }


    @RequestMapping("/sectionList")
    public String deleteSec(Model model) {
        List<User> allUsers = null;
        try {
            allUsers = userService.findAllUsers();
        } catch (Exception e) {
            e.printStackTrace();
        }
        model.addAttribute("users",allUsers);
        return "backmanage/sectionList";
    }
}
