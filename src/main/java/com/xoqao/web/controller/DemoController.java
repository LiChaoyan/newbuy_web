package com.xoqao.web.controller;

import com.xoqao.web.bean.user.User;
import com.xoqao.web.bean.shop.Shop;
import com.xoqao.web.bean.boss.Boss;
import com.xoqao.web.service.UserService;
import com.xoqao.web.service.ShopService;
import com.xoqao.web.service.BossService;
import jdk.nashorn.internal.ir.RuntimeNode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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


    @RequestMapping("/shopListShow")
    public String selectShops(Model model) {
        List<Shop> allShops = null;
        try {
            allShops = shopService.findAllShops();
        } catch (Exception e) {
            e.printStackTrace();
        }
        model.addAttribute("shops", allShops);
        return "backmanage/shopListShow";
    }

    @RequestMapping("/shopAdd")
    public String insertShop(Shop shop) throws Exception{
        shop.setShopname(shop.getShopname());
        shop.setType(shop.getType());
        shop.setStel(shop.getStel());
        shop.setCity(shop.getCity());
        shop.setScope(shop.getScope());
        shop.setSubscrib(shop.getSubscrib());
        if(shop.getShopname()!=null) {
            try {
                shopService.saveShops(shop);
            }catch(Exception e){
                e.printStackTrace();
            }
            return "backmanage/shopListShow";

        }else {
            System.out.print("SHOP为空");
            return "backmanage/shopAdd";
        }
    }



    /**
     * @param boss
     * @return
     * @throws Exception
     */

    @RequestMapping("/bossAdd")
    public String insertBoss(Boss boss ) throws Exception {
        boss.setPic(boss.getPic());
        boss.setId(boss.getId());
        boss.setName(boss.getName());
        boss.setNickname(boss.getNickname());
        boss.setPassword(boss.getPassword());
        boss.setPhone(boss.getPhone());
        boss.setSid(boss.getSid());
        if (boss.getNickname() != null) {
            List<Boss> bosss = bossService.selectBossBynickname(boss);
            List<Boss> bosss2 = bossService.selectBossByphone(boss);
            List<Boss> bosss3 = bossService.selectBossBysid(boss);
            if (bosss.size()==0&&bosss2.size()==0&&bosss3.size()==0) {
                //成功

                return "backmanage/shopAdd";
            } else {
                //失败,该昵称已存在
                return "backmanage/bossAdd";

            }
        } else {
            //刚开始请求时
            return "backmanage/bossAdd";
        }

    }

    }
}