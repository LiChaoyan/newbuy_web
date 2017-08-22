package com.xoqao.web.service;

import com.xoqao.web.bean.city.City;
import com.xoqao.web.bean.city.District;
import com.xoqao.web.bean.city.Province;
import com.xoqao.web.bean.city.Towns;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 说明：
 * Author: lovegod
 * Date:  2017/8/22.
 * Email:dx96_j@163.com
 */
public interface CityService {

    List<Province> findprovince() throws Exception;

    List<City> findCityByCid(Integer pid) throws Exception;

    List<District> findDistrctByCid(Integer cid) throws Exception;

    List<Towns> findTownsBydis( Integer did) throws Exception;
}
