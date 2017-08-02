package com.xoqao.web.bean.category;
import java.util.*;
/**
 * Created by win8.1 on 2017/7/25.
 */

public class SmallCategory {
    private  String small;
    private ArrayList<Category> categoryList;

    public String getSmall() {
        return small;
    }

    public void setSmall(String small) {
        this.small = small;
    }

    public ArrayList<Category> getCategoryList() {
        return categoryList;
    }

    public void setCategoryList(ArrayList<Category> categoryList) {
        this.categoryList = categoryList;
    }
}
