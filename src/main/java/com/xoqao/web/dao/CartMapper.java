package com.xoqao.web.dao;

import com.xoqao.web.bean.commodity.Cart;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

/**
 * Created by win8.1 on 2017/8/19.
 */
@Service
public interface CartMapper {
    void Addto(@Param("cart") Cart cart)throws Exception;
    ArrayList<Cart> selectCart()throws Exception;
    Cart selectNum(@Param("cart")Cart cart)throws Exception;
    void deleCart(@Param("cart") Cart cart)throws Exception;
    void ChangeNum(@Param("cart") Cart cart)throws Exception;

}
