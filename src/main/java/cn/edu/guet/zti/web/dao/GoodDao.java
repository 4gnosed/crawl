package cn.edu.guet.zti.web.dao;

import cn.edu.guet.zti.web.pojo.Good;

import java.util.ArrayList;
import java.util.List;

public interface GoodDao {
    public int addGood(Good good);

    public Good findGoodByUrlId(String goodUrlId);

    ArrayList<Good> getGoodsByPlaceUrlId(String placeUrlId);

    ArrayList<Good> selectAll();

}
