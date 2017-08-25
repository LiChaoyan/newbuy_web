package com.xoqao.web.service;

import com.xoqao.web.bean.Address.Address;
import com.xoqao.web.bean.Address.ShipAddress;
import com.xoqao.web.dao.AddressMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

/**
 * Created by win8.1 on 2017/8/23.
 */
@Service
public class AddressSericelmpl implements AddressService {

    @Autowired
    private AddressMapper addressMapper;

    public ArrayList<Address> selectProvince()throws Exception{
        return addressMapper.selectProvince();
    }
    public ArrayList<Address> selectCity(@Param("pid")int pid)throws Exception{
        return addressMapper.selectCity(pid);
    }
    public ArrayList<Address> selectDistrict(@Param("cityid")int cityid)throws Exception{
        return addressMapper.selectDistrict(cityid);
    }
    public ArrayList<Address> selectTowns(@Param("did")int did)throws Exception{
        return addressMapper.selectTowns(did);
    }
    public ArrayList<Address> selectCommunity(@Param("tid")int tid)throws Exception{
        return addressMapper.selectCommunity(tid);
    }
    public void Addaddress(@Param("shipAddress") ShipAddress shipAddress)throws Exception{
        addressMapper.Addaddress(shipAddress);
    }
    public ArrayList<ShipAddress> selectAddress(@Param("uid") int uid)throws Exception{
        return addressMapper.selectAddress(uid);
    }
    public void Deleaddress(@Param("said")int said)throws Exception{
        addressMapper.Deleaddress(said);
    }
    public void Upaddress(@Param("shipAddress") ShipAddress shipAddress)throws Exception{
        addressMapper.Upaddress(shipAddress);
    }
    public void UpmoaddressAll(@Param("uid") int uid)throws Exception{
        addressMapper.UpmoaddressAll(uid);
    }
    public void Upmoaddress(@Param("said") int said)throws Exception{
        addressMapper.Upmoaddress(said);
    }
    public int selectsizeByuid(@Param("uid") int uid)throws Exception{
        return addressMapper.selectsizeByuid(uid);
    }
}
