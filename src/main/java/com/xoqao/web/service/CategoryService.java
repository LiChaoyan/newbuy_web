package com.xoqao.web.service;

import com.xoqao.web.bean.category.Category;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by win8.1 on 2017/7/20.
 */
public interface CategoryService {
    List<Category> selectBig()throws Exception;
    List<Category> selectSmall(String big_big)throws Exception;
    List<Category> selectSecend(String big_big,String small_small)throws Exception;
    void savecategory(Category category)throws Exception;
    List<Category> selectCategory(Category category)throws Exception;
    void updateCategory(Category category)throws Exception;
    List<Category> selectCategoryBysid(int sid)throws Exception;
}
