package com.xoqao.web.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 说明：
 * Author: lovegod
 * Date:  2017/8/17.
 * Email:dx96_j@163.com
 */
@Controller
public class UserController {

    /**
     * 进入登录页面
     *
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/user/login")
    public String Login(Model model) throws Exception {
        return "Login";
    }

    /**
     * 用户注册
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/user/Regist")
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

}
