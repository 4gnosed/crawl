<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <title>${food.foodName}详情</title>
    <base href="<%=basePath%>"/>
    <link charset="utf-8" type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/css/common.v2.0.css">
    <link charset="utf-8" type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/fed.v2.0.css">
    <link charset="utf-8" type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/css/product_detail.v2.0.css">

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

<div class="ttd2_background">
    <div class="content cf">

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
                                            <span class="starlist"><span style="width:${restaurant.score * 10 * 2}%;">
                                                                   </span></span><span class="score"><strong>
                                            ${restaurant.score}</strong> 分</span>
                                    </dd>
                                    <dd class="textdetail open_popupbox">
                                        <p class="ellipsis">
                                            <em>地址：</em>${restaurant.address}</p>
                                        <div class="f_restaurant_intro intro" style="height: auto">
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

<%--底部使用jsp引入--%>
<jsp:include page="../../common/city/bottom.jsp"/>

</body>
</html>