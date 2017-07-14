package com.xoqao.web.service;

import com.xoqao.web.bean.boss.Boss;

import java.util.List;

/**
 * Created by lcy on 2017/7/12.
 */
public interface BossService {

    Boss saveBoss(Boss boss)throws Exception;
    List<Boss> selectBossBynickname(String nickname)throws Exception;
    List<Boss> selectBossByphone(String phone)throws Exception;
    List<Boss> selectBossBysid(int sid)throws Exception;

}
