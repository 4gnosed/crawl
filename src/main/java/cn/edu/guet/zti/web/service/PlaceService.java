package cn.edu.guet.zti.web.service;

import cn.edu.guet.zti.web.pojo.Place;

import java.util.List;

public interface PlaceService {
    public int addPlace(Place place);

    public Place getPlaceById(int placeId);

    public Place getPlaceByUrlId(String placeUrlId);

    public List<Place> getPlacesByPage(String webAppPath, int pageNum);

    public int getTotalPage();

    String getplaceNameByUrlId(String placeUrlId);
}
