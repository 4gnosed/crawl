<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <title>${placeName}特色美食</title>
    <base href="<%=basePath%>"/>
    <link charset="utf-8" type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/css/common.v2.0.css">
    <link charset="utf-8" type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/fed.v2.0.css">
    <link charset="utf-8" type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/css/city_food_search.v2.0.css">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/pc_flaot.css">
</head>
<body>

<%--顶部导航啦--%>
<jsp:include page="../../common/province/navigation.jsp"/>

<div class="content cf ">
    <div class="dest_toptitle">
        <div class="cf">
            <div class="f_left">
                <h1>
                    <a title="${placeName}" href="">${placeName}</a>
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
            <div class="normalbox">
                <div class="n_tabtitle cf">
                    <h1>${placeName}<span>特色美食</span></h1>
                </div>
                <div class="list_wide_mod2 open_popupbox">
                    <c:forEach items="${foodList}" var="food">
                        <div class="list_mod2 foodlist" data-id="17485" data-district="28">
                            <div class="leftimg">
                                <a rel="nofollow" target="_blank"
                                   href="${pageContext.request.contextPath}/getFood?foodurlid=${food.foodUrlId}"><img
                                        src="${pageContext.request.contextPath}/img/${food.placeUrlId}/food/${food.foodUrlId}/${food.picName}"
                                        width="220" height="140"></a>
                            </div>
                            <div class="rdetailbox">
                                <dl>
                                    <dt><a href="${pageContext.request.contextPath}/getFood?foodurlid=${food.foodUrlId}"
                                           target="_blank"
                                           title="${food.foodName}">${food.foodName}</a></dt>
                                    <dd>
                                            ${food.introduction}<a class="morelink"
                                                                   href="${pageContext.request.contextPath}/getFood?foodurlid=${food.foodUrlId}"
                                                                   target="_blank">详情<i
                                            class="gs2_more_arror_s"></i></a>
                                    </dd>
                                </dl>
                            </div>
                            <p class="bottomcomment ellipsis">
                                <b>哪里吃：</b>
                                <c:forEach items="${food.restaurantList}" var="restaurant">
                                    <a target="_blank" href="https://you.ctrip.com/${restaurant.link}"
                                       title="${restaurant.restaurantName}">${restaurant.restaurantName}</a>
                                    、
                                </c:forEach>
                            </p>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>
<%--底部使用jsp引入--%>
<jsp:include page="../../common/province/bottom.jsp"/>
</div>
</body>
</html>