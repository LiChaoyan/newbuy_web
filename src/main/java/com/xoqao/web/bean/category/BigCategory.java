package com.xoqao.web.bean.category;
import java.util.*;
/**
 * Created by win8.1 on 2017/7/25.
 */
public class BigCategory {
    private String big;

    private ArrayList<SmallCategory> smallCategoryList;

    public String getBig() {
        return big;
    }

    public void setBig(String big) {
        this.big = big;
    }

    public ArrayList<SmallCategory> getSmallCategoryList() {
        return smallCategoryList;
    }

    public void setSmallCategoryList(ArrayList<SmallCategory> smallCategoryList) {
        this.smallCategoryList = smallCategoryList;
    }
}
