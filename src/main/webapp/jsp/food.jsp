<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- saved from url=(0048)https://you.ctrip.com/goods/guilin28/368591.html -->
<html>
<head>
    <link charset="utf-8" type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/css/common.v2.0.css">
    <link charset="utf-8" type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/fed.v2.0.css">
    <link charset="utf-8" type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/css/product_detail.v2.0.css">
<body>
<input type="hidden" id="page_id" value="261052">
<input type="hidden" id="ctmdistrict" value="28">
<div class="ttd2_background">
    <div class="content cf">

        <div class="breadbar_v1 cf">
            <ul>
                <li><a href="https://you.ctrip.com/">旅游攻略社区</a><i class="icon_gt">&gt;</i></li>
                <li><a href="https://you.ctrip.com/place/">目的地<i class="arrow"></i></a><i class="icon_gt">&gt;</i>
                    <div class="bread_hover b_continent">
                        <ul>
                            <li><a href="https://you.ctrip.com/place/asia120001.html">亚洲</a></li>
                            <li><a href="https://you.ctrip.com/place/europe120002.html">欧洲</a></li>
                            <li><a href="https://you.ctrip.com/place/northamerica120004.html">北美洲</a></li>
                            <li><a href="https://you.ctrip.com/place/oceania120003.html">大洋洲</a></li>
                            <li><a href="https://you.ctrip.com/place/southamerica120005.html">南美洲</a></li>
                            <li><a href="https://you.ctrip.com/place/africa120006.html">非洲</a></li>
                            <li><a href="https://you.ctrip.com/place/nanji120481.html">南极洲</a></li>
                        </ul>
                    </div>
                </li>
                <li><h1>${food.foodName}</h1></li>
            </ul>
        </div>
        <div class="des_wide f_left">

            <div class="sp_singlebox cf">
                <div id="detailCarousel" class="carousel carousel_nopic">
                    <a href="https://you.ctrip.com/goods/guilin28/368591.html" target="_blank">
                        <img width="350" height="230"
                             src="${pageContext.request.contextPath}/img/${food.placeUrlId}/food/${food.foodUrlId}/${food.picName}"></a>
                </div>
                <div class="detailtop_r_info">
                    <ul>
                        <li class="product_title ellipsis">${food.foodName}</li>
                        <li class="infotext">${food.introduction}</li>
                    </ul>
                    <div class="gs-like-box cf">
                        <a class="icon_slike a_popup_login" rel="nofollow"
                           href="javascript:;"><i></i><span>${food.likeNum}</span></a>
                    </div>
                    <a id="seeAllLink" class="togglemore"><i>+</i>更多</a>
                </div>
            </div>


            <!--哪里买-->
            <div class="normalbox productbox">
                <div class="normaltitle cf">
                    <h2>哪里买</h2>
                </div>

                <div class="card_list in_card">
                    <ul>
                        <c:forEach items="${food.restaurantList}" var="restaurant" varStatus="i">
                            <li class="">
                                        <span class="ttd_nopic220">
                                            <img alt=""
                                                 src="${pageContext.request.contextPath}/img/${food.placeUrlId}/restaurant/${restaurant.restaurantUrlId}/${restaurant.picName}"
                                                 style="display: block;"></span>
                                <dl>
                                    <dt><i class="restaurant"></i><span
                                            class="ellipsis">${restaurant.restaurantName}</span></dt>
                                    <dd>
                                            <span class="starlist"><span style="width:80%;">
                                                                   </span></span><span class="score"><strong>
                                            ${restaurant.score}</strong> 分</span>
                                    </dd>
                                    <dd class="textdetail open_popupbox">
                                        <p class="ellipsis">
                                            <em>地址：</em>${restaurant.address}</p>
                                        <div class="f_restaurant_intro" style="height: auto">
                                            <em>简介：</em>${restaurant.introduction}
                                        </div>
                                    </dd>
                                </dl>
                                <a href="https://you.ctrip.com/${restaurant.link}" target="_blank" class="all_link"></a>
                            </li>
                        </c:forEach>
                    </ul>
                </div>

            </div>
        </div>

    </div>
</div>


