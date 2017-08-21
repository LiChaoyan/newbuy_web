package com.xoqao.web.dao;


import com.xoqao.web.bean.user.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;


import java.util.List;

@Service
public interface UserMapper {

    User findUserByphone(@Param("phone") String phone) throws Exception;

    List<User> findAllUsers() throws Exception;

    User finduserOr(@Param("loginstr") String loginstr) throws Exception;

    void insert(@Param("user") User user) throws Exception;
}