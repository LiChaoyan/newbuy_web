package com.xoqao.web.dao;

import com.xoqao.web.bean.category.BigCategory;
import com.xoqao.web.bean.category.Category;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by win8.1 on 2017/7/20.
 */
@Service
public interface CategoryMapper {
    List<Category> selectCategoryBycgid(@Param("cgid")int cgid)throws Exception;
    ArrayList<BigCategory> select123List()throws Exception;
    List<Category> selectBig()throws Exception;
    List<Category> selectSmall(@Param("big_big")String big_big)throws  Exception;
    List<Category> selectSecend(@Param("big_big")String big_big,@Param("small_small")String small_small)throws Exception;
    void savecategory(Category category)throws Exception;
    List<Category> selectCategory(Category category)throws Exception;
    void updatecategory(Category category)throws Exception;
    List<Category> selectCategoryBysid(@Param("sid")int sid)throws  Exception;
    //查找店铺内部分类
    ArrayList<BigCategory> selectShopBycid(int cid)throws Exception;
    List<Category> selectBigBycid(@Param("cid")int cid)throws Exception;
    List<Category> selectSmallBycid(@Param("cid")int cid,@Param("big_big")String big_big)throws  Exception;
    List<Category> selectSecendBycid(@Param("cid")int cid,@Param("big_big")String big_big,@Param("small_small")String small_small)throws Exception;
}
