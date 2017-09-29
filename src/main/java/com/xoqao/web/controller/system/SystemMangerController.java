package com.xoqao.web.controller.system;

import com.xoqao.web.bean.bankShop.BankShop;
import com.xoqao.web.bean.bankShop.BankShopSuShop;
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
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by win8.1 on 2017/9/29.
 */
@Controller
@RequestMapping("/system")
public class SystemMangerController {
    /*
    * 系统后台管理员登录
    */

    /*
    * 系统后台管理员首页
    */

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
    @Autowired
    private BankShopService bankShopService;

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
     * 系统管理员登录提交
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
                return "systemmanager/index_shopkeeper";
            } else {
                model.addAttribute("error_msg", "登录失败，请检查输入信息是否正确");
            }
        } else {
            model.addAttribute("error_msg", "请输入正确的信息");
        }
        return "systemmanager/Login_shopkeeper";
    }

    /**
     * 进入系统管理员首页概览
     *
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/admin/index")
    public String adminBossIndex(Model model) throws Exception {
        return "systemmanager/index_shopkeeper";
    }

    /**
     * 系统管理员退出登录
     *
     * @param model
     * @param httpSession
     * @return
     * @throws Exception
     */
    @RequestMapping("/logout")
    public String logout(Model model, HttpSession httpSession) throws Exception {
        httpSession.invalidate();
        return "systemmanager/Login_shopkeeper";
    }


    /**
     * 店铺查看
     *
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/shop_list")
    public String article_list(Model model, HttpSession httpSession) throws Exception {
        Boss boss = (Boss) httpSession.getAttribute("boss");
        if (null != boss) {
            List<Shop> shopByBid = shopService.findShopByBid(boss.getBid());
            model.addAttribute("shops", shopByBid);
        }
        return "systemmanager/article_list";
    }

    //    类别管理
    @RequestMapping("/category_list")
    public String category_list(Model model) throws Exception {
        return "systemmanager/category_list";
    }
    //    店员查看（弹窗）

    /**
     * 查看管理员信息
     *
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/employer_show/{eid}")
    public String member_show(Model model, @PathVariable("eid") Integer eid) throws Exception {
        Employer employerById = employerService.findEmployerById(eid);
        Shop shopBySid = shopService.findShopBySid(employerById.getSid());
        EmPloyerCuShop emPloyerCuShop = new EmPloyerCuShop();
        BeanUtils.copyProperties(employerById, emPloyerCuShop);
        emPloyerCuShop.setShopname(shopBySid.getShopname());
        emPloyerCuShop.setLogo(shopBySid.getLogo());
        model.addAttribute("employer", emPloyerCuShop);
        return "systemmanager/member_show";
    }


    /**
     * 进入查看管理员
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
            for (int j = 0; j < employerBySid.size(); j++) {
                EmPloyerCuShop emPloyerCuShop = new EmPloyerCuShop();
                BeanUtils.copyProperties(employerBySid.get(j), emPloyerCuShop);
                emPloyerCuShop.setShopname(shopByBid.get(i).getShopname());
                emPloyerCuShop.setLogo(shopByBid.get(i).getLogo());
                emPloyerCuShops.add(emPloyerCuShop);
            }
        }
        model.addAttribute("employers", emPloyerCuShops);
        return "systemmanager/member_list";
    }


    /**
     * 添加管理员
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
            return "systemmanager/member_add";
        }
        return null;
    }

    //    安全列表

    /**
     * 进入查看银行卡列表
     *
     * @param model
     * @param httpSession
     * @return
     * @throws Exception
     */
    @RequestMapping("/safe_list")
    public String safe_list(Model model, HttpSession httpSession) throws Exception {
        Boss boss = (Boss) httpSession.getAttribute("boss");
        if (null != boss) {
            List<Shop> shopByBid = shopService.findShopByBid(boss.getBid());
            List<BankShopSuShop> bankShopSuShops = new ArrayList<BankShopSuShop>();
            for (int i = 0; i < shopByBid.size(); i++) {
                BankShop bySid = bankShopService.findBySid(shopByBid.get(i).getSid());
                if (bySid != null) {
                    BankShopSuShop bankShopSuShop = new BankShopSuShop();
                    BeanUtils.copyProperties(bySid, bankShopSuShop);
                    bankShopSuShop.setShop(shopByBid.get(i));
                    bankShopSuShops.add(bankShopSuShop);
                }
            }
            model.addAttribute("banks", bankShopSuShops);
        }
        return "systemmanager/safe_list";
    }

    //    添加法人信息

    /**
     * 添加法人信息
     *
     * @param model
     * @param httpSession
     * @return
     * @throws Exception
     */
    @RequestMapping("/safeman_add")
    public String safeman_add(Model model, HttpSession httpSession) throws Exception {
        Boss boss = (Boss) httpSession.getAttribute("boss");
        List<Shop> shopByBid = shopService.findShopByBid(boss.getBid());
        model.addAttribute("shops", shopByBid);
        return "systemmanager/safeman_add";
    }

    //首页
    @RequestMapping("/index_shopkeeper")
    public String index_shopkeeper(Model model) throws Exception {
        return "systemmanager/index_shopkeeper";
    }

    /**
     * 提交添加银行卡
     *
     * @param model
     * @param username
     * @param bank
     * @param bankCard
     * @param shopid
     * @param httpServletResponse
     * @throws Exception
     */
    @RequestMapping("/bankShop/addSub")
    public void BankShopSub(Model model, String username, String bank, String bankCard, Integer shopid, HttpServletResponse httpServletResponse) throws Exception {
        httpServletResponse.setContentType("text/html;charset=UTF-8");
        PrintWriter out = httpServletResponse.getWriter();
        if (null != username && null != bankCard && null != shopid) {
            BankShop bankShop = new BankShop();
            bankShop.setBankName(bank);
            bankShop.setCardNumber(bankCard);
            bankShop.setShopId(shopid);
            bankShop.setUser(username);
            bankShop.setMoney(0.0);
            try {
                bankShopService.insertBankShop(bankShop);
                out.println("<script type='text/javascript'>alert('添加成功！');</script>");
            } catch (Exception e) {
                e.printStackTrace();
                out.println("<script type='text/javascript'>alert('添加失败，请检查是否重复添加！！');</script>");
            }
        } else {
//            out.print("<script language=\"javascript\">alert('恭喜你成功了！');window.location.href='/你的工程名/user/index'</script>");
            out.println("<script type='text/javascript'>alert('请检查添加必要参数！！');</script>");
        }
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
     * 进入添加线上店铺
     *
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/shopadd_online")
    public String Regist_shop(Model model) throws Exception {
        return "systemmanager/shopadd_online";
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
        return "systemmanager/shopadd_outline";
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
            return "systemmanager/shopadd_online";
        } else {
            model.addAttribute("error_msg", "登录已经过期，请重新登录");
            return "systemmanager/Login_shopkeeper";
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
        return "systemmanager/shopadd_outline";
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
