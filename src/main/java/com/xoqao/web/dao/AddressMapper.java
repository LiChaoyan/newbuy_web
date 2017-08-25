package com.xoqao.web.dao;

import com.xoqao.web.bean.Address.Address;
import com.xoqao.web.bean.Address.ShipAddress;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

/**
 * Created by win8.1 on 2017/8/23.
 */
@Service
public interface AddressMapper {

    ArrayList<Address> selectProvince()throws Exception;
    ArrayList<Address> selectCity(@Param("pid")int pid)throws Exception;
    ArrayList<Address> selectDistrict(@Param("cityid")int cityid)throws Exception;
    ArrayList<Address> selectTowns(@Param("did")int did)throws Exception;
    ArrayList<Address> selectCommunity(@Param("tid")int tid)throws Exception;
    void Addaddress(@Param("shipAddress") ShipAddress shipAddress)throws Exception;
    ArrayList<ShipAddress> selectAddress(@Param("uid") int uid)throws Exception;
    void Deleaddress(@Param("said")int said)throws Exception;
    void Upaddress(@Param("shipAddress") ShipAddress shipAddress)throws Exception;
    void UpmoaddressAll(@Param("uid") int uid)throws Exception;
    void Upmoaddress(@Param("said") int said)throws Exception;
    int  selectsizeByuid(@Param("uid") int uid)throws Exception;
}
