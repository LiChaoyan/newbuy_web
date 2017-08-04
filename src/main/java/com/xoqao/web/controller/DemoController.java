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
    @RequestMapping("/Brand")
    public String Brand(Model model) throws Exception {
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
    @RequestMapping("/Product")
    public String Product(Model model) throws Exception {
        return "Product";
    }
    @RequestMapping("/sousuo")
    public String sousuo(Model model) throws Exception {
        return "sousuo";
    }
    @RequestMapping("/Member_Safenum")
    public String Member_Safenum(Model model) throws Exception {
        return "Member_Safenum";
    }
    @RequestMapping("/Member_Safeplace")
    public String Member_Safeplace(Model model) throws Exception {
        return "Member_Safeplace";
    }
    @RequestMapping("/Member_Safetel")
    public String Member_Safetel(Model model) throws Exception {
        return "Member_Safetel";
    }
    @RequestMapping("/BuyCar_Three")
    public String BuyCar_Three(Model model) throws Exception {
        return "BuyCar_Three";
    }
    @RequestMapping("/BuyCar")
    public String BuyCar(Model model) throws Exception {
        return "BuyCar";
    }
    @RequestMapping("/BuyCar_Two")
    public String BuyCar_Two(Model model) throws Exception {
        return "BuyCar_Two";
    }



    @RequestMapping("/Goodsadd")
    public String Goodsadd(Model model) throws Exception {
        return "Goodsadd";
    }
    @RequestMapping("/Index")
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
    @RequestMapping("/CooperationList")
    public String CooperationList (Model model) throws Exception {
        return "CooperationList";
    }
    @RequestMapping("/Order_finished")
    public String Order_finished (Model model) throws Exception {
        return "Order_finished";
    }
    @RequestMapping("/Order_My")
    public String Order_My (Model model) throws Exception {
        return "Order_My";
    }
    @RequestMapping("/Order_Undeliver")
    public String Order_Undeliver (Model model) throws Exception {
        return "Order_Undeliver";
    }
    @RequestMapping("/Order_Unpay")
    public String Order_Unpay (Model model) throws Exception {
        return "Order_Unpay";
    }
    @RequestMapping("/Order_Unreceive")
    public String Order_Unreceive (Model model) throws Exception {
        return "Order_Unreceive";
    }
    @RequestMapping("/Order_wuliu")
    public String Order_wuliu (Model model) throws Exception {
        return "Order_wuliu";
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
