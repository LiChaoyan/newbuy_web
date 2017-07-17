package com.xoqao.web.controller;

import com.xoqao.web.bean.user.User;
import com.xoqao.web.bean.shop.Shop;
import com.xoqao.web.bean.boss.Boss;
import com.xoqao.web.service.UserService;
import com.xoqao.web.service.ShopService;
import com.xoqao.web.service.BossService;
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

    @Autowired
    ShopService shopService;

    @Autowired
    BossService bossService;

    @RequestMapping("/backlogin")
    public String backlogin(Model model) throws Exception {
        return "backmanage/backlogin";
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
        model.addAttribute("users", allUsers);
        return "backmanage/sectionList";
    }


    @RequestMapping("/shopList")
    public String selectShops(Model model) {
        List<Shop> allShops = null;
        try {
            allShops = shopService.findAllShops();
        } catch (Exception e) {
            e.printStackTrace();
        }
        model.addAttribute("shops", allShops);
        return "backmanage/shopList";
    }

    @RequestMapping("/shopAdd")
    public String insertShop(Shop shop) throws Exception{
        shop.setShopname(shop.getShopname());
        shop.setType(shop.getType());
        shop.setStel(shop.getStel());
        shop.setCity(shop.getCity());
        shop.setSaddress(shop.getSaddress());
        shop.setScope(shop.getScope());
        shop.setSubscrib(shop.getSubscrib());
        if(shop.getShopname()!=null) {
            try {
                shopService.saveShops(shop);
            }catch(Exception e){
                e.printStackTrace();
            }
            return "backmanage/shopList";

        }else {
            System.out.print("SHOP为空");
            return "backmanage/shopAdd";
        }
    }

    @RequestMapping("/bossAdd")
    public String insertBoss(Model model,Boss boss ) throws Exception {
        String nickname=boss.getNickname();
        System.out.print("昵称："+nickname);
        String phone=boss.getPhone();
        boss.setPic(boss.getPic());
        boss.setId(boss.getId());
        boss.setName(boss.getName());
        boss.setNickname(boss.getNickname());
        boss.setPassword(boss.getPassword());
        boss.setPhone(boss.getPhone());
        if(nickname!=null) {
            List<Boss> bosss = null;
            if (bossService.selectBossBynickname(nickname).size() > 0) {
                //昵称已存在
                String nicknameerror = "昵称已存在";
                System.out.print("昵称存在");
                model.addAttribute("nicknameerror", nicknameerror);
                return "backmanage/bossAdd";
            } else if (bossService.selectBossBynickname(phone).size() > 0) {
                //电话号已绑定
                String phoneerror = "电话号已存在";
                System.out.print("电话号存在");
                model.addAttribute("phoneerror", phoneerror);

                return "backmanage/bossAdd";
            } else {
                bossService.saveBoss(boss);
                System.out.print("成功注册boss");
                return "backmanage/shopList";
            }
        }else{
            return "backmanage/bossAdd";
        }



    }
    @RequestMapping("/shopUpdateShow")
    public String updateshowShop(Model model,Shop shop) throws Exception{
        shop=shopService.selectShopBynickname("zhang");
        return "backmanage/shopUpdate";
    }


}