package cn.edu.guet.zti.web.webmagic.processor;

import us.codecraft.webmagic.*;
import us.codecraft.webmagic.processor.PageProcessor;

/**
 * 广西省各地的景点总览页面，一个页面有10个地方，一个地方对应5个热门景点
 */
public class PlacesPageProcessor implements PageProcessor {

    //设置较大的请求间隔时间和超时时间，是因为每次请求都要持久化数据，这需花费时间
    private Site site = Site.me().setRetryTimes(3).setSleepTime(3000).setTimeOut(5000);
    private final static String XIECHENG_URL = "https://you.ctrip.com/";
    private final static String GUANGXI_SIGHTLIST_URL = "https://you.ctrip.com/countrysightlist/guangxi100052.html";

    public void process(Page page) {
        //图片链接
        page.putField("pictureLink", page.getHtml().xpath("//a[@class='ttd_nopic100']/img/@src").all());
        //地方名称
        page.putField("placeName", page.getHtml().xpath("//div[@class='cityimg']/span/text()").all());
        //地方链接
        page.putField("placeLink", page.getHtml()
                .xpath("//div[@class='list_mod1']/dl/dt/a/@href").all());
        //推荐景点
        page.putField("hotSightName", page.getHtml()
                .xpath("//div[@class='list_mod1']/dl/dd[@class='ellipsis']/a/text()").all());
        //推荐景点链接（这里携程重定向到了买票页面）
        page.putField("hotSightLink", page.getHtml()
                .xpath("//div[@class='list_mod1']/dl/dd[@class='ellipsis']/a/@href").all());


        //将其它页放入待爬取队列
        page.addTargetRequests(page.getHtml().links().regex("https://you.ctrip.com/countrysightlist/guangxi100052/p"
                + "\\d" + ".html").all());

    }

    public Site getSite() {
        return site;
    }

}
