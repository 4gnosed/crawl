package cn.edu.guet.zti.web.service;

import cn.edu.guet.zti.web.pojo.Good;

import java.util.ArrayList;
import java.util.List;

public interface GoodService {

    ArrayList<Good> getGoodsByPlaceUrlId(String realPath, String placeUrlId);

    Good getGoodsByGoodUrlId(String webAppPath, String goodUrlId);

    ArrayList<Good> findAll(String webAppPath) throws Exception;

}
