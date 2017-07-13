package com.xoqao.web.service;

import com.xoqao.web.bean.boss.Boss;

import java.util.List;

/**
 * Created by lcy on 2017/7/12.
 */
public interface BossService {

    Boss saveBoss(Boss boss)throws Exception;
    List<Boss>  selectBossBynickname(Boss boss)throws Exception;
    List<Boss>  selectBossByphone(Boss boss)throws Exception;
    List<Boss>  selectBossBysid(Boss boss)throws Exception;

}
