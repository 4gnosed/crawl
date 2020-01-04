package cn.edu.guet.zti.web.dao;

import cn.edu.guet.zti.web.pojo.Comment;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CommentDao {
    public int addComment(Comment comment);

    public int getCountBySightUrlId(String sightUrlId);

    public List<Comment> getCommentByPageNum(@Param("start") int start, @Param("pageSize") int pageSize, @Param("sightUrlId") String sightUrlId);
}
