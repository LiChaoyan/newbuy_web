package com.xoqao.web.controller;

import com.alibaba.fastjson.JSONObject;
import com.sun.javafx.collections.MappingChange;
import com.xoqao.web.bean.category.Category;
import com.xoqao.web.bean.user.User;
import com.xoqao.web.bean.shop.Shop;
import com.xoqao.web.bean.boss.Boss;
import com.xoqao.web.service.UserService;
import com.xoqao.web.service.ShopService;
import com.xoqao.web.service.BossService;
import com.xoqao.web.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;

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

    @Autowired
    CategoryService categoryService;

    @RequestMapping("/xoqiao")
    public String begin(Model model) throws Exception {
        return "backmanage/xoqiao";
    }

    @RequestMapping("/backlogin")
    public String backlogin(Model model) throws Exception {
        return "backmanage/backlogin";
    }
    @RequestMapping("/brand")
    public String BRAND(Model model) throws Exception {
        return "Brand";
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
<<<<<<< HEAD


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
    @RequestMapping("/shopUp")
    public String updateshowShop(Model model,Shop shop) throws Exception{
        try {
            shop = shopService.selectShopBybid(17);
            String shopname=shop.getShopname();
            System.out.print("店铺名字："+shopname);
            model.addAttribute("shop",shop);
        }catch(Exception e){
            e.printStackTrace();
        }
        return "backmanage/shopUp";
    }
    @RequestMapping("/shopUpdate")
    public String updateShop(Model model,Shop shop) throws Exception{
        String shopname = shop.getShopname();
        shop.setShopname(shop.getShopname());
        shop.setType(shop.getType());
        shop.setStel(shop.getStel());
        shop.setCity(shop.getCity());
        shop.setSaddress(shop.getSaddress());
        shop.setScope(shop.getScope());
        shop.setSubscrib(shop.getSubscrib());
        if(shopname!=null) {
            System.out.print("店铺名字：" + shopname);
            try {
                int bid=17;
                shopService.updateShop(shop);
                model.addAttribute("message","已更新保存");
                model.addAttribute("shop",shop);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return "backmanage/shopUp";
    }

    @RequestMapping("/bossphone")
    public String updatePhoneBoss(Model model,Boss boss) throws Exception{
        try {
            String  yphone = bossService.selectBossBynickname("zhang").get(0).getPhone();
           System.out.print("原电话是："+yphone);
            model.addAttribute("yphone",yphone);
        }catch(Exception e){
            e.printStackTrace();
        }
        return "backmanage/bossphone";
    }
    @RequestMapping("/bossphoneUp")
public String upBossPhone(Model model , Boss boss) {
        String phone=boss.getPhone();
        boss.setPhone(phone);
        boss.setNickname("zhang");
        System.out.print("现在电话："+phone);
       if(phone!=null) {
           try {
               bossService.upBossphone(boss);
               System.out.print("修改成功");
               model.addAttribute("message", "修改成功 ");
           } catch (Exception e) {
               e.printStackTrace();
           }
       }
        return "backmanage/bossphone";
    }

    @RequestMapping("/category")
    public String getcategorybig(Model model) throws Exception{
        System.out.print("1.初始化，查询获得店铺一级所有分类");
        try {
            int sid=7;
            List<Category> categorybiglist = categoryService.selectBig();
            model.addAttribute("categorybigs",categorybiglist);
            List<Category> categoryListall=categoryService.selectCategoryBysid(sid);
            model.addAttribute("Category",categoryListall);
        }catch (Exception e){
            e.printStackTrace();
        }
        return "backmanage/test";
    }
    @RequestMapping("/categorysmall")
    public void getcategorysmall(Model model,HttpServletRequest request, HttpServletResponse response) throws Exception{
        //异步跳转机制
       System.out.print("2.根据请求参数查询small数据，返回页面");

            String big_big = request.getParameter("big_big");
            System.out.print(big_big);
            List<Category> categorysmalllist = categoryService.selectSmall(big_big);
            System.out.print(categorysmalllist.size());
            response.setCharacterEncoding("UTF-8");
            response.setContentType("application/json; charset=utf-8");
            //response.getWriter().print(categorysmalllist);此方法不行（冤枉了我一白天）
        String json = JSONObject.toJSONString(categorysmalllist);
        response.getWriter().write(json.toString());
        response.getWriter().flush();
        response.getWriter().close();

    }
    @RequestMapping("/categorysecend")
    public void getcategorysecond(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception{
        System.out.print("3.根据请求参数查询secend数据，返回页面");
        try {
            String small_small = request.getParameter("small_small");
            String big_big = request.getParameter("big_big");
            System.out.print(big_big);
            System.out.print(small_small);
            List<Category> categorysecendlist = categoryService.selectSecend(big_big,small_small);
            System.out.print(categorysecendlist.size());
            response.setCharacterEncoding("UTF-8");
            response.setContentType("application/json; charset=utf-8");
            String json = JSONObject.toJSONString(categorysecendlist);
            response.getWriter().write(json.toString());
            response.getWriter().flush();
            response.getWriter().close();
        }catch(Exception e){
            e.printStackTrace();
        }

    }
              @RequestMapping("/savecategory")
        public void savecategory(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
        System.out.print("4.根据请求参数查询cgid，绑定店铺号sid");
        //1.big不为空，small，secend为空，添加操作
        //2.big,small不为空，secend为空，(big，sid已存在：更新操作)（big,sid不存在：添加操作）
        //3. big,small，secend不为空，（big，sid，small已存在：更新操作）（big，sid，small不存在：添加操作）（）
        Category category = new Category();
            int sid = 7;
            String big = request.getParameter("xbig");
            String small = request.getParameter("xsmall");
            String secend = request.getParameter("xsecend");
            category.setBig(big);
            category.setSmall(small);
            category.setSecend(secend);
            category.setSid(sid);
            String message;
            int size=categoryService.selectCategory(category).size();
            if(size==0){
               categoryService.savecategory(category);
               message="成功添加";
            }else{
                message="已存在";
            }
                  response.setCharacterEncoding("UTF-8");
                  response.setContentType("application/json; charset=utf-8");
                  String json = JSONObject.toJSONString(message);
                  response.getWriter().write(json.toString());
                  response.getWriter().flush();
                  response.getWriter().close();
        }
          @RequestMapping("/allcategory")
        public void selectallCategory(Model model)throws  Exception{
        int sid=7;
            List<Category> categoryListall=categoryService.selectCategoryBysid(sid);
            model.addAttribute("Category",categoryListall);
        }
}
=======
}
>>>>>>> wordlu-master
