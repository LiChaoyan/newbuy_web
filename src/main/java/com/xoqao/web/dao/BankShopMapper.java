package com.xoqao.web.dao;

import com.xoqao.web.bean.bankShop.BankShop;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

/**
 * 说明：
 * Author: lovegod
 * Date:  2017/8/28.
 * Email:dx96_j@163.com
 */
@Service
public interface BankShopMapper {

    void insertBankShop(@Param("bankshop") BankShop bankShop)throws Exception;

    BankShop findBySid(@Param("sid") Integer sid)throws Exception;

    void updateMoney(@Param("money") Double money,Integer sid)throws Exception;
}
