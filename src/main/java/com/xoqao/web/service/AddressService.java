package com.xoqao.web.service;

import com.xoqao.web.bean.Address.Address;
import com.xoqao.web.bean.Address.ShipAddress;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;

/**
 * Created by win8.1 on 2017/8/23.
 */
public interface AddressService {
    ArrayList<Address> selectProvince()throws Exception;
    ArrayList<Address> selectCity(@Param("pid")int pid)throws Exception;
    ArrayList<Address> selectDistrict(@Param("cityid")int cityid)throws Exception;
    ArrayList<Address> selectTowns(@Param("did")int did)throws Exception;
    ArrayList<Address> selectCommunity(@Param("tid")int tid)throws Exception;
    void Addaddress(@Param("shipAddress") ShipAddress shipAddress)throws Exception;
}
