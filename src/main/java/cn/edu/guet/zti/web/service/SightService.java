package cn.edu.guet.zti.web.service;

import cn.edu.guet.zti.web.pojo.Comment;
import cn.edu.guet.zti.web.pojo.Sight;

import java.util.ArrayList;
import java.util.List;

public interface SightService {
    public int addSight(Sight sight);

    public Sight getSightById(int sightId);

    public Sight getSightByUrlId(String webAppPath, String sightUrlId);

    public ArrayList<Sight> getSightsByPage(String webAppPath, String placeUrlId, String placeName, int pageNum);

    public int getTotalPage(String placeUrlId, String placeName);

    public List<Comment> getCommentByPageNum(int pageNum, String sightUrlId);
}
