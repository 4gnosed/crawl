<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <title>${placeName}特色商品</title>
    <base href="<%=basePath%>"/>
    <link charset="utf-8" type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/css/common.v2.0.css">
    <link charset="utf-8" type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/fed.v2.0.css">
    <link charset="utf-8" type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/css/city_shopping.v2.0.css">
    <style type="text/css">
        .intro {
            display: -webkit-box;
            -webkit-box-orient: vertical;
            -webkit-line-clamp: 4;
            overflow: hidden;
            float: left;
            width: 100%;
            height: 80px;
            word-break: break-all;
            text-overflow: ellipsis;
        }
    </style>
</head>
<body>

<%--顶部导航啦--%>
<jsp:include page="../../common/province/navigation.jsp"/>
<div class="content cf ">
    <div class="dest_toptitle">
        <div class="cf">
            <div class="f_left">
                <h1>
                    <a title="${placeName}" href="https://you.ctrip.com/place/guilin28.html">${placeName}</a>
                </h1>
            </div>
            <div class="f_right">
                <ul>
                    <li class="des_icon_been" id="wentClick">
                        <a href="javascript:void(0)" data-cat="28" dataresource-cat="28" data_type="Place"
                           class="a_popup_login" rel="nofollow" id="wentClickID"></a>
                        <p>
                            <span id="spanwentId" class="textcolor">去过</span><span><em
                                id="emWentValueID">266639</em></span>
                        </p>
                    </li>
                    <li class="des_icon_want" id="wantClick">
                        <a href="javascript:void(0)" rel="nofollow" data-cat="28" dataresource-cat="28"
                           data_type="Place" class="a_popup_login" id="wantClickID"></a>
                        <p>
                            <span id="spanwantId" class="textcolor">想去</span><span><em
                                id="emWantValueID">84654</em></span>
                        </p>
                    </li>
                </ul>
            </div>
        </div>
        <div class="sec_line cf">

            <p class="c_text_left ellipsis">
                欢迎您访问${placeName} </p>
        </div>
    </div>
</div>

<c:choose>
    <c:when test="${placeName.equals('广西')}">
        <%--顶部菜单栏--%>
        <jsp:include page="../../common/province/menu.jsp"/>
    </c:when>
    <c:otherwise>
        <%--顶部菜单栏--%>
        <jsp:include page="../../common/city/menu.jsp"/>
    </c:otherwise>
</c:choose>

<div class="ttd2_background">
    <div class="content cf">

        <div class="des_wide f_right">
            <!--景点速览，带收缩展开换div-->

            <!--景点速览 END-->
            <div class="normalbox channelspace">
                <div class="normaltitle">
                    <h1>${placeName}<span>特色商品</span></h1>

                </div>
                <div class="card_list fs_card">
                    <ul>
                        <c:forEach items="${goodList}" var="good">
                            <li>
                        <span class="ttd_nopic220" name="goods_img">
                            <img src="${pageContext.request.contextPath}/img/${good.placeUrlId}/good/${good.goodUrlId}/${good.picName}"
                                 width="270" height="170" writing="7608162">
                        </span>
                                <dl>
                                    <dt><a href="javascript:;" title="${good.goodName}">${good.goodName}</a></dt>
                                    <dd class="intro">
                                            ${good.introduction}
                                    </dd>
                                    <dd class="the_des">
                                        <strong>哪里买</strong>
                                        <p class="ellipsis">
                                            <c:forEach items="${good.shopList}" var="shop">
                                                <a href="https://you.ctrip.com${shop.shopLink}"
                                                   target="_blank"
                                                   title="${shop.shopName}">${shop.shopName}</a>&nbsp;&nbsp;&nbsp;
                                            </c:forEach>
                                        </p>
                                    </dd>
                                </dl>

                                <span>
                            <a class="all_link"
                               href="${pageContext.request.contextPath}/getGood?goodurlid=${good.goodUrlId}"
                               target="_blank"
                               data-id="368591" data-item="28"></a>
                        </span>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
            <!--商店列表-->
            <div class="normalbox">
                <div class="normaltitle">
                    <h1>${placeName}<span>必逛购物地</span></h1>
                </div>
                <div class="card_list in_card shopping_index">
                    <ul>
                        <c:forEach items="${shopList}" var="shop" varStatus="i">
                            <li style="height: 250px;">

                        <span class="ttd_nopic220" name="shop_img">
                            <img src="${pageContext.request.contextPath}/img/${goodList[0].placeUrlId}/shop/${shop.shopUrlId}/${shop.picName}"
                                 width="270" height="170" writing="7165360">
                        </span>
                                <dl style="height: 70px">
                                    <dt>
                                        <s>第${i.count}名</s>
                                        <i class="shopping"></i>
                                        <span class="ellipsis" title="西街">${shop.shopName}</span>
                                    </dt>
                                    <dd>
                                <span class="special_tips">
                                </span>
                                        <span class="score"><strong>${shop.shopScore}</strong>分</span>
                                        <span class="comment_text">${shop.commentNum}</span>
                                    </dd>
                                </dl>
                                <a target="_blank" class="all_link"
                                   href="https://you.ctrip.com${shop.shopLink}" title="${shop.shopName}"></a>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<%--底部使用jsp引入--%>
<jsp:include page="../../common/province/bottom.jsp"/>

</body>
</html>