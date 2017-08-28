package com.xoqao.web.service;


import com.xoqao.web.bean.user.User;


import java.util.List;

/**
 * Author: lovegod
 * Created by 123 on 2017/2/20.
 */
public interface UserService {

    User findUserByphone( String phone) throws Exception;

    List<User> findAllUsers()throws Exception;

    User finduserOr( String loginstr)throws Exception;

    void insert( User user) throws Exception;
}
