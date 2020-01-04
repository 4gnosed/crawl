package cn.edu.guet.zti.web.webmagic.processor;

import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.processor.PageProcessor;
import us.codecraft.webmagic.selector.Selectable;

import java.util.LinkedList;
import java.util.List;

/**
 * 解析一个美食的详细信息
 */
public class GoodProcessor implements PageProcessor {
    private Site site = Site.me().setRetryTimes(3).setSleepTime(3000).setTimeOut(15000);
    int maxGood = 20;
    private String placeUrlId;
    private String goodUrlId;

    public GoodProcessor() {
    }

    public GoodProcessor(String placeUrlId, String goodUrlId) {
        this.placeUrlId = placeUrlId;
        this.goodUrlId = goodUrlId;
    }

    public void process(Page page) {
        page.putField("placeUrlId", placeUrlId);
        page.putField("goodUrlId", goodUrlId);
        //商品
        //商品图片
        String picUrl = page.getHtml().xpath("//div[@id='detailCarousel']/a/img/@src").toString();
        page.putField("picUrl", picUrl != null ? picUrl : " ");
        //商品名称
        String goodName = page.getHtml().xpath("//li[@class='product_title ellipsis']/text()").toString();
        page.putField("goodName", goodName != null ? goodName : " ");
        //商品介绍
        String introduction = page.getHtml().xpath("//li[@class='infotext']/text()").toString();
        page.putField("introduction", introduction != null ? introduction : " ");
        //商品点赞数
        String likeNum = page.getHtml().xpath("//a[@class='icon_slike a_popup_login']/span/text()").toString();
        page.putField("likeNum", likeNum != null ? likeNum : " ");

        //商店
        //商店名称
        List<String> sNameList = new LinkedList<String>();
        //商店图片
        List<String> sPicUrlList = new LinkedList<String>();
        //商店评分
        List<String> scoreList = new LinkedList<String>();
        //商店评论数
        List<String> commentNumList = new LinkedList<String>();
        //商店链接
        List<String> sLinkList = new LinkedList<String>();

        Selectable restaurantXpath = page.getHtml().xpath("//div[@class='card_list in_card']/ul");
        for (int i = 1; i < maxGood; i++) {
            String sName = restaurantXpath.xpath("//li[" + i + "]/dl/dt/span/text()").toString();
            if (sName == null) break;
            sNameList.add(sName);
            String sPicUrl = restaurantXpath.xpath("//li[" + i + "]/span/img/@src").toString();
            sPicUrlList.add(sPicUrl != null ? sPicUrl : " ");
            String score = restaurantXpath.xpath("//li[" + i + "]/dl/dd/span[@class='score']/strong/text()").toString();
            scoreList.add(score != null ? score : " ");
            String commentNum = restaurantXpath.xpath("//li[" + i + "]/dl/dd/span[@class='comment_text']/text()").toString();
            commentNumList.add(commentNum != null ? commentNum : " ");
            String sLink = restaurantXpath.xpath("//li[" + i + "]/a/@href").toString();
            sLinkList.add(sLink != null ? sLink : " ");
        }
        page.putField("sNameList", sNameList != null ? sNameList : " ");
        page.putField("sPicUrlList", sPicUrlList != null ? sPicUrlList : " ");
        page.putField("scoreList", scoreList != null ? scoreList : " ");
        page.putField("commentNumList", commentNumList != null ? commentNumList : " ");
        page.putField("sLinkList", sLinkList != null ? sLinkList : " ");

    }

    public Site getSite() {
        return site;
    }
}
