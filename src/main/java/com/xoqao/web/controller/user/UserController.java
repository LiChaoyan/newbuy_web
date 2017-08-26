package com.xoqao.web.controller.user;

import com.xoqao.web.bean.user.Id;
import com.xoqao.web.bean.user.User;
import com.xoqao.web.service.UserService;
import com.xoqao.web.utils.IdNetUtil;
import com.xoqao.web.utils.MD5Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;

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
    @RequestMapping("/user/Login")
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

    /**
     * 用户注册
     *
     * @param model
     * @param phonenumber
     * @param username
     * @param password
     * @param id
     * @param myname
     * @return
     * @throws Exception
     */
    @RequestMapping("/user/regist/sub")
    public String registSub(Model model, String phonenumber, String username, String password, String id, String myname) throws Exception {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        if (null != phonenumber && null != username && null != password && null != id && null != myname) {
            User user = new User();
            user.setPhone(phonenumber);
            user.setUsername(username);
            user.setPassword(password);
            user.setId(id);
            user.setName(myname);
            user.setRegisttime(sdf.format(new Date()));
            Id request1 = IdNetUtil.getRequest1(id);
            if (null != request1) {
                user.setGender(request1.getSex());
            }
            try {
                userService.insert(user);
                model.addAttribute("error_msg","注册成功");
                return "user/Login";
            } catch (Exception e) {
                e.printStackTrace();
                model.addAttribute("error_msg", "请检查手机号或用户名");
            }
        } else {
            model.addAttribute("error_msg", "请输入正确的参数");
        }
        return "user/Regist";
    }

}
