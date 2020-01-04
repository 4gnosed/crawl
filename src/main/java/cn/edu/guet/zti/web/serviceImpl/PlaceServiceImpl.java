package cn.edu.guet.zti.web.serviceImpl;

import cn.edu.guet.zti.web.constant.Constant;
import cn.edu.guet.zti.web.dao.PlaceDao;
import cn.edu.guet.zti.web.dao.SightDao;
import cn.edu.guet.zti.web.pojo.Place;
import cn.edu.guet.zti.web.service.PlaceService;
import cn.edu.guet.zti.web.util.FileNameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PlaceServiceImpl implements PlaceService {

    @Autowired
    private PlaceDao placeDao;

    @Autowired
    private SightDao sightDao;

    @Override
    public int addPlace(Place place) {
        return this.placeDao.addPlace(place);
    }

    @Override
    public Place getPlaceById(int placeId) {
        return this.placeDao.findPlaceById(placeId);
    }

    @Override
    public Place getPlaceByUrlId(String placeUrlId) {
        return this.placeDao.findPlaceByUrlId(placeUrlId);
    }

    @Override
    public List<Place> getPlacesByPage(String webAppPath, int pageNum) {
        List<Place> places = placeDao.getPlacesByPage((pageNum - 1) * Constant.PLACE_PAGE_SIZE, Constant.PLACE_PAGE_SIZE);
        for (Place place : places) {
            String pictureName = FileNameUtils.getPictureNameByKeyword(webAppPath, place.getPlaceUrlId(), Constant.SIGHT_KEYWORD, "");
            place.setPicName(pictureName);
            place.setSightList(sightDao.getSightsByPage(place.getPlaceUrlId(), Constant.START, Constant.TOP_FIVE_PAGE_SIZE));
        }
        return places;
    }

    @Override
    public int getTotalPage() {
        return placeDao.getTotalPage();
    }

    @Override
    public String getplaceNameByUrlId(String placeUrlId) {
        return placeDao.getplaceNameByUrlId(placeUrlId);
    }
}
