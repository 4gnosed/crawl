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
public class FoodProcessor implements PageProcessor {
    private Site site = Site.me().setRetryTimes(3).setSleepTime(3000).setTimeOut(10000);
    private int maxFood = 20;
    private String placeUrlId;
    private String foodUrlId;

    public FoodProcessor() {
    }

    public FoodProcessor(String placeUrlId, String foodUrlId) {
        this.placeUrlId = placeUrlId;
        this.foodUrlId = foodUrlId;
    }

    public void process(Page page) {
        //美食所在地方的urlId
        page.putField("placeUrlId", placeUrlId);
        //美食urlId
        page.putField("foodUrlId", foodUrlId);
        //美食图片
        String picUrl = page.getHtml().xpath("//div[@class='item active']/a/img/@src").toString();
        page.putField("picUrl", picUrl != null ? picUrl : " ");
        //美食名称
        String foodName = page.getHtml().xpath("//li[@class='title ellipsis']/text()").toString();
        page.putField("foodName", foodName != null ? foodName : " ");
        //美食介绍
        String introduction = page.getHtml().xpath("//li[@class='infotext']/text()").toString();
        page.putField("introduction", introduction != null ? introduction : " ");
        //点赞数
        String likeNum = page.getHtml().xpath("//a[@class='icon_slike a_popup_login']/span/text()").toString();
        page.putField("likeNum", likeNum != null ? likeNum : " ");

        //餐馆,因此为列表展示，餐馆各个属性列表需要一一对应，因此需要处理部分属性为空的情况
        //名称
        List<String> rNameList = new LinkedList<String>();
        //图片
        List<String> rPicUrlList = new LinkedList<String>();
        //评分
        List<String> scoreList = new LinkedList<String>();
        //地址
        List<String> addressList = new LinkedList<String>();
        //介绍
        List<String> introList = new LinkedList<String>();
        //链接
        List<String> rLinkList = new LinkedList<String>();

        Selectable restaurantXpath = page.getHtml().xpath("//div[@class='f_restaurant_list']/ul");
        for (int i = 1; i < maxFood; i++) {
            String rName = restaurantXpath.xpath("//li[" + i + "]/dl/dt/span/text()").toString();
            if (rName == null) break;
            rNameList.add(rName);
            String rPicUrl = restaurantXpath.xpath("//li[" + i + "]/span/img/@src").toString();
            rPicUrlList.add(rPicUrl != null ? rPicUrl : " ");
            String score = restaurantXpath.xpath("//li[" + i + "]/dl/dd/span[@class='score']/strong/text()").toString();
            scoreList.add(score != null ? score : " ");
            String address = restaurantXpath.xpath("//li[" + i + "]/dl/dd[@class='textdetail open_popupbox']/p/text()").toString();
            addressList.add(address != null ? address : " ");
            String intro = restaurantXpath.xpath("//li[" + i + "]/dl/dd[@class='textdetail open_popupbox']/div/text()").toString();
            introList.add(intro != null ? intro : " ");
            String rLink = restaurantXpath.xpath("//li[" + i + "]/a/@href").toString();
            rLinkList.add(rLink != null ? rLink : " ");
        }
        page.putField("rNameList", rNameList != null ? rNameList : " ");
        page.putField("rPicUrlList", rPicUrlList != null ? rPicUrlList : " ");
        page.putField("scoreList", scoreList != null ? scoreList : " ");
        page.putField("addressList", addressList != null ? addressList : " ");
        page.putField("introList", introList != null ? introList : " ");
        page.putField("rLinkList", rLinkList != null ? rLinkList : " ");
    }

    public Site getSite() {
        return site;
    }
}
