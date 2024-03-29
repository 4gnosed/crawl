package cn.edu.guet.zti.web.serviceImpl;

import cn.edu.guet.zti.web.constant.Constant;
import cn.edu.guet.zti.web.dao.CommentDao;
import cn.edu.guet.zti.web.dao.SightDao;
import cn.edu.guet.zti.web.pojo.Comment;
import cn.edu.guet.zti.web.pojo.Sight;
import cn.edu.guet.zti.web.service.SightService;
import cn.edu.guet.zti.web.util.FileNameUtils;
import cn.edu.guet.zti.web.util.IntroductionSplitUtills;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

@Service
public class SightServiceImpl implements SightService {
    @Autowired
    private SightDao sightDao;

    @Autowired
    private CommentDao commentDao;

    @Override
    public int addSight(Sight sight) {
        return 0;
    }

    @Override
    public Sight getSightById(int sightId) {
        return null;
    }

    @Override
    public Sight getSightByUrlId(String webAppPath, String sightUrlId) {
        Sight sight = sightDao.findSightBySightUrlId(sightUrlId);
        ArrayList<String> pictureNames = FileNameUtils.getPictureNames(webAppPath, sight.getPlaceUrlId(), sight.getSightUrlId());
        sight.setPicNames(pictureNames);
        sight.setCommentCount(commentDao.getCountBySightUrlId(sight.getSightUrlId()));
        //景点介绍根据图片数目划分段落
        List<String> introList = IntroductionSplitUtills.split(sight.getIntroduction(), pictureNames.size());
        sight.setIntroList(introList);
        return sight;
    }

    @Override
    public ArrayList<Sight> getSightsByPage(String webAppPath, String placeUrlId, String placeName, int pageNum) {
        ArrayList<Sight> sights = sightDao.getSightsByPage(placeUrlId, placeName,(pageNum - 1) * Constant.SIGHT_PAGE_SIZE, Constant.SIGHT_PAGE_SIZE);
        System.out.println(placeName+placeUrlId+"景点："+sights.size());
        for (Sight sight : sights) {
            ArrayList<String> pictureNames = FileNameUtils.getPictureNames(webAppPath, sight.getPlaceUrlId(), sight.getSightUrlId());
            sight.setPicNames(pictureNames);
            sight.setCommentCount(commentDao.getCountBySightUrlId(sight.getSightUrlId()));
            System.out.println(sight);
        }
        //根据评论数进行从大到小排
        sights.sort(Comparator.comparing(Sight::getCommentCount).reversed());
        return sights;
    }

    @Override
    public int getTotalPage(String placeUrlId, String placeName) {
        return sightDao.getTotalPage(placeUrlId,placeName);
    }

    @Override
    public List<Comment> getCommentByPageNum(int pageNum, String sightUrlId) {
        return commentDao.getCommentByPageNum((pageNum - 1) * Constant.COMMENT_PAGE_SIZE, Constant.COMMENT_PAGE_SIZE, sightUrlId);
    }
}
