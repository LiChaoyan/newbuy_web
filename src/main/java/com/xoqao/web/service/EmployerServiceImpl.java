package com.xoqao.web.service;

import com.xoqao.web.bean.employ.Employer;
import com.xoqao.web.dao.EmployerMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 说明：
 * Author: lovegod
 * Date:  2017/8/25.
 * Email:dx96_j@163.com
 */
@Service
public class EmployerServiceImpl implements EmployerService {
    @Autowired
    private EmployerMapper employerMapper;

    public void insertEmployer(Employer employer) throws Exception {
        employerMapper.insertEmployer(employer);
    }

    public List<Employer> findEmployerBySid(Integer sid) throws Exception {
        List<Employer> employerBySid = employerMapper.findEmployerBySid(sid);
        return employerBySid;
    }

    public void updateIdentity(Integer identity, Integer eid) throws Exception {
        employerMapper.updateIdentity(identity, eid);
    }

    public void updatePass(String pas, Integer eid) throws Exception {
        employerMapper.updatePass(pas, eid);
    }

    public void updateStatue(String statue, Integer eid) throws Exception {
        employerMapper.updateStatue(statue, eid);
    }
}
