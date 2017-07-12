package com.xoqao.web.service;

import com.xoqao.web.bean.boss.Boss;
import com.xoqao.web.dao.BossMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.enterprise.inject.Alternative;

/**
 * Created by lcy on 2017/7/12.
 */

@Service
public class BossServicelmpl implements BossService{

    @Autowired
    private BossMapper bossMapper;

    public Boss saveBoss(Boss boss)throws Exception{

           return  bossMapper.saveBoss(boss);
    }
    public Boss selectBossBynickname(Boss boss)throws Exception{
       return  bossMapper.selectBossBynickname(boss);


    }

}
