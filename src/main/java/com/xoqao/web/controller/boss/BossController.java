package com.xoqao.web.controller.boss;

import com.xoqao.web.bean.boss.Boss;
import com.xoqao.web.bean.user.User;
import com.xoqao.web.commen.CommonValue;
import com.xoqao.web.service.BossService;
import com.xoqao.web.service.UserService;
import com.xoqao.web.utils.MD5Util;
import com.xoqao.web.utils.QiNiuFileUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * 说明：
 * Author: lovegod
 * Date:  2017/8/21.
 * Email:dx96_j@163.com
 */
@Controller
@RequestMapping("/boss")
public class BossController {

    @Autowired
    private BossService bossService;
    @Autowired
    private UserService userService;


    /**
     * 进入店主注册页面
     *
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/Regist_Boss")
    public String Regist_shopkeeper(Model model) throws Exception {
        return "shopkeeper/Regist_shopkeeper";
    }
    @RequestMapping("/Login_shopkeeper")
    public String Login_shopkeeper(Model model) throws Exception {
        return "shopkeeper/Login_shopkeeper";
    }

    /**
     * 店主注册提交
     *
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/regist_sub")
    public String registSub(Model model, String phonenumber, String username, String password, String id, String myname, MultipartFile idz, MultipartFile idf, MultipartFile face) throws Exception {
        if (idz != null && idf != null && face != null) {
            User userByphone = userService.findUserByphone(phonenumber);
            Boss bossByphone = bossService.findBossByphone(phonenumber);
            Boss boosByNick = bossService.findBoosByNick(username);
            if(null==boosByNick) {  //判断用户名是否已存在
                if (null == userByphone && null == bossByphone) {   //判断手机号是否已经存在
                    Boss boss=new Boss();
                    boss.setNickname(username);
                    boss.setPhone(phonenumber);
                    boss.setId(id);
                    boss.setName(myname);
                    boss.setPassword(MD5Util.encode(password));
                    String facepic = QiNiuFileUtil.updalodByByte(face.getBytes());
                    boss.setFacepic(CommonValue.QINIUPATH+facepic);
                    String idze = QiNiuFileUtil.updalodByByte(idz.getBytes());
                    String idfe = QiNiuFileUtil.updalodByByte(idf.getBytes());
                    boss.setIdpic(idze+";"+idfe);
                    try {
                        bossService.insertBoss(boss);
                        model.addAttribute("error_msg", "注册成功！");
                        return "user/Login";
                    }catch (Exception e){
                        e.printStackTrace();
                        model.addAttribute("error_msg", "注册失败，请重新尝试！");
                        return "shopkeeper/Regist_shopkeeper";
                    }

                } else {
                    model.addAttribute("error_msg", "改手机号已存在");
                    return "shopkeeper/Regist_shopkeeper";
                }
            }else{
                model.addAttribute("error_msg", "用户名已存在");
                return "shopkeeper/Regist_shopkeeper";
            }

        } else {
            model.addAttribute("error_msg", "请注意输入数据");
            return "shopkeeper/Regist_shopkeeper";
        }
    }

}
