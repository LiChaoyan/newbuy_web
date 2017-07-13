package com.xoqao.web.service;

import com.xoqao.web.bean.boss.Boss;
import com.xoqao.web.dao.BossMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.enterprise.inject.Alternative;
import java.util.List;

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

    public List<Boss> selectBossBynickname(Boss boss)throws Exception {
        List<Boss> allBosss = selectBossBynickname(boss);
        return allBosss;
    }
    public List<Boss> selectBossByphone(Boss boss)throws Exception {
        List<Boss> allBosss = selectBossByphone(boss);
        return allBosss;
    }
    public List<Boss> selectBossBysid(Boss boss)throws Exception {
        List<Boss> allBosss = selectBossBysid(boss);
        return allBosss;
    }

}
