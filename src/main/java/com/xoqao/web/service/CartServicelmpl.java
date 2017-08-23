package com.xoqao.web.service;

import com.xoqao.web.bean.commodity.Cart;
import com.xoqao.web.bean.commodity.Ordergoods;
import com.xoqao.web.bean.commodity.Orders;
import com.xoqao.web.bean.commodity.ShipAddress;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.xoqao.web.dao.CartMapper;

import java.util.ArrayList;

/**
 * Created by win8.1 on 2017/8/19.
 */
@Service
public class CartServicelmpl implements CartService{
    @Autowired
    private CartMapper cartMapper;
    public void Addto(Cart cart)throws Exception{
        cartMapper.Addto(cart);
    }
    public ArrayList<Cart> selectCart()throws Exception{
        return cartMapper.selectCart();
    }
    //查询返回弹窗的数量
    public Cart selectNum(@Param("cart")Cart cart)throws Exception{
        return cartMapper.selectNum(cart);
    }
    //删除购物车内某商品
    public  void deleCart(@Param("cart") Cart cart)throws Exception{
         cartMapper.deleCart(cart);
    }
    public void ChangeNum(@Param("cart") Cart cart)throws Exception{
        cartMapper.ChangeNum(cart);
    }
    //根据cbid查找信息
    public Cart selectCartBycbid(@Param("cart") Cart cart)throws Exception{
        return cartMapper.selectCartBycbid(cart);
    }
    //添加订单
    public void AddOrder(@Param("order")Orders order)throws Exception{
         cartMapper.AddOrder(order);
    }
    //查找添加订单id
    public int selectAddoid()throws Exception{
        return cartMapper.selectAddoid();
    }
    //添加订单商品
    public void AddOrdergoods(@Param("ordergood") Ordergoods ordergood)throws Exception{
         cartMapper.AddOrdergoods(ordergood);
    }
    //查找添加订单商品id
    public int selectAddogid()throws Exception{
        return cartMapper.selectAddogid();
    }
    //查找订单商品
    public ArrayList<Ordergoods> selectOrdergoods(@Param("ogs")int[] ogs)throws Exception{
        return cartMapper.selectOrdergoods(ogs);
    }
    //查找订单用户收货地址
    public ShipAddress selectUAdress(@Param("uid") int uid)throws Exception{
        return cartMapper.selectUAdress(uid);
    }



}
