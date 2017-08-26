package com.xoqao.web.service;

import com.xoqao.web.bean.city.City;
import com.xoqao.web.bean.city.District;
import com.xoqao.web.bean.city.Province;
import com.xoqao.web.bean.city.Towns;
import com.xoqao.web.dao.CityMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 说明：
 * Author: lovegod
 * Date:  2017/8/22.
 * Email:dx96_j@163.com
 */
@Service
public class CityServiceImpl implements CityService {
    @Autowired
    private CityMapper cityMapper;

    public List<Province> findprovince() throws Exception {
        List<Province> findprovince = cityMapper.findprovince();
        return findprovince;
    }

    public List<City> findCityByCid(Integer pid) throws Exception {
        List<City> cityByCid = cityMapper.findCityByCid(pid);
        return cityByCid;
    }

    public List<District> findDistrctByCid(Integer cid) throws Exception {
        List<District> distrctByCid = cityMapper.findDistrctByCid(cid);
        return distrctByCid;
    }

    public List<Towns> findTownsBydis(Integer did) throws Exception {
        List<Towns> townsBydis = cityMapper.findTownsBydis(did);
        return townsBydis;
    }
}
