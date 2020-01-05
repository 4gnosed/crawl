<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>广西旅游景点</title>
    <link rel="canonical" href=" ">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/layui/css/layui.css">
    <link charset="utf-8" type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/css/common.v2.0.css">
    <link charset="utf-8" type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/fed.v2.0.css">
    <link charset="utf-8" type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/css/country_sightlist.v2.0.css">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/pc_flaot.css">
</head>
<body>
<div>
    <%--顶部导航啦--%>
    <jsp:include page="../../common/province/navigation.jsp"/>
</div>

<div class="content cf ">
    <div class="dest_toptitle">
        <div class="cf">
            <div class="f_left">
                <h1>
                    <a title="广西" href="">广西</a>
                </h1>
            </div>
            <div class="f_right">
                <ul>
                    <li class="des_icon_been" id="wentClick">
                        <a href="javascript:void(0)" data-cat="100052" dataresource-cat="100052" data_type="Place"
                           class="a_popup_login" rel="nofollow" id="wentClickID"></a>
                        <p>
                            <span id="spanwentId" class="textcolor">去过</span><span><em
                                id="emWentValueID">5645</em></span>
                        </p>
                    </li>
                    <li class="des_icon_want" id="wantClick">
                        <a href="javascript:void(0)" rel="nofollow" data-cat="100052" dataresource-cat="100052"
                           data_type="Place" class="a_popup_login" id="wantClickID"></a>
                        <p>
                            <span id="spanwantId" class="textcolor">想去</span><span><em
                                id="emWantValueID">10300</em></span>
                        </p>
                    </li>
                </ul>
            </div>
        </div>
        <div class="sec_line cf">

            <p class="c_text_left ellipsis">
                欢迎您访问广西 </p>
        </div>
    </div>
</div>

<%--顶部菜单栏--%>
<jsp:include page="../../common/province/menu.jsp"/>

<div class="ttd2_background">
    <div class="content cf">

        <div class="des_wide f_right">
            <!--各地景点-->

            <div class="normalbox">
                <div class="normaltitle cf">
                    <h1>广西<span> 各地景点</span></h1>
                </div>

                <!-- 地方列表 -->
                <div class="list_wide_mod1">
                    <c:forEach items="${places}" var="place">
                        <div class="list_mod1">
                            <div class="cityimg">
                                <a class="ttd_nopic100"
                                   href="${pageContext.request.contextPath}/getSights?page=1&placeurlid=${place.placeUrlId}"
                                   target="_blank"><img
                                        src="${pageContext.request.contextPath}/img/${place.placeUrlId}/sight/${place.picName}"
                                        width="100" height="100"
                                        alt=""></a> <i title="景点"></i><span>${place.placeName}</span>
                            </div>
                            <dl>
                                <dt><a target="_blank"
                                       href="${pageContext.request.contextPath}/getSights?page=1&placeurlid=${place.placeUrlId}">${place.placeName}</a>
                                </dt>
                                <dd class="ellipsis">
                                    推荐景点：
                                    <c:forEach items="${place.sightList}" var="sight" varStatus="i">
                                        <a href="${pageContext.request.contextPath}/getSight?sighturlid=${sight.sightUrlId}"
                                           target="_blank">${sight.sightName}</a>
                                        <c:if test="${! i.last}">、</c:if>
                                    </c:forEach>
                                </dd>
                                <dd>
                                    <a href="${pageContext.request.contextPath}/getSights?page=1&placeurlid=${place.placeUrlId}"
                                       target=" _blank">桂林景点速览<i
                                            class="gs2_more_arror"></i></a>
                                </dd>
                            </dl>
                        </div>
                    </c:forEach>

                    <!--翻页控件-->
                    <div class="ttd_pager cf">
                        <p>${(currentPage-1)*10+1}-
                            <c:if test="${((currentPage-1)*10+10) >= totalPlaces}">
                                ${totalPlaces}
                            </c:if>
                            <c:if test="${((currentPage-1)*10+10) < totalPlaces}">
                                ${(currentPage-1)*10+10}
                            </c:if>
                            / ${totalPlaces}条</p>


                        <div class="pager_v1">
                            <c:if test="${currentPage==1}">
                                <a class="prevpage disabled">上一页</a>
                            </c:if>
                            <c:if test="${currentPage>1}">
                                <a class="prevpage"
                                   href="${pageContext.request.contextPath}/getPlaces?page=${currentPage-1}">上一页</a>
                            </c:if>

                            <c:forEach begin="${beginPage}" end="${beginPage+4}" var="i">
                                <c:if test="${i==currentPage}">
                                    <a class="current">${currentPage}</a>
                                </c:if>
                                <c:if test="${i!=currentPage}">
                                    <a href="${pageContext.request.contextPath}/getPlaces?page=${i}">${i}</a>
                                </c:if>
                            </c:forEach>

                            <c:if test="${currentPage==totalPage}">
                                <a class="prevpage disabled">下一页</a>
                            </c:if>
                            <c:if test="${currentPage<totalPage}">
                                <a class="prevpage"
                                   href="${pageContext.request.contextPath}/getPlaces?page=${currentPage+1}">下一页</a>
                            </c:if>

                            <span>
                                   到 <input id="gopagetext" type="text"> 页 /
                                   <b id="numpage">${totalPage}</b>页
                            </span>
                            <a id="gopage">确定</a>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%--底部使用jsp引入--%>
<jsp:include page="../../common/province/bottom.jsp"/>

</body>
</html>