package com.xoqao.web.service;

import com.xoqao.web.bean.boss.Boss;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by lcy on 2017/7/12.
 */
public interface BossService {

    Boss saveBoss(Boss boss) throws Exception;

    List<Boss> selectBossBynickname(String nickname) throws Exception;

    List<Boss> selectBossByphone(String phone) throws Exception;

    List<Boss> selectBossBysid(int sid) throws Exception;

    void upBossphone(Boss boss) throws Exception;

    void insertBoss( Boss boss) throws Exception;

    Boss findBossByphone( String phone)throws Exception;

    Boss findBoosByNick( String nickname)throws Exception;

}
