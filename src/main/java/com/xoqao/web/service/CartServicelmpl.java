package com.xoqao.web.service;

import com.xoqao.web.bean.commodity.Cart;
import com.xoqao.web.bean.Oreder.Ordergoods;
import com.xoqao.web.bean.Oreder.Orders;
import com.xoqao.web.bean.Address.ShipAddress;
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

    public Cart selectGoods(@Param("cart") Cart cart)throws Exception{
        return  cartMapper.selectGoods(cart);
    }
    public void Addto(Cart cart)throws Exception{
        cartMapper.Addto(cart);
    }
    public ArrayList<Cart> selectCart(@Param("uid") int uid)throws Exception{
        return cartMapper.selectCart(uid);
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
    public Cart selectCartBycbid(@Param("cbid") int cbid)throws Exception{
        return cartMapper.selectCartBycbid(cbid);
    }
    //添加订单
    public void AddOrder(@Param("order")Orders order)throws Exception{
         cartMapper.AddOrder(order);
    }
    //查找添加订单id
    public int selectAddoid(@Param("order")Orders order)throws Exception{
        return cartMapper.selectAddoid(order);
    }
    //添加订单商品
    public void AddOrdergoods(@Param("ordergood") Ordergoods ordergood)throws Exception{
         cartMapper.AddOrdergoods(ordergood);
    }
    //查找订单商品
    public ArrayList<Ordergoods> selectOrdergoodsByoid(@Param("oid")int oid)throws Exception{
        return cartMapper.selectOrdergoodsByoid(oid);
    }
    //查找订单用户收货地址
    public ShipAddress selectUAdress(@Param("uid") int uid)throws Exception{
        return cartMapper.selectUAdress(uid);
    }
    //更新订单
    public void upOrder(@Param("order")Orders order)throws Exception{
        cartMapper.upOrder(order);
    }
    //根据订单号查订单
    public Orders selectOrderByoid(@Param("oid")int oid)throws Exception{
        return cartMapper.selectOrderByoid(oid);
    }

}
