package com.xoqao.web.service;

import com.xoqao.web.bean.commodity.Cart;
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
}
