package com.xoqao.web.service;

import com.xoqao.web.bean.bankShop.BankShop;
import com.xoqao.web.dao.BankShopMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 说明：
 * Author: lovegod
 * Date:  2017/8/28.
 * Email:dx96_j@163.com
 */
@Service
public class BankShopServiceImpl implements BankShopService {
    @Autowired
    private BankShopMapper bankShopMapper;

    public void insertBankShop(BankShop bankShop) throws Exception {
        bankShopMapper.insertBankShop(bankShop);
    }

    public BankShop findBySid(Integer sid) throws Exception {
        BankShop bySid = bankShopMapper.findBySid(sid);
        return bySid;
    }

    public void updateMoney(Double money, Integer sid) throws Exception {
        bankShopMapper.updateMoney(money, sid);
    }
}
