<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>${placeName}旅游景点</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=1024">
    <meta http-equiv="Cache-Control" content="no-siteapp ">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/layui/css/layui.css">
    <link charset="utf-8" type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/css/common.v2.0.css">
    <link charset="utf-8" type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/css/fed.v2.0.css">
    <link charset="utf-8" type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/css/city_sight.v2.0.css">
    <link href="${pageContext.request.contextPath}/css/login_popup_new.css" rel="stylesheet" type="text/css">

</head>
<body>
<%--顶部导航啦--%>
<jsp:include page="../../common/province/navigation.jsp"/>

<div class="content cf ">
    <div class="dest_toptitle">
        <div class="cf">
            <div class="f_left">
                <h1>
                    <a title="${placeName} " href="">${placeName} </a>
                </h1>
            </div>
            <div class="f_right">
                <ul>
                    <li class="des_icon_been" id="wentClick">
                        <a href="javascript:void(0)" data-cat="28" dataresource-cat="28" data_type="Place"
                           class="a_popup_login" rel="nofollow" id="wentClickID"></a>
                        <p>
                            <span id="spanwentId" class="textcolor">去过</span><span><em
                                id="emWentValueID">888888</em></span>
                        </p>
                    </li>
                    <li class="des_icon_want" id="wantClick">
                        <a href="javascript:void(0)" rel="nofollow" data-cat="28" dataresource-cat="28"
                           data_type="Place" class="a_popup_login" id="wantClickID"></a>
                        <p>
                            <span id="spanwantId" class="textcolor">想去</span><span><em
                                id="emWantValueID">666666</em></span>
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
        <!--城市景点-->
        <div class="list_wide_mod2">

            <c:forEach items="${sights}" var="sight" begin="0" end="14">
                <div class="list_mod2">
                    <div class="leftimg">
                        <a target="_blank"
                           href="${pageContext.request.contextPath}/getSight?sighturlid=${sight.sightUrlId}">
                            <img src="${pageContext.request.contextPath}/img/${sight.placeUrlId}/sight/${sight.sightUrlId}/${sight.picNames[0]}"
                                 width="220" height="140" img-id="305310998">
                        </a>
                    </div>
                    <div class="rdetailbox">
                        <dl>
                            <dt>
                                <i class="sight"></i>
                                <a target="_blank"
                                   href="${pageContext.request.contextPath}/getSight?sighturlid=${sight.sightUrlId}"
                                   title="${sight.sightName}">${sight.sightName}</a>
                                    <%--<s class="g_background">第15名</s>--%>
                            </dt>
                            <dd class="ellipsis">
                                    ${sight.address}
                            </dd>
                            <dd>
                                    ${sight.rank}
                            </dd>
                        </dl>
                        <ul class="r_comment">
                            <li><a class="score"
                            ><strong>
                                <c:if test="${sight.score!=' '}">
                                    ${sight.score}分
                                </c:if>
                            </strong>&nbsp;</a>
                            </li>
                            <li>
                                <span class="starlist">
                                    <span style=" width:
                                        ${sight.score * 10 * 2}%
                                            ;">
                                    <!--星星算法，内层span写入宽度，20%为一颗星,默认一颗星-->
                                    </span>
                                </span>
                            </li>
                            <li><a rel="nofollow" target="_blank"

                                   class="recomment">
                                (${sight.commentCount}条点评)</a></li>
                        </ul>
                    </div>
                    <p class="bottomcomment ellipsis open_popupbox_a">
                        <span class="sightc"><strong>景点介绍：</strong></span>
                            ${sight.introduction}
                    </p>
                </div>
            </c:forEach>

            <div class="ttd_pager cf">
                <p>${(currentPage-1)*15+1}-
                    <c:if test="${((currentPage-1)*15+15) >= totalSights}">
                        ${totalSights}
                    </c:if>
                    <c:if test="${((currentPage-1)*15+15) < totalSights}">
                        ${(currentPage-1)*15+15}
                    </c:if>
                    / ${totalSights}条</p>


                <div class="pager_v1">
                    <c:if test="${currentPage==1}">
                        <a class="prevpage disabled">上一页</a>
                    </c:if>
                    <c:if test="${currentPage>1}">
                        <a class="prevpage"
                           href="${pageContext.request.contextPath}/getSights?page=${currentPage-1}&placeurlid=${cityId}">上一页</a>
                    </c:if>

                    <c:forEach begin="${beginPage}" end="${beginPage+4}" var="i">
                        <c:if test="${i==currentPage}">
                            <a class="current">${currentPage}</a>
                        </c:if>
                        <c:if test="${i!=currentPage}">
                            <a href="${pageContext.request.contextPath}/getSights?page=${i}&placeurlid=${cityId}">${i}</a>
                        </c:if>
                    </c:forEach>

                    <c:if test="${currentPage==totalPage}">
                        <a class="prevpage disabled">下一页</a>
                    </c:if>
                    <c:if test="${currentPage<totalPage}">
                        <a class="prevpage"
                           href="${pageContext.request.contextPath}/getSights?page=${currentPage+1}&placeurlid=${cityId}">下一页</a>
                    </c:if>

                    <span>
                                   到 <input id="gopagetext" type="text"> 页 /
                                   <b id="numpage">${totalPage}</b>页
                            </span>
                    <a id="gopage">确定</a>
                </div>
            </div>
            <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
            <%--跳转指定页--%>
            <script type="text/javascript">
                $(function () {
                    $("#gopage").on("click", function () {
                        var pagenum = $("#gopagetext").val();
                        if (pagenum == '' || parseInt(pagenum) >${totalPage}) {
                            pagenum = ${currentPage};
                        }
                        $("#gopage").attr("href", "${pageContext.request.contextPath}/getSights?page=" + pagenum + "&placeurlid=${cityId}");
                    })
                })
            </script>
        </div>
    </div>
</div>

<%--底部使用jsp引入--%>
<jsp:include page="../../common/province/bottom.jsp"/>

</body>
</html>