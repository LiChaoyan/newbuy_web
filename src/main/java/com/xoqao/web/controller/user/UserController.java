package com.xoqao.web.controller.user;

import com.xoqao.web.bean.user.User;
import com.xoqao.web.service.UserService;
import com.xoqao.web.utils.MD5Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * 说明：
 * Author: lovegod
 * Date:  2017/8/17.
 * Email:dx96_j@163.com
 */
@Controller
public class UserController {

    @Autowired
    private UserService userService;

    /**
     * 进入登录页面
     *
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/user/login")
    public String Login(Model model) throws Exception {
        return "user/Login";
    }

    /**
     * 登录提交
     *
     * @param username
     * @param password
     * @param httpSession
     * @return
     * @throws Exception
     */
    @RequestMapping("/user/login/sub")
    public String loginSub(Model model, String username, String password, HttpSession httpSession) throws Exception {
        if (null != username && null != password) {
            User user = userService.finduserOr(username);
            if (null != user && MD5Util.encode(password).equals(user.getPassword())) {
                httpSession.setAttribute("user", user);
                return "Index";
            } else {
                model.addAttribute("error_msg", "请输入正确的数据");
            }
        } else {
            model.addAttribute("error_msg", "请输入正确的数据");
        }
        return "user/Login";
    }

    /**
     * 用户注册
     *
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/user/Regist")
    public String Regist(Model model) throws Exception {
        return "user/Regist";
    }

    @RequestMapping("/Registtwo")
    public String Registtwo(Model model) throws Exception {
        return "user/Registtwo";
    }

    @RequestMapping("/Registthree")
    public String Registthree(Model model) throws Exception {
        return "user/Registthree";
    }

}
