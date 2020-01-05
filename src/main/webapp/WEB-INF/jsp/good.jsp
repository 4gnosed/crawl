<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <title>${good.goodName}详情</title>
    <base href="<%=basePath%>"/>
    <link charset="utf-8" type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/css/common.v2.0.css">
    <link charset="utf-8" type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/fed.v2.0.css">
    <link charset="utf-8" type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/css/product_detail.v2.0.css">
</head>
<body>
<%--顶部导航啦--%>
<jsp:include page="../../common/province/navigation.jsp"/>
<div class="ttd2_background">
    <div class="content cf">
        <div class="des_wide f_left">

            <div class="sp_singlebox cf">
                <div id="detailCarousel" class="carousel carousel_nopic">
                    <a href="https://you.ctrip.com/goods/guilin28/368591.html" target="_blank">
                        <img width="350" height="230"
                             src="${pageContext.request.contextPath}/img/${good.placeUrlId}/good/${good.goodUrlId}/${good.picName}"></a>
                </div>
                <div class="detailtop_r_info">
                    <ul>
                        <li class="product_title ellipsis">${good.goodName}</li>
                        <li class="infotext">${good.introduction}</li>
                    </ul>
                    <div class="gs-like-box cf">
                        <a class="icon_slike a_popup_login" rel="nofollow"
                           href="javascript:;"><i></i><span>${good.likeNum}</span></a>
                    </div>
                    <a id="seeAllLink" class="togglemore"><i>+</i>更多</a>
                </div>
            </div>


            <!--哪里吃-->
            <div class="normalbox productbox">
                <div class="normaltitle cf">
                    <h2>哪里买</h2>
                </div>

                <div class="card_list in_card">
                    <ul>
                        <c:forEach items="${good.shopList}" var="shop" varStatus="i">
                            <li class="">
                                        <span class="ttd_nopic220">
                                            <img alt=""
                                                 src="${pageContext.request.contextPath}/img/${good.placeUrlId}/shop/${shop.shopUrlId}/${shop.picName}"
                                                 style="display: block;"></span>
                                <dl>
                                    <dt><i class="shop"></i><span
                                            class="ellipsis">${shop.shopName}</span></dt>
                                    <dd>
                                        <span class="starlist">
                                                <span style="width:${shop.shopScore * 10 * 2}%;"></span></span>
                                        <span class="score"><strong>
                                                ${shop.shopScore}</strong> 分</span>
                                        <span><strong>
                                                ${shop.commentNum}</strong></span>

                                    </dd>
                                </dl>
                                <a href="https://you.ctrip.com/${shop.shopLink}" target="_blank" class="all_link"></a>
                            </li>
                        </c:forEach>
                    </ul>
                </div>

            </div>
        </div>

    </div>
</div>

<%--底部使用jsp引入--%>
<jsp:include page="../../common/city/bottom.jsp"/>

</body>
</html>