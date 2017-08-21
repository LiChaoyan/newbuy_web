package com.xoqao.web.dao;

import com.xoqao.web.bean.boss.Boss;
import com.xoqao.web.bean.user.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by lcy on 2017/7/12.
 */

@Service
public interface BossMapper {
    Boss saveBoss(Boss boss);

    List<Boss> selectBossBynickname(@Param("nickname") String nickname) throws Exception;

    List<Boss> selectBossByphone(@Param("phone") String phone) throws Exception;

    List<Boss> selectBossBysid(@Param("sid") int sid) throws Exception;

    void upBossphone(Boss boss) throws Exception;

    void insertBoss(@Param("boss") Boss boss) throws Exception;

    Boss findBossByphone(@Param("phone") String phone)throws Exception;

    Boss findBoosByNick(@Param("nickname") String nickname)throws Exception;
}
