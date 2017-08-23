package com.xoqao.web.service;

import com.xoqao.web.bean.commodity.Cart;
import com.xoqao.web.bean.commodity.Ordergoods;
import com.xoqao.web.bean.commodity.Orders;
import com.xoqao.web.bean.Address.ShipAddress;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;

/**
 * Created by win8.1 on 2017/8/19.
 */
public interface CartService {
    void Addto(@Param("cart") Cart cart)throws Exception;
    ArrayList<Cart> selectCart()throws Exception;
    Cart selectNum(@Param("cart")Cart cart)throws Exception;
    void deleCart(@Param("cart") Cart cart)throws Exception;
    void ChangeNum(@Param("cart") Cart cart)throws Exception;
    //根据cbid查找信息
    Cart selectCartBycbid(@Param("cart") Cart cart)throws Exception;
    //添加订单
    void AddOrder(@Param("order")Orders order)throws Exception;
    //查找添加订单id
    int selectAddoid()throws Exception;
    //添加订单商品
    void AddOrdergoods(@Param("ordergood") Ordergoods ordergood)throws Exception;

    //查找添加订单商品id
    int selectAddogid()throws Exception;
    //查找订单商品
    ArrayList<Ordergoods> selectOrdergoods(@Param("ogs")int[] ogs)throws Exception;
    //查找订单用户收货地址
    ShipAddress selectUAdress(@Param("uid") int uid)throws Exception;

}
