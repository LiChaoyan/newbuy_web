package com.xoqao.web.service;

import com.xoqao.web.bean.category.Category;
import com.xoqao.web.dao.CategoryMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by win8.1 on 2017/7/20.
 */
@Service
public class CategoryServicelmpl implements CategoryService{
    @Autowired
    private CategoryMapper categoryMapper;

    public List<Category> selectBig()throws Exception{
        return categoryMapper.selectBig();
    }
    public List<Category> selectSmall(String big_big)throws Exception{
        return categoryMapper.selectSmall(big_big);
    }
    public List<Category> selectSecend(String big_big,String small_small)throws Exception{
        return categoryMapper.selectSecend(big_big,small_small);
    }
    public void savecategory(Category category)throws Exception{
        categoryMapper.savecategory(category);
    }
    public List<Category>  selectCategory(Category category)throws Exception{
        return categoryMapper.selectCategory(category);
    }

    public void updateCategory(Category category)throws Exception{
        categoryMapper.updatecategory(category);
    }
    public List<Category>  selectCategoryBysid(int sid)throws Exception{
        return categoryMapper.selectCategoryBysid(sid);
    }
}
