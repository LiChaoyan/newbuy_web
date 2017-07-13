package com.xoqao.web.dao;

import com.xoqao.web.bean.boss.Boss;
import com.xoqao.web.bean.user.User;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by lcy on 2017/7/12.
 */

@Service
public interface BossMapper {
    Boss saveBoss(Boss boss);
    List<Boss> selectBossBynickname(Boss boss)throws Exception;
    List<Boss> selectBossByphone(Boss boss)throws Exception;
    List<Boss> selectBossBysid(Boss boss)throws Exception;
}
