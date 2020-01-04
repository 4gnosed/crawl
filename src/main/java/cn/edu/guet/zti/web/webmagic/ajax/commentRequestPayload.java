package cn.edu.guet.zti.web.webmagic.ajax;

import org.jsoup.Connection;
import org.jsoup.Jsoup;

import java.io.IOException;

/**
 * 在景点页面上的用户评论部分，是request payload异步方式请求的数据，可以通过底层的jsoup实现
 * webmagic框架虽然基于jsoup但是没有响应的API
 * 通过Chrome跟踪异步请求，发现有两次请求，前一次请求方法的OPTION,后一次请求才是POST而且返回目标数据，
 * 两次请求的请求头有所不同，POST请求才添加有json格式的payload部分，里边是页码和页大小等数据，
 * 一开始只单单模拟POST请求，返回的数据总是空的，苦思很久后尝试在POST请求之前，模拟OPTIONS请求，最终得到目标数据
 * 因此初步判断，目标服务器肯定有策略来标识是正常的请求，分析发现OPTION有：access-control-request-headers，
 * access-control-request-method，sec-fetch-mode，sec-fetch-site等特殊标识的头属性，POST请求也有：
 * sec-fetch-mode、sec-fetch-site的头属性，首先模拟一次OPTION请求后的响应头如下，
 * 然后再模拟带有request payload的POST请求后，才返回json格式的目标数据，响应头和响应体如下，
 * 因此可以猜测目标服务器的策略是通过请求头的一些属性来识别两次请求是同一次用户点击查询事件，
 * 对于独立的POST请求不予返回数据（这就是我跳的坑），至于是请求头的具体哪一些属性，通过排除法一次次测试应该能确定出来,
 * 每次返回5页数据，即5*10条评论,
 * 验证到，cid不是服务器确定返回哪一个景点评论的关键参数。
 * --------------------------------------------------
 * 隔一段时间出现问题，status=401 Moved Permanently ,原因cid参数因不同景点改变
 */
public class commentRequestPayload {

    private static final String COMMENT_AJAX_URL = "https://sec-m.ctrip.com/restapi/soa2/12530/json/viewCommentList?_fxpcqlniredt=";
    private static final String REFERER_URL = "https://piao.ctrip.com/ticket/dest/";
    private static final String ORIGIN_URL = "https://piao.ctrip.com";
    private static final String CONTENT_TYPE = "application/json";
    private static final String USER_AGENT_URL = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36";
    private static final String COOKIE = "_abtest_userid=5b35c728-01f4-47c3-bad1-2b00bb431017; Session=smartlinkcode=U130026&smartlinklanguage=zh&SmartLinkKeyWord=&SmartLinkQuary=&SmartLinkHost=; Union=AllianceID=4897&SID=130026&OUID=&Expires=1574050357875; _ga=GA1.2.1846535142.1573445558; _gid=GA1.2.2089114057.1573445558; MKT_Pagesource=PC; _RSG=VvKWcFddEI1sIOhB0CBt0A; _RDG=287bce2ba61244247a304bcc77124a4a91; _RGUID=148e9e73-e681-4e5f-a037-2cc00bad84b6; StartCity_Pkg=PkgStartCity=33; TicketSiteID=SiteID=1013; _RF1=221.7.210.213; _bfa=1.1573445555135.11wz1r.1.1573651931241.1573707546658.14.210; _jzqco=%7C%7C%7C%7C%7C1.482967573.1573445557961.1573707576397.1573707585423.1573707576397.1573707585423.0.0.0.174.174; __zpspc=9.15.1573707548.1573707585.5%232%7Cwww.baidu.com%7C%7C%7C%7C%23; " +
            "appFloatCnt=500";

    private static void option(String sightUrlId, String cid) throws IOException {
        Connection optionsConnect = Jsoup.connect(COMMENT_AJAX_URL + cid)
                .method(Connection.Method.OPTIONS)
                .header("access-control-request-headers", "content-type,cookieorigin")
                .header("access-control-request-method", "POST")
                .header("origin", ORIGIN_URL)
                .referrer(REFERER_URL + "t" + sightUrlId + ".html")
                .header("sec-fetch-mode", "cors")
                .header("sec-fetch-site", "same-site")
                .userAgent(USER_AGENT_URL)
                .ignoreContentType(true)
                .validateTLSCertificates(false);
        optionsConnect.execute();
    }

    private Connection.Response post(int pagenum, int pagesize, String sightUrlId, String cid) throws IOException {
        option(sightUrlId, cid);
        String jsonBody = "{\"pageid\":10650000804,\"viewid\":" + sightUrlId + ",\"tagid\":0,\"pagenum\":"
                + pagenum + ",\"pagesize\":10" + pagesize
                + ",\"contentType\":\"json\",\"head\":{\"appid\":\"100013776\",\"cid\":\""
                + cid + "\",\"ctok\":\"\",\"cver\":\"1.0\",\"lang\":\"01\",\"sid\":\"8888\",\"syscode\":\"09\",\"auth\":\"\",\"extension\":[{\"name\":\"protocal\",\"value\":\"https\"}]},\"ver\":\"7.10.3.0319180000\"}";

        Connection postConnect = Jsoup.connect(COMMENT_AJAX_URL + cid)
                .method(Connection.Method.POST)
                .header("content-type", CONTENT_TYPE)
                .cookie("cookie", COOKIE)
                .header("cookieorigin", ORIGIN_URL)
                .referrer(REFERER_URL + "t" + sightUrlId + ".html")
                .header("sec-fetch-mode", "cors")
                .header("sec-fetch-site", "same-site")
                .userAgent(USER_AGENT_URL)
                .requestBody(jsonBody)
                .ignoreContentType(true)
                .validateTLSCertificates(false);
        return postConnect.execute();
    }

    public String getComment(int pagenum, int pagesize, String sightUrlId, String cid) throws IOException {
        return new commentRequestPayload().post(pagenum, pagesize, sightUrlId, cid).body();
    }
}
