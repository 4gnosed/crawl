package cn.edu.guet.zti.web.webmagic;

import cn.edu.guet.zti.web.constant.Constant;
import cn.edu.guet.zti.web.dao.CommentDao;
import cn.edu.guet.zti.web.dao.PlaceDao;
import cn.edu.guet.zti.web.dao.SightDao;
import cn.edu.guet.zti.web.pojo.Comment;
import cn.edu.guet.zti.web.util.CheckTimeOutUtils;
import cn.edu.guet.zti.web.util.UrlUtils;
import cn.edu.guet.zti.web.webmagic.ajax.commentFormData;
import cn.edu.guet.zti.web.webmagic.ajax.commentRequestPayload;
import cn.edu.guet.zti.web.webmagic.downloader.CustomHttpClientDownloader;
import cn.edu.guet.zti.web.webmagic.pipeline.ConsolePipeline;
import cn.edu.guet.zti.web.webmagic.pipeline.SightPipeline;
import cn.edu.guet.zti.web.webmagic.pipeline.persistent.PersistentPlacePipeline;
import cn.edu.guet.zti.web.webmagic.pipeline.persistent.PersistentSightPipeline;
import cn.edu.guet.zti.web.webmagic.processor.PlacesPageProcessor;
import cn.edu.guet.zti.web.webmagic.processor.SightPageProcessor;
import cn.edu.guet.zti.web.webmagic.processor.ToSightPageProcessor;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.TypeReference;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import us.codecraft.webmagic.Spider;

