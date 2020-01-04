package cn.edu.guet.zti.web.webmagic.pipeline.persistent;

import cn.edu.guet.zti.web.constant.Constant;
import cn.edu.guet.zti.web.dao.CommentDao;
import cn.edu.guet.zti.web.dao.SightDao;
import cn.edu.guet.zti.web.pojo.Comment;
import cn.edu.guet.zti.web.pojo.Sight;
import cn.edu.guet.zti.web.util.UrlFileDownloadUtils;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.TypeReference;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import us.codecraft.webmagic.ResultItems;
import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.pipeline.Pipeline;

import java.io.File;
import java.util.List;

/**
 * 持久化景点详细信息
 */
@Service
public class PersistentSightPipeline implements Pipeline {

    @Autowired
    private SightDao sightDao;
    @Autowired
    private CommentDao commentDao;

    public void process(ResultItems resultItems, Task task) {
        String sightUrlId = resultItems.get("sightUrlId").toString();

        //调用commentDao，如果查询一个景点的评论数大于或等于200则不持久化了
/*        int commentNumber = commentDao.getCountBySightUrlId(sightUrlId);
        if (commentNumber >= 200) {
            System.out.println("景点评论数已达到预期：" + sightUrlId + "---" + commentNumber);
            return;
        } else if (commentNumber <= 10) {
            persistentComment(resultItems, sightUrlId);
        } else {
            System.out.println("景点评论数可能正常：" + sightUrlId + "---" + commentNumber);
        }*/


        //调用sightDao，根据setSightUrlId查询是否存在该景点
        if (sightDao.findSightBySightUrlId(sightUrlId) != null) {
            System.out.println("景点已存在：" + sightUrlId + "\n");
            return;
        }
        persistentBasicInfo(resultItems, sightUrlId);

    }

    /**
     * 持久化基本信息
     *
     * @param resultItems
     * @param sightUrlId
     */
    private void persistentBasicInfo(ResultItems resultItems, String sightUrlId) {
        String placeUrlId = resultItems.get("placeUrlId");
        List<String> sightPictureLinkList = resultItems.get("sightPictureLink");
        String sightName = resultItems.get("sightName");
        String sightAddress = resultItems.get("sightAddress");
        String rank = resultItems.get("rank");
        String phone = resultItems.get("phone");
        String webSite = resultItems.get("website");
        String openTime = resultItems.get("openTime");
        String sightScore = resultItems.get("sightScore");
        String sightIntroduction = resultItems.get("sightIntroduction");
        //创建目录，下载图片到该目录下
        File picturedirectory = new File(Constant.PICTURE_REAL_PATH + placeUrlId + "\\sight\\" + sightUrlId);
        UrlFileDownloadUtils.downloadFiles(sightPictureLinkList, picturedirectory);
        Sight sight = new Sight();
        sight.setSightName(sightName);
        sight.setSightUrlId(sightUrlId);
        sight.setAddress(sightAddress);
        sight.setRank(rank);
        sight.setPhone(phone);
        sight.setWebsite(webSite);
        sight.setOpenTime(openTime);
        sight.setScore(sightScore);
        sight.setIntroduction(sightIntroduction);
        sight.setPlaceUrlId(placeUrlId);
        int isSuccess = sightDao.addSight(sight);
        if (isSuccess == 1) {
            System.out.println("持久化景点基本信息：" + sight.toString() + "\n");
        }
    }

    /**
     * 持久化评论
     *
     * @param resultItems
     * @param sightUrlId
     */
    private void persistentComment(ResultItems resultItems, String sightUrlId) {
        List<String> commentResponseList = resultItems.get("commentResponseList");
        Comment comment = new Comment();
        comment.setSightUrlId(sightUrlId);
        int isInsert = 0;
        //RequestPayload方式返回的json数据
        if (commentResponseList != null) {
            for (int i = 0; i < commentResponseList.size(); i++) {
                String commentResponse = commentResponseList.get(i);
                String data = JSON.parseObject(commentResponse).getString("data");
                String comments = JSON.parseObject(data).getString("comments");
                List<JSONObject> jsonObjectList = JSON.parseObject(comments, new TypeReference<List<JSONObject>>() {
                });

                for (JSONObject jo : jsonObjectList) {
                    //获取一条评论
                    comment.setUserName(jo.getString("uid"));
                    comment.setContent(jo.getString("content"));
                    comment.setPublishTime(jo.getString("date"));
                    comment.setScore(Integer.parseInt(jo.getString("score")));
                    //持久化
                    isInsert = commentDao.addComment(comment);
                }
            }
        } else {
            //FormData方式返回的html格式的数据
            List<String> userNameList = resultItems.get("userName");
            List<String> commentContentList = resultItems.get("commentContent");
            List<String> commentTimeList = resultItems.get("commentTime");
            List<String> userScoreList = resultItems.get("userScore");

            for (int i = 0; i < userNameList.size(); i++) {
                //按数组顺序获取一条评论
                comment.setUserName(userNameList.get(i));
                comment.setContent(commentContentList.get(i));
                comment.setPublishTime(commentTimeList.get(i));
                comment.setScore(Integer.parseInt(userScoreList.get(i)));
                //持久化
                isInsert = commentDao.addComment(comment);
            }
        }
        if (isInsert == 1) {
            System.out.println("持久化景点评论：" + comment.getSightUrlId());
        }
    }
}
