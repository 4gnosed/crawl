package cn.edu.guet.zti.web.dao;

import cn.edu.guet.zti.web.pojo.Place;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PlaceDao {

    public int addPlace(Place place);

    public Place findPlaceById(int placeId);

    public Place findPlaceByUrlId(String placeUrlId);

    public List<String> getAllPlaceUrlId();

    public List<Place> getPlacesByPage(@Param("start") int start, @Param("pageSize") int pageSize);

    public int getTotalPage();

    String getplaceNameByUrlId(String placeUrlId);
}
