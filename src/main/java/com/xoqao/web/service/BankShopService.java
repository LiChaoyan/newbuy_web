package com.xoqao.web.service;

import com.xoqao.web.bean.bankShop.BankShop;
import org.apache.ibatis.annotations.Param;

/**
 * 说明：
 * Author: lovegod
 * Date:  2017/8/28.
 * Email:dx96_j@163.com
 */
public interface BankShopService {
    void insertBankShop( BankShop bankShop)throws Exception;

    BankShop findBySid(Integer sid)throws Exception;

    void updateMoney( Double money,Integer sid)throws Exception;
}
