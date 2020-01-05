<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <title>${sight.sightName}详情</title>
    <base href="<%=basePath%>"/>
    <link charset="utf-8" type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/assets/css/user/common.v2.0.css">
    <link charset="utf-8" type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/assets/css/user/fed.v2.0.css">
    <link charset="utf-8" type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/assets/css/user/continent_s1.v2.0.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/assets/css/user/login_popup_new.css">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/user/pc_flaot.css">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/layui/css/layui.css">
</head>
<body>

<%--顶部导航啦--%>
<jsp:include page="../../common/province/navigation.jsp"/>

<div id="root">
    <div class="imvc-root" data-reactroot="" data-reactid="1" data-react-checksum="1451243145">
        <div class="imvc-view-manager" data-reactid="2">
            <div class="imvc-view-item" data-path="/dest/t2888.html" data-reactid="3">
                <div class="body" data-reactid="4">
                    <jsp:include page="sight/style1.jsp"/>
                    <jsp:include page="sight/style2.jsp"/>
                    <div data-reactid="8">
                        <div class="main-bd" data-reactid="9">
                            <div class="main-wrapper ttd_hidden" data-reactid="10">
                                <div class="brief-box clearfix" data-reactid="16">
                                    <div class="brief-left" data-reactid="17">
                                        <div class="attraction_photo_big" data-reactid="18">
                                            <div id="j-preview-photo" class="attraction_photo_big" data-reactid="19">
                                                <img src="${pageContext.request.contextPath}/img/${sight.placeUrlId}/sight/${sight.sightUrlId}/${sight.picNames[0]}"
                                                     data-reactid="20"></div>

                                        </div>

                                    </div>
                                    <div class="brief-right" data-reactid="37"><h2
                                            data-reactid="38">${sight.sightName}</h2><span
                                            class="spot-grade " data-reactid="39"><strong
                                            data-reactid="40">${sight.rank}</strong><!-- react-text: 41 -->
                                        <!-- /react-text --></span>
                                        <ul data-reactid="42">
                                            <li data-reactid="43"><em data-reactid="44">景点地址</em><span
                                                    data-reactid="45">${sight.address}</span></li>
                                            <c:if test="${sight.website !='' }">
                                                <li data-reactid="43"><em data-reactid="44">官网网址</em><span
                                                        data-reactid="45">${sight.website}</span></li>
                                            </c:if>
                                            <c:if test="${sight.phone !='' }">
                                                <li data-reactid="43"><em data-reactid="44">官网电话</em><span
                                                        data-reactid="45">${sight.phone}</span></li>
                                            </c:if>
                                            <c:if test="${ sight.openTime !=''}">
                                                <li data-reactid="43"><em data-reactid="44">开放时间</em><span
                                                        data-reactid="45">${sight.openTime}</span></li>
                                            </c:if>

                                        </ul>
                                        <div class="score" data-reactid="52"><span data-reactid="53"><span
                                                class="score-star" data-reactid="54">
                                            <i style="width:${sight.score * 10 * 2}%;" data-reactid="55"></i></span><i
                                                class="num" data-reactid="56">${sight.score}</i><span class="total"
                                                                                                      data-reactid="57">/5分</span></span>
                                        </div>

                                    </div>
                                </div>
                                <div class="clearfix" data-reactid="679">
                                    <div class="detail-left" data-reactid="680" style="width: 100%;">

                                        <div class="content-wrapper" data-reactid="712" style="text-align: center;">
                                            <div class="label introduce-label" data-reactid="713">景点简介</div>
                                            <div class="introduce-content" data-reactid="718">
                                                <c:forEach items="${sight.introList}" var="intro" varStatus="i">
                                                    <p>${intro}</p>
                                                    <p>
                                                        <img src="${pageContext.request.contextPath}/img/${sight.placeUrlId}/sight/${sight.sightUrlId}/${sight.picNames[i.index*2]}"
                                                             alt="IMG_5568" style="">
                                                        <img
                                                                src="${pageContext.request.contextPath}/img/${sight.placeUrlId}/sight/${sight.sightUrlId}/${sight.picNames[i.index*2+1]}"
                                                                alt="_DSC7504-HDR" style="">
                                                    </p>
                                                </c:forEach>
                                            </div>
                                        </div>
                                        <div class="content-wrapper clearfix">
                                            <div class="label user-reviews-label">用户点评</div>
                                            <div class="t-comments"><span>${sight.score}</span><!-- react-text: 1095 -->
                                                /5分&nbsp;（共
                                                <!-- /react-text --><!-- react-text: 1096 -->
                                                ${sight.commentCount}<!-- /react-text -->
                                                <!-- react-text: 1097 -->人点评）<!-- /react-text --></div>
                                            <ul class="comments">

                                            </ul>

                                            <ul class="pkg_page">

                                                <a href="javascript:;"
                                                   class="up disabled nocurrent" id="lastpage"><b></b></a>

                                                <a href="javascript:void(0);" class="btn-last-page  current" id="page0">1</a>
                                                <a href="javascript:void(0);" class=" " id="page1">2</a>
                                                <a href="javascript:void(0);" class=" " id="page2">3</a>
                                                <a href="javascript:void(0);" class=" " id="page3">4</a>
                                                <a href="javascript:void(0);" class=" " id="page4">5</a>

                                                <a href="javascript:;" class="down  " id="nextpage">
                                                    <!-- react-text: 1252 -->
                                                    下一页</a>

                                                <span class="pkg_pagevalue"><!-- react-text: 1255 -->到
                                                    <!-- /react-text -->
                                                    <input type="text" class="pkg_page_num" value="1">
                                                    <!-- react-text: 1257 -->页<!-- /react-text -->
                                                    <input type="button" class="pkg_page_submit" value="确定"></input>

                                                </span>
                                            </ul>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><!-- react-empty: 751 --><!-- react-empty: 753 --></div>

                    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
                    <script type="text/javascript">

                        $(function () {

                            //页面加载时请求一次
                            getCommentAjax($(".pkg_page_num").val());

                            //点击查询时间请求一次
                            $(document).on("click", ".pkg_page_submit", function () {

                                //ajax请求
                                getCommentAjax($(".pkg_page_num").val());
                            });

                            //上一页
                            $(document).on("click", "#lastpage", function () {
                                getCommentAjax(parseInt($(".pkg_page_num").val()) - 1);
                            });

                            //下一页
                            $(document).on("click", "#nextpage", function () {
                                getCommentAjax(parseInt($(".pkg_page_num").val()) + 1);
                            });

                            //点击查询中间页
                            $("a[id*='page']").click(function () {
                                getCommentAjax($(this).html());
                            });

                        });

                        function getCommentAjax(pagenum) {
                            //总页数
                            var totalpage = parseInt(${sight.commentCount/15}) + 1;

                            //修改输入框值
                            if (pagenum > 0 && pagenum <= totalpage) {
                                $(".pkg_page_num").val(pagenum);
                            } else {
                                return;
                            }

                            //判断输入字符是否合法
                            var currentpage = parseInt($(".pkg_page_num").val());
                            if (!(currentpage > 0 && currentpage <= totalpage)) {
                                return;
                            }

                            //上一页
                            if (currentpage != 1) {
                                $("#lastpage").attr("class", "up");
                            } else {
                                $("#lastpage").attr("class", "up   disabled nocurrent");
                            }

                            //最后一页
                            if (currentpage == totalpage) {
                                $("#nextpage").attr("class", "down   disabled nocurrent");
                            } else {
                                $("#nextpage").attr("class", "down");
                            }

                            //当前页码模5
                            var remainder = parseInt(currentpage % 5);
                            //初始化显示的页码
                            pageControl(0, remainder);

                            if (currentpage <= 5) {
                                //最前5页
                                pageControl(0, currentpage - 1);
                            } else if (currentpage >= totalpage - 4) {
                                //最后5页
                                pageControl((totalpage - 5), remainder);
                            } else {
                                //中间部分
                                for (var i = 0; i < 5; i++) {
                                    if (remainder == i) {
                                        //修改页码
                                        $("#page" + i).html(currentpage);
                                        //修改当前页标志class属性
                                        $("#page" + i).attr("class", "btn-last-page  current");
                                    } else if (remainder < i) {
                                        $("#page" + i).html(currentpage - (remainder - i));
                                    } else {
                                        $("#page" + i).html(currentpage + (i - remainder));
                                    }
                                }
                            }

                            //隐藏多余的页码
                            for (var i = 0; i < 5; i++) {
                                if (parseInt($("#page" + i).html()) > totalpage) {
                                    $("#page" + i).hide();
                                }
                            }

                            $.ajax({
                                url: "${pageContext.request.contextPath}/getComment",
                                type: "POST",
                                contentType: "application/json;charset=utf-8",
                                data: JSON.stringify({
                                    pagenum: pagenum,
                                    sighturlid:${sight.sightUrlId}
                                }),
                                success: function (result) {
                                    //清空当前ul
                                    $(".comments").find("li").remove();
                                    //向ul追加li
                                    $.each(result, function (i, comment) {
                                        $(".comments").append(
                                            "<li>\n" +
                                            "    <h4>\n" +
                                            "        <span class=\"score-star\">\n" +
                                            "            <i\n" +
                                            "                    style=\"width: 80%;\"></i></span>\n" +
                                            "        <span>\n" +
                                            "            &nbsp;&nbsp;&nbsp;&nbsp;\n" +
                                            comment.score +
                                            "            \n" +
                                            "            &nbsp;分\n" +
                                            "       </span>\n" +
                                            "    </h4>\n" +
                                            "    <p>\n" +
                                            comment.content +
                                            "        \n" +
                                            "    </p>\n" +
                                            "    <div class=\"user-date\">\n" +
                                            "        <span>\n" +
                                            comment.userName +
                                            "            \n" +
                                            "            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n" +
                                            comment.publishTime +
                                            "            \n" +
                                            "        </span>\n" +
                                            "    </div>\n" +
                                            "</li>"
                                        );
                                    });
                                },
                                error: function (result) {
                                    alert("查询失败");
                                }
                            });
                        }

                        function pageControl(key, remainder) {
                            for (var i = 0; i < 5; i++) {
                                //修改页码
                                $("#page" + i).html(i + key + 1);
                                //修改当前页标志class属性
                                if (remainder == i) {
                                    $("#page" + i).attr("class", "btn-last-page  current");
                                } else {
                                    //其它页为非当前页
                                    $("#page" + i).attr("class", " ");
                                }
                            }
                        }

                    </script>

                    <div id="mapDialog" class="map_pop" style="visibility:hidden;" data-reactid="754"><a
                            href="javascript:;" id="J_delMap" class="delete" data-reactid="755">×</a>
                        <div id="J_mapBox" style="height:100%;" class="map_box" data-reactid="756">
                            <div id="J_amapLoading" class="map_pop_loading" data-reactid="757">地图加载中...</div>
                            <div class="map_side" id="J_mapSide" data-reactid="758">
                                <div class="btn_side_close" id="J_foldBtn" data-reactid="759"><a href="javascript:;"
                                                                                                 data-reactid="760"><i
                                        data-reactid="761"></i></a></div>
                                <div id="J_sideConent" data-reactid="762">
                                    <div class="route_search" id="J_routeSearch" data-reactid="763">
                                        <div class="map_side_title" data-reactid="764">线路查询</div>
                                        <div class="route_box layoutfix" data-reactid="765">
                                            <div class="change" data-reactid="766"><a href="javascript:;"
                                                                                      id="J_changeStartEnd"
                                                                                      data-reactid="767">换</a></div>
                                            <a href="javascript:;" class="startPoint" data-reactid="768">起</a><input
                                                type="text" class="input_txt" id="J_startPoint" data-reactid="769"><a
                                                href="javascript:;" class="endPoint" data-reactid="770">终</a><input
                                                type="text" class="input_txt" id="J_endPoint" data-reactid="771"></div>
                                        <div class="route_way layoutfix" id="J_routeWay" data-reactid="772"><a
                                                class="disable" href="javascript:;" data-way="transfer"
                                                data-reactid="773">公交</a><a class="disable" href="javascript:;"
                                                                            data-way="driving" data-reactid="774">驾车</a><a
                                                class="disable" href="javascript:;" data-way="walking"
                                                data-reactid="775">步行</a></div>
                                        <a class="hidden" id="J_routeSearchBtn" href="javascript:;" data-reactid="776">查询</a>
                                    </div>
                                    <div class="no_result" id="J_noRoute" style="display:none;" data-reactid="777"><span
                                            class="i" data-reactid="778"></span>
                                        <p class="txt" data-reactid="779">没有查询到相关路线，</p>
                                        <p class="txt" data-reactid="780">请更换地点重新查询。</p></div>
                                    <div class="no_result" id="J_tooClose" style="display:none;" data-reactid="781">
                                        <span class="i" data-reactid="782"></span>
                                        <p class="txt" data-reactid="783">起点和终点距离很近，</p>
                                        <p class="txt" data-reactid="784"><!-- react-text: 785 -->您可以
                                            <!-- /react-text --><a class="b" id="J_orWalking" href="javascript:;"
                                                                   data-reactid="786">步行</a><!-- react-text: 787 -->前往。
                                            <!-- /react-text --></p></div>
                                    <div class="result_error" id="J_startAndEnd" style="display:none;"
                                         data-reactid="788"></div>
                                    <div class="route_search_box" id="J_routeSearchBox" style="display:none;"
                                         data-reactid="789">
                                        <div class="route_result bus_route_result" data-reactid="790">
                                            <div class="bus_sort" data-reactid="791"><a class="selected"
                                                                                        data-policy="LEAST_TIME"
                                                                                        href="javascript:;"
                                                                                        data-reactid="792">速度最快</a><a
                                                    data-policy="LEAST_TRANSFER" href="javascript:;" data-reactid="793">最少换乘</a><a
                                                    data-policy="LEAST_WALK" href="javascript:;"
                                                    data-reactid="794">步行最少</a><a data-policy="NO_SUBWAY"
                                                                                  href="javascript:;"
                                                                                  data-reactid="795">不乘地铁</a></div>
                                            <div class="line_tips" data-reactid="796">路线均为实时信息</div>
                                            <div class="bus_route_height" style="height:409px;"
                                                 data-reactid="797"></div>
                                        </div>
                                        <div class="route_result car_route_result" style="display:none;"
                                             data-reactid="798">
                                            <div class="car_sort" data-reactid="799"><a data-policy="REAL_TRAFFIC"
                                                                                        href="javascript:;"
                                                                                        data-reactid="800">躲避拥堵</a><a
                                                    data-policy="LEAST_DISTANCE" href="javascript:;" data-reactid="801">避免高速</a><a
                                                    data-policy="LEAST_FEE" href="javascript:;"
                                                    data-reactid="802">避免收费</a></div>
                                            <div class="line_tips" data-reactid="803">路线均为实时信息</div>
                                            <div class="car_total" data-reactid="804"><p class="l" data-reactid="805">
                                                <!-- react-text: 806 -->全程约<!-- /react-text --><span class="b distance"
                                                                                                     data-reactid="807"></span>
                                            </p>
                                                <p class="l" id="J_taxiCost" data-reactid="808"><!-- react-text: 809 -->
                                                    打车费约<!-- /react-text --><span class="b" data-reactid="810"><span
                                                            class="tolls" data-reactid="811"></span>
                                                        <!-- react-text: 812 -->元<!-- /react-text --></span></p></div>
                                            <div class="route_detail_box" style="height:337px;"
                                                 data-reactid="813"></div>
                                        </div>
                                        <div class="route_result foot_route_result" style="display:none;"
                                             data-reactid="814">
                                            <div class="line_tips" data-reactid="815">路线均为实时信息</div>
                                            <div class="car_total" data-reactid="816"><p data-reactid="817">
                                                <!-- react-text: 818 -->全程约<!-- /react-text --><span class="b distance"
                                                                                                     data-reactid="819"></span>
                                            </p>
                                                <p data-reactid="820"><a class="print" href="javascript:;"
                                                                         data-reactid="821">打印</a>
                                                    <!-- react-text: 822 -->或<!-- /react-text --><a id="J_changeBus"
                                                                                                    href="javascript:;"
                                                                                                    data-reactid="823">乘坐公交</a>
                                                </p></div>
                                            <div class="route_detail_box" style="height:383px;"
                                                 data-reactid="824"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="J-PopMap" class="map_content" data-reactid="825"></div>
                        </div>
                    </div>
                    <input type="hidden" id="page_id" name="page_id" value="10650000804" data-reactid="826">
                    <!-- react-empty: 827 --><!-- react-empty: 828 --><!-- react-empty: 829 --></div>
            </div>
        </div><!-- react-empty: 830 --></div>
</div>

<%--底部使用jsp引入--%>
<jsp:include page="../../common/province/bottom.jsp"/>

</body>
</html>