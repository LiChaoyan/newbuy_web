package com.xoqao.web.controller;

import com.alibaba.fastjson.JSONObject;
import com.xoqao.web.bean.category.BigCategory;
import com.xoqao.web.bean.category.Category;
import com.xoqao.web.bean.category.SmallCategory;
import com.xoqao.web.bean.commodity.*;
import com.xoqao.web.bean.shop.ShopCity;
import com.xoqao.web.bean.user.User;
import com.xoqao.web.bean.shop.Shop;
import com.xoqao.web.bean.boss.Boss;
import com.xoqao.web.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
;

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

    @Autowired
    CommodityService commodityService;

    @RequestMapping("/xoqiao")
    public String begin(Model model) throws Exception {
        return "backmanage/xoqiao";
    }
    @RequestMapping("/xingji")
    public String TEST(Model model) throws Exception {
        return "backmanage/xingji";
    }

    @RequestMapping("/backlogin")
    public String backlogin(Model model) throws Exception {
        return "backmanage/backlogin";
    }
    @RequestMapping("/sousuo")
    public String Sousuoshow(Model model) throws Exception {
        return "sousuo";
    }

   @RequestMapping("brand")
   public  ModelAndView Brandshow(Page page,Model model)throws Exception{
       int size=0;
       ModelAndView modelAndView2=new ModelAndView();
        if(page.getShopname()!=null) {
        size = shopService.selectShopsizeByname(page.getShopname());
        page.setPage(page.getP(), size);
        System.out.println(size + " " + page.getShopname());
        ArrayList<ShopCity> shoparrayList = shopService.selectShopByname(page);
        System.out.println(shoparrayList.size());
        modelAndView2.addObject("ShopList", shoparrayList);
       }
       modelAndView2.addObject("Page",page);
       modelAndView2.setViewName("Brand");
        return modelAndView2;
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
        //动态添加商品分类
        ArrayList <BigCategory> list= categoryService.select123List();
        model.addAttribute("List", list);
        ArrayList <Partshop> partshops=commodityService.selectAllPartshop();
        model.addAttribute("partshops",partshops);
        return "Index";
    }

    @RequestMapping("/CategoryList" )
    public ModelAndView showCategoryListpage(Page page,Model model)throws Exception {
        ArrayList<CommodityShop> arrayList = new ArrayList<CommodityShop>();
        //动态添加商品分类
        ModelAndView modelAndView = new ModelAndView();
        ArrayList<BigCategory> list = categoryService.select123List();
        modelAndView.addObject("List", list);


        //筛选信息
        List<City> cityList= commodityService.selectAllCity(page);
        modelAndView.addObject("cityList",cityList);

        //多条件筛选
        //根据cgid,筛选信息分页查询
        int size = 0;

        if (page.getCgid() > 0) {
                size = commodityService.selectCommodityShopsize(page);
                page.setPage(page.getP(), size);
                arrayList = commodityService.selectCommodityShopBycgidpage(page);
                //筛选信息导航栏填写
                page.setBig(arrayList.get(0).getBig());
                page.setSmall(arrayList.get(0).getSmall());
                page.setSecend(arrayList.get(0).getSecend());

        }
        if (page.getProductname() != null&&(!page.getProductname().equals(""))&&page.getCgid()==-1) { //根据商品名字模糊分页查询
        try {
            System.out.println(page.getProductname());
            size = commodityService.selectCommodityShopsizeByproductname(page);
            page.setPage(page.getP(), size);
            arrayList = commodityService.selectCommodityShopByproductname(page);
            }catch (Exception e){
            e.printStackTrace();
            }
        }


          // 放入转发参数
        modelAndView.addObject("CommodityShopArrayList", arrayList);

        // 放入jsp路径
        modelAndView.addObject("Page",page);

        modelAndView.setViewName("CategoryList");

        return modelAndView;

    }

    @RequestMapping("/Login")
    public String Login(Model model) throws Exception {
        return "Login";
    }
    @RequestMapping("/Redist")
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
    public ModelAndView Product (int cid,APage page,Model model) throws Exception {

        ModelAndView productmodelAndView=new ModelAndView();
        //基本信息填充（包括评论信息）
        if(cid!=-1) {
            //动态添加商品分类
            ArrayList<BigCategory> list = categoryService.selectShopBycid(cid);
            productmodelAndView.addObject("ShopList", list);
            //热销商品
            ArrayList<Commodity> hootList = commodityService.selecthootBycid(cid);
            productmodelAndView.addObject("hootList", hootList);
            //商品基本信息查询()
            CommodityShop product = commodityService.selectProductBycid(cid);
            productmodelAndView.addObject("Product", product);

            //评论展示（默认p=1，ping=0）
                int gass = commodityService.selectGA(cid);
                int mass = commodityService.selectMA(cid);
                int bass = commodityService.selectBA(cid);
                int listsize = commodityService.selectAssesssizeBycid(cid);
                page.setAPage(page.getP(), listsize, gass, mass, bass);
                productmodelAndView.addObject("page", page);
                ArrayList<Assess> assessArrayList = commodityService.selectAssess(page);
                productmodelAndView.addObject("AssessList", assessArrayList);
        }

        productmodelAndView.setViewName("Product");
        return productmodelAndView;
    }

    @RequestMapping("/assesstu")
    public ModelAndView AssessLPT(int cid,Model model) throws Exception {
        //查询所有评论以图片为单位，轮播展示
        ModelAndView modelAndView=new ModelAndView();
        int size=commodityService.selectAssesssizeBycid(cid);
        APage page=new APage();
        page.setCid(cid);page.setP(1);page.setPing(0);page.setCount(size);
        ArrayList<Assess> assessList=commodityService.selectAssess(page);
        modelAndView.addObject("AssessList",assessList);
        modelAndView.setViewName("backmanage/AssessTu");
        return modelAndView;
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

