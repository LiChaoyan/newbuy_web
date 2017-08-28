package com.xoqao.web.controller.boss;

import com.xoqao.web.bean.boss.Boss;
import com.xoqao.web.bean.city.City;
import com.xoqao.web.bean.city.District;
import com.xoqao.web.bean.city.Province;
import com.xoqao.web.bean.city.Towns;
import com.xoqao.web.bean.employ.EmPloyerCuShop;
import com.xoqao.web.bean.employ.Employer;
import com.xoqao.web.bean.shop.Shop;
import com.xoqao.web.bean.user.User;
import com.xoqao.web.commen.CommonValue;
import com.xoqao.web.service.*;
import com.xoqao.web.utils.MD5Util;
import com.xoqao.web.utils.QiNiuFileUtil;
import org.intellij.lang.annotations.RegExp;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
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
    @Autowired
    private CityService cityService;
    @Autowired
    private ShopService shopService;
    @Autowired
    private EmployerService employerService;

    /**
     * 返回所有的省份
     *
     * @return
     * @throws Exception
     */
    @ModelAttribute("provinces")
    public List<Province> getAllProvince() throws Exception {
        List<Province> findprovince = cityService.findprovince();
        return findprovince;
    }

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

    /**
     * 进入店主登录界面
     *
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/Login_shopkeeper")
    public String Login_shopkeeper(Model model) throws Exception {
        return "shopkeeper/Login_shopkeeper";
    }


    /**
     * 店铺查看
     *
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/shop_list")
    public String article_list(Model model,HttpSession httpSession) throws Exception {
      Boss boss= (Boss) httpSession.getAttribute("boss");
        if(null!=boss){
            List<Shop> shopByBid = shopService.findShopByBid(boss.getBid());
            model.addAttribute("shops",shopByBid);
        }
        return "shopkeeper/article_list";
    }

    //    商品管理
    @RequestMapping("/product_list")
    public String product_list(Model model) throws Exception {
        return "shopkeeper/product_list";
    }

    //    商品添加
    @RequestMapping("/product_add")
    public String product_add(Model model) throws Exception {
        return "shopkeeper/product_add";
    }

    //    店员查看（弹窗）

    /**
     * 查看店员信息
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/employer_show/{eid}")
    public String member_show(Model model,@PathVariable("eid") Integer eid) throws Exception {
        Employer employerById = employerService.findEmployerById(eid);
        Shop shopBySid = shopService.findShopBySid(employerById.getSid());
        EmPloyerCuShop emPloyerCuShop=new EmPloyerCuShop();
        BeanUtils.copyProperties(employerById,emPloyerCuShop);
        emPloyerCuShop.setShopname(shopBySid.getShopname());
        emPloyerCuShop.setLogo(shopBySid.getLogo());
        model.addAttribute("employer",emPloyerCuShop);
        return "shopkeeper/member_show";
    }


    /**
     * 进入查看店员
     *
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/employ_list")
    public String member_list(Model model, HttpSession httpSession) throws Exception {
        Boss boss = (Boss) httpSession.getAttribute("boss");
        List<Shop> shopByBid = shopService.findShopByBid(boss.getBid());
        List<EmPloyerCuShop> emPloyerCuShops = new ArrayList<EmPloyerCuShop>();
        for (int i = 0; i < shopByBid.size(); i++) {
            List<Employer> employerBySid = employerService.findEmployerBySid(shopByBid.get(i).getSid());
            for (int j = 0; j <employerBySid.size() ; j++) {
                EmPloyerCuShop emPloyerCuShop=new EmPloyerCuShop();
                BeanUtils.copyProperties(employerBySid.get(j),emPloyerCuShop);
                emPloyerCuShop.setShopname(shopByBid.get(i).getShopname());
                emPloyerCuShop.setLogo(shopByBid.get(i).getLogo());
                emPloyerCuShops.add(emPloyerCuShop);
            }
        }
        model.addAttribute("employers",emPloyerCuShops);
        return "shopkeeper/member_list";
    }


    /**
     * 添加店员
     *
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/employ_add/{eid}")
    public String member_add(Model model, @PathVariable("eid") Integer eid, HttpSession httpSession) throws Exception {
        Boss boss = (Boss) httpSession.getAttribute("boss");
        if (null != boss) {
            List<Shop> shopByBid = shopService.findShopByBid(boss.getBid());
            model.addAttribute("shops", shopByBid);
            model.addAttribute("eid", eid);
            return "shopkeeper/member_add";
        }
        return null;
    }
    //    修改密码
    @RequestMapping("/change_password")
    public String  change_password(Model model) throws Exception {
        return "shopkeeper/change_password";
    }
    //    安全列表
    @RequestMapping("/safe_list")
    public String  safe_list(Model model) throws Exception {
        return "shopkeeper/safe_list";
    }
    //    添加法人信息
    @RequestMapping("/safeman_add")
    public String  safeman_add(Model model) throws Exception {
        return "shopkeeper/safeman_add";
    }


    /**
     * 提交添加店员
     *
     * @param model
     * @param eid
     * @param username
     * @param sex
     * @param mobile
     * @param email
     * @param password
     * @param shopid
     * @param beizhu
     * @return
     * @throws Exception
     */
    @RequestMapping("/addEmploySub")
    public String employerAddSub(Model model, Integer eid, String username, Integer sex, String mobile, String email, String password, Integer shopid, String beizhu, RedirectAttributes redirectAttributes) throws Exception {
        if (null != mobile && null != email && null != password && null != shopid) {
            Employer employer = new Employer();
            employer.setDes(beizhu);
            employer.setEmail(email);
            employer.setGender(sex);
            employer.setIdentity(eid);
            employer.setName(username);
            employer.setPassword(MD5Util.encode(password));
            employer.setPhone(mobile);
            employer.setSid(shopid);
            employer.setAddtime(new Date());
            try {
                employerService.insertEmployer(employer);
                redirectAttributes.addFlashAttribute("error_msg", "添加店员成功");
                return "redirect:/boss/employ_list";
            } catch (Exception e) {
                e.printStackTrace();
                redirectAttributes.addFlashAttribute("error_msg", "添加店员失败，检查手机号，邮箱");
                return "redirect:/boss/employ_add/" + eid;
            }
        } else {
            redirectAttributes.addFlashAttribute("error_msg", "添加店员失败，检查手机号，邮箱");
            return "redirect:/boss/employ_add/" + eid;
        }
    }

    /**
     * 店主登录提交
     *
     * @param model
     * @param username
     * @param password
     * @return
     * @throws Exception
     */
    @RequestMapping("/login/sub")
    public String LoginSub(Model model, String username, String password, HttpSession httpSession) throws Exception {
        if (null != username && null != password) {
            Boss bossByStr = bossService.findBossByStr(username);
            if (null != bossByStr && MD5Util.encode(password).equals(bossByStr.getPassword())) {
                httpSession.setAttribute("boss", bossByStr);
                model.addAttribute("error_msg", "登录成功！");
                return "shopkeeper/index_shopkeeper";
            } else {
                model.addAttribute("error_msg", "登录失败，请检查输入信息是否正确");
            }
        } else {
            model.addAttribute("error_msg", "请输入正确的信息");
        }
        return "shopkeeper/Login_shopkeeper";
    }

    /**
     * 进入店主首页概览
     *
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/admin/index")
    public String adminBossIndex(Model model) throws Exception {
        return "shopkeeper/index_shopkeeper";
    }

    /**
     * 店主退出登录
     *
     * @param model
     * @param httpSession
     * @return
     * @throws Exception
     */
    @RequestMapping("/logout")
    public String logout(Model model, HttpSession httpSession) throws Exception {
        httpSession.invalidate();
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
            if (null == boosByNick) {  //判断用户名是否已存在
                if (null == userByphone && null == bossByphone) {   //判断手机号是否已经存在
                    Boss boss = new Boss();
                    boss.setNickname(username);
                    boss.setPhone(phonenumber);
                    boss.setId(id);
                    boss.setName(myname);
                    boss.setPassword(MD5Util.encode(password));
                    String facepic = QiNiuFileUtil.updalodByByte(face.getBytes());
                    boss.setFacepic(CommonValue.QINIUPATH + facepic);
                    String idze = QiNiuFileUtil.updalodByByte(idz.getBytes());
                    String idfe = QiNiuFileUtil.updalodByByte(idf.getBytes());
                    boss.setIdpic(CommonValue.QINIUPATH + idze + ";" + CommonValue.QINIUPATH + idfe);
                    try {
                        bossService.insertBoss(boss);
                        model.addAttribute("error_msg", "注册成功！");
                        return "user/Login";
                    } catch (Exception e) {
                        e.printStackTrace();
                        model.addAttribute("error_msg", "注册失败，请重新尝试！");
                        return "shopkeeper/Regist_shopkeeper";
                    }

                } else {
                    model.addAttribute("error_msg", "改手机号已存在");
                    return "shopkeeper/Regist_shopkeeper";
                }
            } else {
                model.addAttribute("error_msg", "用户名已存在");
                return "shopkeeper/Regist_shopkeeper";
            }

        } else {
            model.addAttribute("error_msg", "请注意输入数据");
            return "shopkeeper/Regist_shopkeeper";
        }
    }

    /**
     * 进入添加线上店铺
     *
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/shopadd_online")
    public String Regist_shop(Model model) throws Exception {
        return "shopkeeper/shopadd_online";
    }

    /**
     * 进入添加线下店铺
     *
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/shopadd_outline")
    public String shopadd_outline(Model model) throws Exception {
        return "shopkeeper/shopadd_outline";
    }

    /**
     * 提交添加线上商店
     *
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/shopOnLineSub")
    public String shopOnlIneAddSub(Model model, String shopname, String shopcall, Integer city, String scope, String shopdes, MultipartFile logo, HttpSession httpSession) throws Exception {
        Boss boss = (Boss) httpSession.getAttribute("boss");
        if (null != boss) {
            Shop shop = new Shop();
            shop.setCity(city);
            shop.setShopname(shopname);
            shop.setStel(shopcall);
            shop.setScope(scope);
            shop.setType("网络零售");
            shop.setSubscrib(shopdes);
            shop.setBid(boss.getBid());
            String s = QiNiuFileUtil.updalodByByte(logo.getBytes());
            shop.setLogo(CommonValue.QINIUPATH + s);
            shop.setHeadershow(CommonValue.QINIUPATH + s);
            try {
                shopService.insertShop(shop);
                model.addAttribute("error_msg", "添加成功");
                return "redirect:/boss/shop_list";
            } catch (Exception e) {
                e.printStackTrace();
                model.addAttribute("error_msg", "添加失败");
            }
            return "shopkeeper/shopadd_online";
        } else {
            model.addAttribute("error_msg", "登录已经过期，请重新登录");
            return "shopkeeper/Login_shopkeeper";
        }
    }

    /**
     * 添加实体店提交
     *
     * @param model
     * @param shopname
     * @param shopcall
     * @param permit
     * @param logo
     * @param city
     * @param scope
     * @param sever_add
     * @param lng
     * @param lat
     * @param file
     * @param httpSession
     * @param redirectAttributes
     * @return
     * @throws Exception
     */
    @RequestMapping("/shop/outling/sub")
    public String shopAddDownLineSub(Model model, String shopname, String shopcall, MultipartFile permit, MultipartFile logo, Integer city, String scope, String sever_add, Double lng, Double lat, @RequestParam("file") CommonsMultipartFile file[], HttpSession httpSession, RedirectAttributes redirectAttributes) throws Exception {
        if (null != shopname && null != shopcall && null != permit && null != scope && null != sever_add) {
            Boss boss = (Boss) httpSession.getAttribute("boss");
            Shop shop = new Shop();
            shop.setShopname(shopname);
            shop.setStel(shopcall);
            shop.setLatitude(lat);
            shop.setLonggitude(lng);
            shop.setBid(boss.getBid());
            shop.setScope(scope);
            shop.setType("实体零售");
            shop.setSaddress(sever_add);
            shop.setCity(city);
            String per = QiNiuFileUtil.updalodByByte(permit.getBytes()); //上传营业执照
            String logoStr = QiNiuFileUtil.updalodByByte(logo.getBytes());
            shop.setLogo(CommonValue.QINIUPATH + logoStr);
            String others = CommonValue.QINIUPATH + per;
            for (int i = 0; i < file.length; i++) {
                MultipartFile img = file[i];
                String s = QiNiuFileUtil.updalodByByte(img.getBytes());
                others = others + ";" + CommonValue.QINIUPATH + s;
            }
            shop.setPermitpic(others);
            try {
                shopService.insertShop(shop);
                redirectAttributes.addFlashAttribute("error_msg", "添加成功");
                return "redirect:/boss/shop_list";
            } catch (Exception e) {
                e.printStackTrace();
                model.addAttribute("error_msg", "请输入正确得参数！");
            }
        } else {
            model.addAttribute("error_msg", "请输入正确得参数！");
        }
        return "shopkeeper/shopadd_outline";
    }

    /**
     * 根据省份id获取城市
     *
     * @param pid
     * @return
     * @throws Exception
     */
    @RequestMapping("/findCity")
    public @ResponseBody
    List<City> findCity(Integer pid) throws Exception {
        List<City> cityByCid = cityService.findCityByCid(pid);
        return cityByCid;
    }

    /**
     * 根据城市id获取地区
     *
     * @param cid
     * @return
     * @throws Exception
     */
    @RequestMapping("/findDistrict")
    public @ResponseBody
    List<District> findDistrict(Integer cid) throws Exception {
        List<District> distrctByCid = cityService.findDistrctByCid(cid);
        return distrctByCid;
    }

    /**
     * 根据地区id获取乡镇
     *
     * @param did
     * @return
     * @throws Exception
     */
    @RequestMapping("/findTowns")
    public @ResponseBody
    List<Towns> findTowns(Integer did) throws Exception {
        List<Towns> townsBydis = cityService.findTownsBydis(did);
        return townsBydis;
    }
}
