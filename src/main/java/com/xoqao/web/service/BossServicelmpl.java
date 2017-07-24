package com.xoqao.web.service;

import com.xoqao.web.bean.boss.Boss;
import com.xoqao.web.dao.BossMapper;
import org.apache.ibatis.annotations.Param;
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

    public List<Boss> selectBossBynickname(String nickname)throws Exception {
        List<Boss> allBosss = bossMapper.selectBossBynickname(nickname);
        return allBosss;
    }
    public List<Boss> selectBossByphone(String phone)throws Exception {
        List<Boss> allBosss = bossMapper.selectBossByphone(phone);
        return allBosss;
    }
    public List<Boss> selectBossBysid(int sid )throws Exception {
        List<Boss> allBosss = bossMapper.selectBossBysid(sid);
        return allBosss;
    }
    public void upBossphone(Boss boss)throws Exception{
        bossMapper.upBossphone(boss);
    }
}
