package com.xoqao.web.service;

import com.xoqao.web.bean.commodity.Cart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.xoqao.web.dao.CartMapper;
/**
 * Created by win8.1 on 2017/8/19.
 */
@Service
public class CartServicelmpl {
    @Autowired
    private CartMapper cartMapper;
    public int Addto(Cart cart)throws Exception{
        return cartMapper.Addto(cart);
    }
}