import java.io.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring/*.xml")
public class SpiderSight {
    @Autowired
    private PersistentPlacePipeline persistentPlacePipeline;
    @Autowired
    private PersistentSightPipeline persistentSightPipeline;
    @Autowired
    private PlaceDao placeDao;
    @Autowired
    private SightDao sightDao;
    @Autowired
    private CommentDao commentDao;

    /**
     * 爬取广西内81个地方的信息，并持久化数据
     */
    @Test
    public void crawlAllPlacesAndPersistent() {
        Spider.create(new PlacesPageProcessor())
                .addUrl(Constant.GUANGXI_SIGHT_LIST_URL)
                //打印各个地方的信息
                .addPipeline(new ConsolePipeline())
                //进入每一个地方链接
//                .addPipeline(new ToSightPipeline())
                //保存地方信息到数据库，其中图片存到工程目录下，图片名存至数据库
                .addPipeline(persistentPlacePipeline)
                //通过重写自定义Downloader组件，添加必须的请求头属性
                .setDownloader(new CustomHttpClientDownloader())
                .thread(5)
                .run();
    }

    /**
     * 根据日志文件，爬取一个个景点的详细信息,包括用户评论，并持久化
     */
    @Test
    public void crawlASightAndPersistent() {
        int beginLine = 1;
        String filePath = "C:\\Users\\gnosed\\Desktop\\软件项目综合开发\\景点第五次爬取.txt";
//        String filePath = "C:\\Users\\gnosed\\Desktop\\软件项目综合开发\\景点评论第一次爬取.txt";
        ArrayList<String> sightLinklist = CheckTimeOutUtils.getSightLinklist(beginLine, filePath);
        for (String sightLink : sightLinklist) {
            Spider.create(new SightPageProcessor(UrlUtils.getPlaceUrlIdBySightLink(sightLink)))
                    .addUrl(sightLink)
                    .setDownloader(new CustomHttpClientDownloader())
//                    .addPipeline(new ConsolePipeline())
                    .addPipeline(persistentSightPipeline)
                    .thread(10)
                    .run();
        }
        System.out.println(sightLinklist.size());
    }

    /**
     * 爬取一个地方的所有景点的详细信息,包括用户评论，并持久化
     * <p>
     * 对于龙胜这个地方49个景点，按1s一次请求爬取景点链接，3s一次请求爬取景点信息，
     * 不持久化，大概需要1m45s,添加持久化操作，
     * 出现空指针异常，是因为Spider在遍历Pipeline时，未发现persistentSightPipeline对象，
     * 说明它未注入到SightPipeline，因为可以在SpiderTest里首先注入persistentSightPipeline，
     * 将其和placeUrlId同样的方式传送到SightPipeline,最后成功持久化景点数据，用时2m14s
     */
    @Test
    public void crawlAPlaceAllSights() {
        String placeLink = "/sight/nanning166.html";
        Spider.create(new ToSightPageProcessor(UrlUtils.getPlaceUrlIdByPlaceLink(placeLink), persistentSightPipeline))
                .addUrl(UrlUtils.getUrl(placeLink))
                //查看获取到的景点链接
//                .addPipeline(new ConsolePipeline())
                //根据该Spider获取到的景点链接，再创建Spider爬取每一个景点的详细信息
                .addPipeline(new SightPipeline())
                .thread(3)
                .run();
    }

    /**
     * 爬取所有地方的所有景点的详细信息,包括用户评论，并持久化
     * <p>
     * 首先通过placeDao获取81个placeUrlId，进而通过工具类获取placeLink，
     * 最后遍历所有地方，进而持久化每一个地方的所有景点
     * <p>
     * 花费4h3m44s，其中部分景点重复了为持久化，有一个地方的景点之前已持久化，
     * 还有部分页面读取超时，这需要后期处理时可通过日志文件再次爬取
     * <p>
     * 注意，不同地点的景点可能有重合，比如桂林的景点实际上包含了阳朔的，
     * 因此，实际上获取到的景点所属的地方不足81，只有43个，总共有三千三百多个景点
     * <p>
     * 后期查找阳朔的景点，必须要在桂林里找，可根据地址判断
     * <p>
     * 由于对数据库的景点表进行truncate误删，因此需要重新爬取,2h26m21s,985个景点，不足
     */
    @Test
    public void crawlAllPlacesAllSights() {
        List<String> placeUrlIdList = placeDao.getAllPlaceUrlId();
        String placeLink;
        for (String placeUrlId : placeUrlIdList) {
            placeLink = UrlUtils.getPlaceLinkPrefix(placeUrlId);
            Spider.create(new ToSightPageProcessor(placeUrlId, persistentSightPipeline))
                    .addUrl(UrlUtils.getUrl(placeLink))
                    //根据该Spider获取到的景点链接，再创建Spider爬取每一个景点的详细信息
                    .addPipeline(new SightPipeline())
                    .thread(3)
                    .run();
        }
    }

    /**
     * 检查81个地方中，其中38个地方的景点为有记录,
     * 对于这些地方的景点缺失的原因，有两种情况：
     * <p>
     * 1.该地方所有的景点已经属于另一个地方的范围中
     * 2.为进入该地方的景点列表页进行爬取（请求超时）
     * <p>
     * 对于情况1和2，都需要重新请求，获取该地方所有景点并持久化
     * 还有一种情况，对于那些没有缺失的地方，其景点可能也不是完整的，
     * 即其其余景点可能属于另一个地方的范围中，不过这里不再爬取确认，
     * 只需要后期获取景点时根据地址模糊搜索
     * <p>
     * 一些地方请求可能会再次超时，需要再次同样操作补充数据库
     */
    @Test
    public void checkWhichPlaceNotFoundAndCrawlPersistent() {
        ArrayList<String> placeUrlIdNotFoundList = new ArrayList<String>();
        List<String> placeUrlIdListInPlace = placeDao.getAllPlaceUrlId();
        List<String> placeUrlIdListInSight = sightDao.getAllPlaceUrlId();
        for (String placeUrlIdInPlace : placeUrlIdListInPlace) {
            boolean found = false;
            for (String placeUrlIdInSight : placeUrlIdListInSight) {
                if (placeUrlIdInPlace.equals(placeUrlIdInSight)) {
                    found = true;
                    break;
                }
            }
            if (!found) {
                System.out.print(placeUrlIdInPlace + " ");
                placeUrlIdNotFoundList.add(placeUrlIdInPlace);
            }
        }
        System.out.println("未出现地方占 " + placeUrlIdNotFoundList.size() + "/" + placeUrlIdListInPlace.size());

        //爬取缺失的地方的所有景点并持久化
        for (String placeUrlId : placeUrlIdNotFoundList) {
            String placeLink = UrlUtils.getPlaceLinkPrefix(placeUrlId);
            Spider.create(new ToSightPageProcessor(placeUrlId, persistentSightPipeline))
                    .addUrl(UrlUtils.getUrl(placeLink))
                    //根据该Spider获取到的景点链接，再创建Spider爬取每一个景点的详细信息
                    .addPipeline(new SightPipeline())
                    .thread(3)
                    .run();
        }
    }

    /**
     * 读取第二次爬取景点的日志文件，获取请求超时的页面链接，再次请求并持久化,
     * 查找关键词 java.net.SocketTimeoutException，有58个，有3种类别的链接页：
     * 1.地方景点列表首页：https://you.ctrip.com/sight/liucheng3072.html
     * 2.地方景点列表非首页：https://you.ctrip.com/sight/binyang3048/s0-p3.html
     * 3.景点详情页：https://you.ctrip.com/sight/binyang3048/4648882.html
     * 为了节省时间，发现关键词是从7459行才出现的，因此从7000行开始读数据
     * <p>
     * 由于景点页不知道该页所属的地方id，因此不能直接爬取,需要根据url推断placeUrlId
     * <p>
     * 由于第一次爬取时，对景点首页的链接判断处理不当，出现14次java.lang.IllegalArgumentException异常，
     * 因此再次读取日志文件读取该异常对应的地方，除此之外，想要再次读取第一次请求超时的景点，
     * 同时为了避免因为1个超时景点而爬取景点对应的地方的其它已持久化的景点所花费的时间，
     * 这里判断同地方超时超过3个时，重新爬取该地方
     * <p>
     * 第3次爬取时，只需要判断超时景点并持久化
     * <p>
     * 在爬取景点评论时，忽略了情况：只有一页的评论，没有 totalPage 因而出现异常java.lang.NumberFormatException: null，
     * 因此需要根据日志再次爬取特殊的景点的评论，还有一种情况需要重新爬取的是是超时景点
     */
    @Test
    public void checkTimeOutPageAndPersistent() {
//        int beginLine = 7459;
//        String filePath = "C:\\Users\\gnosed\\Desktop\\软件项目综合开发\\景点第二次爬取.txt";
        int beginLine = 1;
        String filePath = "C:\\Users\\gnosed\\Desktop\\软件项目综合开发\\景点第三次爬取.txt";
        ArrayList<String> placeLinklist = CheckTimeOutUtils.getPlaceLinklist(beginLine, filePath);

        //对地方首页或者地方非首页进行爬取并持久化
        for (String placeLink : placeLinklist) {
            Spider.create(new ToSightPageProcessor(UrlUtils.getPlaceUrlIdByPlaceLink(placeLink), persistentSightPipeline))
                    .addUrl(UrlUtils.getUrl(placeLink))
                    //查看获取到的景点链接
                    .addPipeline(new ConsolePipeline())
                    //根据该Spider获取到的景点链接，再创建Spider爬取每一个景点的详细信息
                    .addPipeline(new SightPipeline())
                    .thread(3)
                    .run();
        }
    }

    /**
     * 由于误删景点表，重新安排爬取之后，发现只爬不到1000个景点，因此需要从前两次日志中，
     * 解析sightUrlId判断是否存在库中，如果不存在则爬取，即使绝大多数景点信息寥少
     * <p>
     * 最终发现有cnt==774个景点没有被初始化
     */
    @Test
    public void resolveLogsAndaddSight() {
        //HashSet存放sightUrlId，本身去重特性
        HashMap<String, String> sightUrlIdMap = new HashMap<String, String>();
        int beginLine = 1;
        String filePath1 = "C:\\Users\\gnosed\\Desktop\\软件项目综合开发\\景点第一次爬取.txt";
        String filePath2 = "C:\\Users\\gnosed\\Desktop\\软件项目综合开发\\景点第二次爬取.txt";
        sightUrlIdMap = CheckTimeOutUtils.getSightUrlIdMap(beginLine, filePath1, sightUrlIdMap);
        sightUrlIdMap = CheckTimeOutUtils.getSightUrlIdMap(beginLine, filePath2, sightUrlIdMap);
//        System.out.println(sightUrlIdMap.size());
        int cnt = 0;
        for (String sightUrlId : sightUrlIdMap.keySet()) {
            //数据库是否已存在该景点
            if (sightDao.findSightBySightUrlId(sightUrlId) == null) {
                cnt++;
                String placeUrlId = sightUrlIdMap.get(sightUrlId);
                Spider.create(new SightPageProcessor(placeUrlId))
                        .addUrl(UrlUtils.getUrlBySightUrlIdAndPlaceUrlId(sightUrlId, placeUrlId))
                        .setDownloader(new CustomHttpClientDownloader())
//                        .addPipeline(new ConsolePipeline())
                        .addPipeline(persistentSightPipeline)
                        .thread(10)
                        .run();
            } else {
                System.out.println("景点已存在：" + sightUrlId);
            }
        }
        System.out.println("共尝试持久化有" + cnt + "个景点");
    }

    /**
     * 爬取RequestPayload方式的AJAX请求
     *
     * @throws IOException
     */
    @Test
    public void crawlCommentByRequestPayloadAndPersistent() throws IOException {
        String response = new commentRequestPayload()
                .getComment(2, 10, "51452", "09031153311214479604");

        String data = JSON.parseObject(response).getString("data");
        String comments = JSON.parseObject(data).getString("comments");
        List<JSONObject> jsonObjectList = JSON.parseObject(comments, new TypeReference<List<JSONObject>>() {
        });

        Comment comment = new Comment();
        for (JSONObject jo : jsonObjectList) {
            //获取一条评论
            comment.setUserName(jo.getString("uid"));
            comment.setContent(jo.getString("content"));
            comment.setPublishTime(jo.getString("date"));
            comment.setScore(Integer.parseInt(jo.getString("score")));
            comment.setSightUrlId("51452");
            //持久化
            int i = commentDao.addComment(comment);
            if (i == 1) {
                System.out.println("持久化成功：" + comment.getUserName());
            }
        }

    }

    /**
     * 爬取FormDAta方式的AJAX请求
     *
     * @throws IOException
     */
    @Test
    public void crawlFormDataComment() throws IOException {
        System.out.println(new commentFormData().
                getComment(1, "101768"));
    }

    /**
     * 测试由placeUrlId命名创建目录
     */
    @Test
    public void test() {
        String purl = "/place/t2899.html";
        String placeUrlId = purl.substring(7, purl.indexOf(".html"));
        File directory = new File(Constant.PICTURE_REAL_PATH + placeUrlId);
        if (!directory.exists() && !directory.isDirectory()) {
            directory.mkdir();
            System.out.println("创建了");
        } else {
            System.out.println("出错");
        }

    }

}