<div class="footgray">
    <div class="footinner cf">
        <dl>
            <dt>社区必读</dt>
            <dd><a href="http://you.ctrip.com/htmlpages/eula.html" target="_blank">用户协议</a></dd>
            <dd><a href="http://you.ctrip.com/htmlpages/guide.html" target="_blank">社区指南</a></dd>
            <dd><a href="http://you.ctrip.com/htmlpages/exp.html" target="_blank">经验与等级</a></dd>
            <dd><a href="http://you.ctrip.com/htmlpages/help.html" target="_blank">新手导航</a></dd>
            <dd><a href="http://you.ctrip.com/thematic/marketing/mianze" target="_blank">网络信息侵权保障</a></dd>
        </dl>
        <dl>
            <dt>发现你的旅行</dt>
            <dd><a href="http://you.ctrip.com/place" target="_blank">了解目的地</a></dd>
            <dd><a href="http://you.ctrip.com/travels" target="_blank">阅读精彩游记</a></dd>
            <dd><a href="http://you.ctrip.com/guides" target="_blank">下载精品攻略</a></dd>
            <dd><a href="http://you.ctrip.com/asks" target="_blank">请教旅行达人</a></dd>
            <dd><a href="http://you.ctrip.com/events" target="_blank">发起结伴</a></dd>
        </dl>
        <dl>
            <dt>分享你的旅行</dt>
            <dd><a href="http://you.ctrip.com/add-travel/guide.html" target="_blank">发表游记大作</a></dd>
            <dd><a href="http://you.ctrip.com/dianping/" target="_blank">点评去过的景点</a></dd>
        </dl>
        <dl class="ftabout">
            <dt>关于我们</dt>
            <dd><a href="http://you.ctrip.com/htmlpages/about.html" target="_blank">社区简介</a></dd>
            <dd><a href="http://you.ctrip.com/htmlpages/contact.html" target="_blank">联系我们</a></dd>
            <dd><a href="http://you.ctrip.com/htmlpages/job.html" target="_blank">加入我们</a></dd>
            <dd><a href="http://you.ctrip.com/intelligence.html" target="_blank">智慧旅游</a></dd>
        </dl>
        <dl class="ftguanzhu">
            <dt>关注携程攻略社区</dt>
            <dd class="youguanzhu cf"><span class="ftweixin"></span></dd>
        </dl>
    </div>
