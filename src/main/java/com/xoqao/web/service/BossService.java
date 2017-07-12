package com.xoqao.web.service;

import com.xoqao.web.bean.boss.Boss;

/**
 * Created by lcy on 2017/7/12.
 */
public interface BossService {

    Boss saveBoss(Boss boss)throws Exception;
    Boss selectBossBynickname(Boss boss)throws Exception;

}
