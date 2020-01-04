package cn.edu.guet.zti.web.webmagic.processor;

import cn.edu.guet.zti.web.util.UrlUtils;
import cn.edu.guet.zti.web.webmagic.ajax.commentFormData;
import cn.edu.guet.zti.web.webmagic.ajax.commentRequestPayload;
import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.processor.PageProcessor;
import us.codecraft.webmagic.selector.Html;
import us.codecraft.webmagic.selector.Selectable;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * 景点html，有两种不同的样式，而且有一种样式的开放时间又分为两种不同的样式（根据文字长短分），
 * 而且这种样式的html用户评论模块信息是异步请求加载的，而另一种样式的html没有异步请求
 * 用户评论最多只爬取前20页数据
 */
public class SightPageProcessor implements PageProcessor {

    private Site site = Site.me().setRetryTimes(3).setSleepTime(10000).setTimeOut(300000);
    public static final int needPage = 20;
    public static final int pageSize = 10;
    private String placeUrlId;

    public SightPageProcessor() {
    }

    public SightPageProcessor(String placeUrlId) {
        this.placeUrlId = placeUrlId;
    }

    public Site getSite() {
        return site;
    }

    public void process(Page page) {
        //景点id
        String sightUrlId = UrlUtils.getUrlId(page.getUrl().toString());
        page.putField("sightUrlId", sightUrlId);
        //对应的地方id
        page.putField("placeUrlId", placeUrlId);
        //根据景点名称的位置，判断是哪一种样式的html页面
        String sightName = page.getHtml().xpath("div[@class='brief-right']/h2/text()").toString();

        if (sightName == null) {
            //景点基本信息
            SightPageProcessor.getBasicInfo(page);
            //用户评论部分
            SightPageProcessor.getcommentByCommentFormData(page);
        } else if (sightName != null) {
            //景点基本信息
            SightPageProcessor.getBasicInfo(page, sightName);
            //用户评论部分
            SightPageProcessor.getCommentByCommentRequestPayload(page);
        }
    }

    /**
     * 爬取html样式一的景点基本信息
     *
     * @param page
     */
    private static void getBasicInfo(Page page) {
        List<String> picList = page.getHtml()
                .xpath("//div[@class='carousel-inner']/div/a/img/@src").all();
        page.putField("sightPictureLink", picList != null ? picList : " ");

        //景点名称
        String sightName = page.getHtml()
                .xpath("div[@class='dest_toptitle detail_tt']/div[@class='cf']/div[@class='f_left']/h1/a/text()").toString();
        page.putField("sightName", sightName != null ? sightName : " ");
        //景点地址
        String sightAddress = page.getHtml()
                .xpath("div[@class='s_sight_infor']/p/text()").toString();
        page.putField("sightAddress", sightAddress != null ? sightAddress : " ");

        //开放时间
        String openTime = page.getHtml()
                .xpath("div[@class='s_sight_infor']/dl/dd/text()").toString();
        page.putField("openTime", openTime != null ? openTime : " ");
        //景点评分
        String sightScore = page.getHtml()
                .xpath("ul[@class='detailtop_r_info']/li/span[@class='score']/b/text()").toString();
        page.putField("sightScore", sightScore != null ? sightScore : " ");

        //景点介绍(纯为文本)
        String sightIntroduction = page.getHtml()
                .xpath("//div[@class='toggle_s']/div/text()").toString();
        page.putField("sightIntroduction", sightIntroduction != null ? sightIntroduction : " ");

        //景点等级、电话或者官网,按顺序排列，可能有0个、一个或者多个组合
        SightPageProcessor.getRankPhoneWebSite(page);
    }

