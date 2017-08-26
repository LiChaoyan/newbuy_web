package com.xoqao.web.dao;

import com.xoqao.web.bean.employ.Employer;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 说明：
 * Author: lovegod
 * Date:  2017/8/25.
 * Email:dx96_j@163.com
 */
@Service
public interface EmployerMapper {

    void insertEmployer(@Param("employer") Employer employer)throws Exception;

    List<Employer> findEmployerBySid(@Param("sid") Integer sid)throws Exception;

    void updateIdentity(@Param("identity") Integer identity,@Param("eid") Integer eid)throws Exception;

    void updatePass(@Param("pas") String pas,@Param("eid") Integer eid)throws Exception;

    void updateStatue(@Param("statue") String statue,@Param("eid") Integer eid)throws Exception;
}
