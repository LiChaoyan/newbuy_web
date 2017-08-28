package com.xoqao.web.dao;

import com.xoqao.web.bean.city.City;
import com.xoqao.web.bean.city.District;
import com.xoqao.web.bean.city.Province;
import com.xoqao.web.bean.city.Towns;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 说明：
 * Author: lovegod
 * Date:  2017/8/22.
 * Email:dx96_j@163.com
 */
@Service
public interface CityMapper {

    List<Province> findprovince() throws Exception;

    List<City> findCityByCid(@Param("pid") Integer pid) throws Exception;

    List<District> findDistrctByCid(@Param("cid") Integer cid) throws Exception;

    List<Towns> findTownsBydis(@Param("did") Integer did) throws Exception;
}