    /**
     * 爬取html样式二的景点基本信息
     *
     * @param page
     * @param sightName
     */
    private static void getBasicInfo(Page page, String sightName) {
        //图片链接
        List<String> picList = page.getHtml()
                .xpath("//div[@class='introduce-content']/p/img/@src").all();
        //如果景点介绍部分没有图片，那就获取轮播图前6张图片，可是除了第一张，其它图片是异步请求加载的
        if (picList.isEmpty()) {
            picList = page.getHtml()
                    .xpath("//div[@class='small_photo_wrap']/ul/li/a/img/@src").all();
        }
        page.putField("sightPictureLink", picList != null ? picList : " ");
        //景点名称
        page.putField("sightName", sightName != null ? sightName : " ");
        //景点地址
        String sightAddress = page.getHtml()
                .xpath("div[@class='brief-right']/ul/li[@data-reactid='43']/span/text()").toString();
        page.putField("sightAddress", sightAddress != null ? sightAddress : " ");
        //开放时间
        String openTime = page.getHtml()
                .xpath("div[@class='brief-right']/ul/li[@class='time timeLong']/span/text()").toString();
        if (openTime == null) {
            openTime = page.getHtml()
                    .xpath("div[@class='brief-right']/ul/li[@class='time']/span/text()").toString();
        }
        page.putField("openTime", openTime != null ? openTime : " ");
        //景点评分
        String sightScore = page.getHtml()
                .xpath("div[@class='brief-right']/div[@class='score']/span/i/text()").toString();
        page.putField("sightScore", sightScore != null ? sightScore : " ");
        //景点介绍
        SightPageProcessor.getIntroduction(page);

        //景点等级
        String rank = page.getHtml()
                .xpath("//*[@id=\"root\"]/div/div/div/div/div[3]/div[1]/div[1]/div[3]/div[2]/span/strong/text()").toString();
        page.putField("rank", rank != null ? rank : " ");
        //电话
        page.putField("phone", " ");
        //官网
        page.putField("website", " ");
    }

