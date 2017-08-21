package com.xoqao.web.dao;

import com.xoqao.web.bean.commodity.Cart;
import org.springframework.stereotype.Service;

/**
 * Created by win8.1 on 2017/8/19.
 */
@Service
public interface CartMapper {
    int Addto(Cart cart)throws Exception;

}
