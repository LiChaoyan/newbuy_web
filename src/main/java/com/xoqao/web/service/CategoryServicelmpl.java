package com.xoqao.web.service;

import com.xoqao.web.bean.category.BigCategory;
import com.xoqao.web.bean.category.Category;
import com.xoqao.web.bean.category.SmallCategory;
import com.xoqao.web.dao.CategoryMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by win8.1 on 2017/7/20.
 */
@Service
public class CategoryServicelmpl implements CategoryService{
    @Autowired
    private CategoryMapper categoryMapper;

    public ArrayList<BigCategory> select123List()throws Exception{
        //动态添加商品分类
        ArrayList<BigCategory> list = new ArrayList<BigCategory>();
        List<Category> categorybigList = categoryMapper.selectBig();
        for (int i = 0; i < categorybigList.size(); i++) {
            String big = categorybigList.get(i).getBig();
            ArrayList<Category> categorysmallList = (ArrayList<Category>) categoryMapper.selectSmall(big);

            BigCategory bigCategory = new BigCategory();
            ArrayList<SmallCategory> smallCategories = new ArrayList<SmallCategory>();

            for (int j = 0; j < categorysmallList.size(); j++) {
                String small = categorysmallList.get(j).getSmall();

                ArrayList<Category> categorysecendList = (ArrayList<Category>) categoryMapper.selectSecend(big, small);

                SmallCategory smallCategory = new SmallCategory();
                smallCategory.setSmall(small);
                smallCategory.setCategoryList(categorysecendList);

                smallCategories.add(smallCategory);

            }
            bigCategory.setBig(big);
            bigCategory.setSmallCategoryList(smallCategories);
            list.add(bigCategory);
        }

        return list;
    }
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