</div>
<div id="base_ft">
    <p>
        <a href="http://pages.ctrip.com/public/sitemap/sitemap.htm" target="_blank" title="网站导航">网站导航</a>&nbsp;|&nbsp;<a
            href="http://hotels.ctrip.com/jiudian/" target="_blank" title="宾馆索引">宾馆索引</a>&nbsp;|&nbsp;<a
            href="http://flights.ctrip.com/booking/hot-city-flights-sitemap.html" target="_blank" title="机票索引">机票索引</a>&nbsp;|&nbsp;<a
            href="http://pages.ctrip.com/public/sitemap/dj.html" title="旅游索引">旅游索引</a>&nbsp;|&nbsp;<a
            href="http://ct.ctrip.com/crptravel/sitemap.html" title="商旅索引">商旅索引</a>&nbsp;|&nbsp;<a title="攻略索引"
                                                                                                   href="http://you.ctrip.com/sitemap/">攻略索引</a>&nbsp;|&nbsp;<a
            rel="nofollow" href="http://pages.ctrip.com/public/ctripab/abctrip.htm" target="_blank"
            title="关于携程">关于携程</a>&nbsp;|&nbsp;<a rel="nofollow" target="_blank"
                                                 href="http://pages.ctrip.com/commerce/promote/201201/other/qygm/index.html"
                                                 title="企业公民">企业公民</a>&nbsp;|&nbsp;<a rel="nofollow" target="_blank"
                                                                                      href="http://job.ctrip.com/"
                                                                                      title="诚聘英才">诚聘英才</a>&nbsp;|&nbsp;<a
            rel="nofollow" title="智慧旅游" href="http://you.ctrip.com/Intelligence.html">智慧旅游</a>&nbsp; |&nbsp;<a
            rel="nofollow" target="_blank" href="http://u.ctrip.com/" title="分销联盟">分销联盟</a>&nbsp;|&nbsp;<a
            rel="nofollow" target="_blank" href="http://pages.ctrip.com/public/dlhz.htm" title="代理合作">代理合作</a>&nbsp;|&nbsp;<a
            target="_blank" href="http://ct.ctrip.com/" title="企业商旅">企业商旅</a>&nbsp;|&nbsp;<a target="_blank"
                                                                                             href="http://ct.ctrip.com/crptravel/default/landing"
                                                                                             title="中小企业差旅">中小企业差旅</a>&nbsp;|&nbsp;<a
            rel="nofollow" target="_blank" href="http://pages.ctrip.com/public/ctripad/adyw.htm" title="广告业务">广告业务</a>&nbsp;|&nbsp;<a
            rel="nofollow" target="_blank" href="http://pages.ctrip.com/public/contact.htm" title="联系我们">联系我们</a>
    </p>
    <p>
        <a rel="nofollow" href="http://pages.c-ctrip.com/cooperation/web/cooperation.html#ctm_ref=ctr_hp_btm_coop"
           target="_blank">加盟合作</a>&nbsp;|&nbsp;<a rel="nofollow"
                                                   href="http://ebooking.ctrip.com/ebkovsassembly/HotelApply?type=1&amp;channel=1&amp;lang=0"
                                                   target="_blank" title="酒店加盟">酒店加盟</a>&nbsp;|&nbsp;<a rel="nofollow"
                                                                                                        href="http://dst.ctrip.com/">目的地及景区合作</a>&nbsp;|&nbsp;<a
            rel="nofollow" href="http://pages.ctrip.com/public/serve%20guideline.htm" target="_blank"
            title="用户协议">用户协议</a>&nbsp;|&nbsp;<a rel="nofollow"
                                                 href="http://pages.ctrip.com/public/serve%20guideline.htm"
                                                 target="_blank" title="隐私政策">隐私政策</a>&nbsp;|&nbsp;<a rel="nofollow"
                                                                                                      target="_blank"
                                                                                                      href="http://pages.ctrip.com/public/diploma/company.htm">营业执照</a>&nbsp;|&nbsp;<a
            rel="nofollow" target="_blank" href="http://m.ctrip.com/webapp/vacations/tour/supplier" title="旅游度假资质">旅游度假资质</a>&nbsp;|&nbsp;<a
            rel="nofollow" target="_blank" href="https://insurance.ctrip.com/portal/index.aspx">保险代理</a>&nbsp;|&nbsp;<a
            target="_blank" href="http://pages.ctrip.com/public/link/ctrip_link.html">友情链接</a>&nbsp;|&nbsp;<a
            rel="nofollow" href="http://pages.ctrip.com/public/copyright.htm" id="copyright">Copyright©</a>1999-2019,&nbsp;<a
            href="http://www.ctrip.com/">ctrip.com</a>. All rights reserved.&nbsp;|&nbsp;<a rel="nofollow"
                                                                                            target="_blank"
                                                                                            href="http://www.beian.miit.gov.cn/">ICP证：沪B2-20050130</a>
    </p>
    <p class="gns">
        <a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=31010502002731"><i class="icon-gns"></i>沪公网备31010502002731号</a>
    </p>
    <div class="honour_wrap">
        <a href="http://www.cecpsp.org.cn/index.credit?action=certDetail&amp;id=40288084605466f1016057ea4cb20021"
           class="honour1" target="_blank" rel="nofollow">信用评级</a><a
            href="http://scjgj.sh.gov.cn/lz/licenseLink.do?method=licenceView&amp;entyId=20110428175405415"
            title="工商亮照标识" class="honour2" target="_blank" rel="nofollow">上海工商</a><a
            href="http://credit.szfw.org/CX20111018000615000623.html" title="诚信认证示范企业" class="honour3" target="_blank"
            rel="nofollow">诚信网站</a><a href="http://www.zx110.org/" class="honour4" target="_blank" rel="nofollow"
                                      title="征信网">网络社会征信网</a><a href="http://www.shjbzx.cn/" class="honour5"
                                                                target="_blank" rel="nofollow"
                                                                title="上海市互联网违法与违规信息举报中心">信息举报中心</a><a
            href="https://ss.knet.cn/verifyseal.dll?sn=e12061531010025926306977" class="honour6" target="_blank"
            rel="nofollow" title="可信网站">可信网站</a><a href="http://www.12377.cn/" class="honour8" title="违法和不良信息举报中心"
                                                   target="_blank" rel="nofollow">违法和不良信息举报中心</a>
    </div>

</div>

</body>
</html>