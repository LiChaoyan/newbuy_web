package com.xoqao.web.service;

import com.xoqao.web.bean.employ.Employer;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 说明：
 * Author: lovegod
 * Date:  2017/8/25.
 * Email:dx96_j@163.com
 */
public interface EmployerService {

    void insertEmployer(Employer employer)throws Exception;

    List<Employer> findEmployerBySid(Integer sid)throws Exception;

    void updateIdentity( Integer identity, Integer eid)throws Exception;

    void updatePass( String pas, Integer eid)throws Exception;

    void updateStatue( String statue,Integer eid)throws Exception;

    List<Employer> findEmployerBySidIden( Integer sid, Integer identity, Integer statue)throws Exception;

    Employer findEmployerById( Integer eid)throws Exception;
}