    /**
     * 分页评论（同样是异步请求，这里的方式是Form Data方式）
     * 这里我们只需分析出POST请求的url以及参数，并且需要定位出总页数，以确定可以的评论数量
     * 后面通过验证发现必须的参数只有两个pagenow页码和poiID评论分页id值，后者需要再定位出来
     * poiId值除了出现在js中，还有从js代码分派出来的多个位置
     *
     * @param page
     */
    private static void getcommentByCommentFormData(Page page) {
        String poiId = page.getHtml()
                .xpath("//div[@id='vacationgrouptour']/@data-arrivecityid").toString();
        String totalPageStr = page.getHtml()
                .xpath("//div[@class='ttd_pager cf']/div/span/b/text()").toString();
        int totalPage = needPage;
        if (totalPageStr == null) {
            totalPage = 1;
        } else {
            totalPage = Integer.parseInt(totalPageStr);
            if (totalPage > needPage) totalPage = needPage;
        }
        try {
            for (int pagenow = 1; pagenow <= totalPage; pagenow++) {
                String commentResponse = new commentFormData().
                        getComment(pagenow, poiId);
                if (commentResponse == null) continue;
                SightPageProcessor.resolveComment(page, commentResponse);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    /**
     * 用户评论部分为Request Payload方式的异步请求，另行处理
     * 实际上一次请求返回了前5页数据，5*10条评论，返回 第 (pagenum-1)*5 +1 页到 第 pagenum*5
     * 即每次请求返回了第 (pagenum-1)*(paageSize*responseNum) +1 条评论到pagenum*(pageSize*responseNum) 条评论
     * 这里只爬取前100页数据，注意这里的总页数也是异步加载过来的,
     * 需要获取cid字段(20个正整型数值）
     *
     * @param page
     */
    private static void getCommentByCommentRequestPayload(Page page) {
        String scriptBody = page.getHtml().xpath("/html/body/script[1]").toString();
        int index = scriptBody.lastIndexOf("cid");
        String cid = scriptBody.substring(index + 6, index + 26);
        String sightUrlId = UrlUtils.getUrlId(page.getUrl().toString());
//        System.out.println("cid值，第" + index + "个字符开始：" + cid);
//        System.out.println(page.getUrl().toString());
//        System.out.println("sightUrlId的值：" + sightUrlId);

        int responseNum = 50;
        int requestCount = needPage * pageSize / responseNum;
        ArrayList<String> commentResponseList = new ArrayList<String>();
        try {
            for (int pagenum = 1; pagenum <= requestCount; pagenum++) {
                String response = new commentRequestPayload()
                        .getComment(pagenum, pageSize, sightUrlId, cid);
                if (response == null) continue;
                commentResponseList.add(response);
            }
            page.putField("commentResponseList", commentResponseList != null ? commentResponseList : " ");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * 景点等级、电话或者官网,按顺序排列，可能有0个、一个或者多个组合
     *
     * @param page
     */
    private static void getRankPhoneWebSite(Page page) {
        //提取共性div
        Selectable xpath = page.getHtml().xpath("/html/body/div[3]/div/div[2]/div[1]/ul");
        String s = xpath.xpath("//li[1]/span[1]/text(").toString();
        String content = xpath.xpath("//li[1]/span[2]/text()").toString();
        if (s != null && s.contains("等")) {
            //最多有三个组合
            page.putField("rank", content);
            String s1 = xpath.xpath("//li[2]/span[1]/text()").toString();
            String content1 = xpath.xpath("//li[2]/span[2]/text()").toString();
            if (s1 != null && s1.contains("电")) {
                page.putField("phone", content1);
                String s2 = xpath.xpath("//li[3]/span[1]/text()").toString();
                String content2 = xpath.xpath("//li[3]/span[2]/a/@href").toString();
                if (s2 != null && s2.contains("官")) {
                    //有三个
                    page.putField("website", content2);
                } else {
                    page.putField("website", " ");
                }
            } else if (s1 != null && s1.contains("官")) {
                //有两个
                page.putField("website", xpath.xpath("//li[2]/span[2]/a/@href").toString());
                page.putField("phone", " ");
            } else {
                page.putField("phone", " ");
                page.putField("website", " ");
            }
        } else if (s != null && s.contains("电")) {
            //最多两个组合
            page.putField("phone", content);
            String s1 = xpath.xpath("//li[2]/span[1]/text()").toString();
            String content2 = xpath.xpath("//li[2]/span[2]/a/@href").toString();
            if (s1 != null && s1.contains("官")) {
                //有两个
                page.putField("website", content2);
            } else {
                page.putField("website", " ");
            }
            page.putField("rank", " ");
        } else if (s != null && s.contains("官")) {
            // 只有一个，即官网
            page.putField("website", xpath.xpath("//li[1]/span[2]/a/@href").toString());
            page.putField("phone", " ");
            page.putField("rank", " ");
        } else {
            //一个都没有
            page.putField("rank", " ");
            page.putField("phone", " ");
            page.putField("website", " ");
        }
    }

    /**
     * 可通过介绍部分的长度，判断是哪一种样式
     *
     * @param page
     */
    private static void getIntroduction(Page page) {

        List<String> introList = page.getHtml()
                .xpath("//div[@class='introduce-content']/p/text()").all();
        boolean isDone = false;
        for (int i = 0; i < introList.size(); i++) {
            if (introList.get(i).length() > 10) {
                isDone = true;
                break;
            }
        }
        String intro = "";
        if (!isDone) {
            introList = page.getHtml()
                    .xpath("//div[@class='introduce-content']/p/span/text()").all();
            for (String s : introList) {
                intro += s;
            }
            page.putField("sightIntroduction", intro != null ? intro : " ");
        } else {
            for (String s : introList) {
                intro += s;
            }
            page.putField("sightIntroduction", intro);
        }
    }

    /**
     * 解析返回时html格式的评论div
     */
    private static void resolveComment(Page page, String commentResponse) {
        //转成webmagic.selector.Html方便使用xpath提取
        Html html = new Html(commentResponse);
        //用户昵称
        page.putField("userName", html
                .xpath("//div[@class='userimg']/span/a/text()").all());
        //评论内容
        page.putField("commentContent", html
                .xpath("//div/ul/li[@itemprop='description']/span/text()").all());
        //评论时间
        page.putField("commentTime", html
                .xpath("//div/ul/li[@class='from_link']/span[@class='f_left']/span/em/text()").all());
        //用户评分（根据span的style的百分比式宽度值推断出评分）
        List<String> scoreList = html
                .xpath("//div/ul/li[@class='title cf']/span[@class='f_left']/span/span/@style").all();
        //style值转换成1~5数值
        for (int i = 0; i < scoreList.size(); i++) {
            String score = scoreList.get(i).substring(6, 8);
            if ("10".equals(score)) {
                score = "5";
            } else if ("80".equals(score)) {
                score = "4";
            } else if ("60".equals(score)) {
                score = "3";
            } else if ("40".equals(score)) {
                score = "2";
            } else if ("20".equals(score)) {
                score = "1";
            } else {
                score = "0";
            }
            scoreList.set(i, score);
        }
        page.putField("userScore", scoreList);
    }
}
