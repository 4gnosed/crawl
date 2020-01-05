package cn.edu.guet.zti.web.dao;

import cn.edu.guet.zti.web.pojo.Sight;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;
import java.util.List;

public interface SightDao {
    public int addSight(Sight sight);

    public Sight findSightBySightUrlId(String sightUrlId);

    public List<String> getAllPlaceUrlId();

    public ArrayList<Sight> getSightsByPage(@Param("placeUrlId") String placeUrlId,@Param("placeName")String placeName,
                                            @Param("start") int start, @Param("pageSize") int pageSize);

    public int getTotalPage(@Param("placeUrlId") String placeUrlId,@Param("placeName")String placeName);
}
