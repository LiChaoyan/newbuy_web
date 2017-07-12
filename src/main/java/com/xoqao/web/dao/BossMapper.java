package com.xoqao.web.dao;

import com.xoqao.web.bean.boss.Boss;
import org.springframework.stereotype.Service;

/**
 * Created by lcy on 2017/7/12.
 */

@Service
public interface BossMapper {
    Boss saveBoss(Boss boss);
    Boss selectBossBynickname(Boss boss);
}
