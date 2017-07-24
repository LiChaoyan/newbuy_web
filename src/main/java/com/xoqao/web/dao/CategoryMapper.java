package com.xoqao.web.dao;

import com.xoqao.web.bean.category.Category;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by win8.1 on 2017/7/20.
 */
@Service
public interface CategoryMapper {
    List<Category> selectBig()throws Exception;
    List<Category> selectSmall(@Param("big_big")String big_big)throws  Exception;
    List<Category> selectSecend(@Param("big_big")String big_big,@Param("small_small")String small_small)throws Exception;
    void savecategory(Category category)throws Exception;
    List<Category> selectCategory(Category category)throws Exception;
    void updatecategory(Category category)throws Exception;
    List<Category> selectCategoryBysid(@Param("sid")int sid)throws  Exception;

}
