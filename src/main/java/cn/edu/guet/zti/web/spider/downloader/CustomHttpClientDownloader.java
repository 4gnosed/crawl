package cn.edu.guet.zti.web.spider.downloader;

import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.util.EntityUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Request;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.downloader.HttpClientDownloader;
import us.codecraft.webmagic.downloader.HttpClientGenerator;
import us.codecraft.webmagic.downloader.HttpClientRequestContext;
import us.codecraft.webmagic.downloader.HttpUriRequestConverter;
import us.codecraft.webmagic.proxy.Proxy;
import us.codecraft.webmagic.proxy.ProxyProvider;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * 一开始爬取时，返回500状态码，猜测目标网站服务器有防盗链功能，
 * 然后为request Header添加属性referer未能解决问题，继续添加authority,user-agent属性，
 * 发现为添加后者之后，返回200，说明目标服务器要确定客户端的类型，因此这里使用了chrome类型的user-agent，
 * 后来出现另一种样式的html，需要添加cookie才能访问，否则超时，并且cookie会随景点改变而改变
 */
public class CustomHttpClientDownloader extends HttpClientDownloader {
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    private final Map<String, CloseableHttpClient> httpClients = new HashMap();
    private HttpClientGenerator httpClientGenerator = new HttpClientGenerator();
    private HttpUriRequestConverter httpUriRequestConverter = new HttpUriRequestConverter();
    private ProxyProvider proxyProvider;

    @Override
    public Page download(Request request, Task task) {
        if (task != null && task.getSite() != null) {
            CloseableHttpResponse httpResponse = null;
            CloseableHttpClient httpClient = getHttpClient(task.getSite());
            Proxy proxy = this.proxyProvider != null ? this.proxyProvider.getProxy(task) : null;
            HttpClientRequestContext requestContext = this.httpUriRequestConverter.convert(request, task.getSite(), proxy);
            Page page = Page.fail();

            Page var9;
            try {
                HttpUriRequest httpUriRequest = requestContext.getHttpUriRequest();

                // 一种html风格需要添加user-agent头属性
                httpUriRequest.addHeader("user-agent",
                        "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36");
                //另一种html风格需要添加cookie
                String cookieId="177";
                httpUriRequest.addHeader("cookie", "_abtest_userid=5b35c728-01f4-47c3-bad1-2b00bb431017; Session=smartlinkcode=U130026&smartlinklanguage=zh&SmartLinkKeyWord=&SmartLinkQuary=&SmartLinkHost=; Union=AllianceID=4897&SID=130026&OUID=&Expires=1574050357875; _ga=GA1.2.1846535142.1573445558; _gid=GA1.2.2089114057.1573445558; MKT_Pagesource=PC; _RSG=VvKWcFddEI1sIOhB0CBt0A; _RDG=287bce2ba61244247a304bcc77124a4a91; _RGUID=148e9e73-e681-4e5f-a037-2cc00bad84b6; StartCity_Pkg=PkgStartCity=33; TicketSiteID=SiteID=1013; gad_city=d15ed70feb59342113fea1dc83f27148; ASP.NET_SessionSvc=MTAuOC4xODkuNjR8OTA5MHxqaW5xaWFvfGRlZmF1bHR8MTU3MzU3MjgxNDE1NA; _RF1=221.7.210.212; _bfa=1.1573445555135.11wz1r.1.1573741260464.1573800094792.17.243; _bfs=1.8; _jzqco=%7C%7C%7C%7C%7C1.482967573.1573445557961.1573802088788.1573802904256.1573802088788.1573802904256.0.0.0.206.206; __zpspc=9.18.1573800096.1573802904.9%232%7Cwww.baidu.com%7C%7C%7C%7C%23; " +
                        "appFloatCnt="+cookieId);

                httpResponse = httpClient.execute(httpUriRequest, requestContext.getHttpClientContext());
                page = this.handleResponse(request, request.getCharset() != null ? request.getCharset() : task.getSite().getCharset(), httpResponse, task);
                this.onSuccess(request);
                this.logger.info("downloading page success {}", request.getUrl());
                Page var8 = page;
                return var8;
            } catch (IOException var13) {
                this.logger.warn("download page {} error", request.getUrl(), var13);
                this.onError(request);
                var9 = page;
            } finally {
                if (httpResponse != null) {
                    EntityUtils.consumeQuietly(httpResponse.getEntity());
                }

                if (this.proxyProvider != null && proxy != null) {
                    this.proxyProvider.returnProxy(proxy, page, task);
                }

            }

            return var9;
        } else {
            throw new NullPointerException("task or site can not be null");
        }
    }

    private CloseableHttpClient getHttpClient(Site site) {
        if (site == null) {
            return this.httpClientGenerator.getClient((Site) null);
        } else {
            String domain = site.getDomain();
            CloseableHttpClient httpClient = (CloseableHttpClient) this.httpClients.get(domain);
            if (httpClient == null) {
                synchronized (this) {
                    httpClient = (CloseableHttpClient) this.httpClients.get(domain);
                    if (httpClient == null) {
                        httpClient = this.httpClientGenerator.getClient(site);
                        this.httpClients.put(domain, httpClient);
                    }
                }
            }

            return httpClient;
        }
    }

}
