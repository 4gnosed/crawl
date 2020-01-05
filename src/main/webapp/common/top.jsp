<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=1024">
    <meta http-equiv="Cache-Control" content="no-siteapp ">
    <title>2017亚洲十大旅行</title>
    <link charset="utf-8" type="text/css" rel="stylesheet" href="css/user/common.v2.0.css">
    <link charset="utf-8" type="text/css" rel="stylesheet" href="css/user/fed.v2.0.css">
    <link type="text/css" rel="stylesheet" href="css/user/pc_flaot.css">

    <style>
        /* common */
        * {
            margin: 0;
            padding: 0;
        }

        .bdshare-slide-button-box {
            top: 210px !important;
        }

        .bdshare-slide-button-box .bdshare-slide-button {
            width: 24px;
            height: 88px;
            display: block;
            position: absolute;
            top: 58px;
        }

        /*.bdshare-slide-style-r7 .bdshare-slide-button {*/
            /*width: 38px !important;*/
            /*height: 110px !important;*/
            /*background: url(/act3/img/kb_top/right_share.png) no-repeat 0 -70px !important;*/
        /*}*/

        #gs_feedback_gotop .side_fixed {
            position: fixed;
            right: 0 !important;
            top: 200px !important;
            height: 60px;
        }

        /*#gs_feedback_gotop .to_top {*/
            /*width: 38px !important;*/
            /*height: 60px !important;*/
            /*padding: 0;*/
            /*padding: 0;*/
            /*background: url(/act3/img/kb_top/right_share.png) no-repeat 0 0 !important;*/
        /*}*/

        #gs_feedback_gotop .c_fq {
            display: none;
        }

        .main_content, .footerseo, .footgray {
            min-width: 1180px;
        }

        /* 重置公共 */
        .shareulbg_2, .shareulbg {
            margin-left: -31px !important;
        }

        #cui_hd, #cui_nav .cui_nav {
            max-width: 1180px !important;
        }


        /* 新footer by rzou */
        .footerseo .footerseo_con, .footgray .footinner {
            width: 1180px;
        }

        .footerseo_con ul li {
            width: 104px;
        }

        .footgray .footinner dl {
            width: 210px;
        }

        .seojs2line ul li {
            width: auto;
        }
        /* right ad by zj 2013-12-17 */
        .gs_operate_right_fix {
            margin-left: 1195px;
        }
        /* bottombar by zj 2014-06-30 */
        .gs_bottombar ul {
            width: 1180px;
        }

        .bdshare-slide-list-box {
            position: absolute;
            top: 58px;
        }

        .detail_info .rate {
            padding-top: 15px !important;
        }

        .detail_info .info_memo {
            height: 54px !important;
        }

        .list_box ul li:hover, .item_list_control ul li:hover {
            -moz-box-shadow: 3px 3px 3px #9799a1;
            -webkit-box-shadow: 3px 3px 3px #9799a1;
            box-shadow: 3px 3px 3px #9799a1;
        }

        .base_nav {
            margin-bottom: 10px !important;
        }

        .gs-nav {
            width: 830px;
        }

        .content {
            width: 1180px;
            margin: 0 auto;
            padding-top: 35px;
        }

        .banner {
            width: 100%;
            min-width: 1080px;
        }

        .top_view {
            background-color: #F8F3EB;
        }

        .content_background {
            background-image: linear-gradient(0deg, rgb(250, 250, 250) 2%, rgba(250, 250, 250, 0) 98%);
            width: 1000px;
            height: 319px;
            margin: 30px auto;
            margin-top: 0;
        }

        .listitem {
            width: 1000px;
            margin: 0 auto;
        }

        .footer {
            background-color: #434343;
            height: 300px;
            width: 100%;
        }

        .footer_pic {
            margin: 20px auto 0;
            width: 1080px;
        }

        .footer_pic img {
            width: 783px;
            margin: 0 auto;
            display: block;
        }

        .footer_title {
            font-size: 40px;
            color: #FFFFFF;
            text-align: center;
            /*font-family: 'SimHei';*/
            font-weight: bold;
            padding: 40px 0 30px 0;
            width: 1000px;
            min-width: 1080px;
            margin: 0 auto;
            height: 52px;
            line-height: 52px;
        }

        .top_title {
            font-size: 40px;
            color: #A3752D;
            text-align: center;
            /*font-family: 'SimHei';*/
            font-weight: bold;
            height: 52px;
            line-height: 52px;
        }

        .subtitle {
            font-size: 22px;
            color: #ADADAD;
            text-align: center;
            height: 29px;
            line-height: 29px;
            height: 81px;
        }

        .text {
            margin: 0 auto;
            line-height: 40px;
            font-size: 20px;
            width: 860px;
            padding: 0 0 40px 0;
            text-align: left;
        }

        .QR_img {
            width: 170px;
            display: inline;
            margin: 0 40px;
            float: left;
        }

        .QR_list {
            width: 500px;
            margin: 0 auto;
            padding: 30px 0 40px 0;
            height: 220px;
        }

        .QR_img p {
            font-size: 24px;
            color: #C39753;
            text-align: center;
            /*font-family: 'SimHei';*/
            font-weight: bold;
            height: 31px;
            line-height: 31px;
        }

        .discribe {
            width: 900px;
            margin: 0 auto;
            height: 95px;
            text-align: center;
        }

        .discribe p {
            font-size: 24px;
            color: #C39753;
            text-align: center;
            /*font-family: 'SimHei';*/
            font-weight: bold;
            float: left;
            width: 33.3%;
            height: 31px;
            line-height: 31px;
        }

        .multi_type {
            width: 1000px;
            margin: 0 auto;
            height: 95px;
            text-align: center;
        }

        .multi_type span {
            font-size: 24px;
            color: #C39753;
            text-align: center;
            /*font-family: 'SimHei';*/
            font-weight: bold;
            float: left;
            height: 31px;
            line-height: 31px;
            margin-left: 56px;
            width: 12%;
        }

        .multi_type span:nth-child(1) {
            margin-left: 0px;
        }

        .picture {
            padding: 50px 0 25px;
        }

        .top_content {
            text-align: center;
        }

        .content_list {
            width: 100%;
            margin: 0 auto;
            text-align: center;
            max-width: 1080px;
        }
    </style>

</head>
<body>

<div>
    <div class="gs-header cf">
        <div class="content">
            <div class="gs-nav">
                <ul>
                    <li id="gs_nav_0"><a href="https://you.ctrip.com/"><i class="icon_home"></i></a></li>
                    <li id="my_home"><a href="https://you.ctrip.com/members/">我的主页</a></li>
                </ul>
            </div>
            <div class="gs-search-2"><input id="gsSearch" type="text" placeholder="搜索城市/景点/游记/问答/住宿/用户">
                <button type="button" class="btn-search"></button>
            </div>
        </div>
    </div>
</div>

<div class="top_view">
    <div class="banner">
        <img style="width:100%;" src="assets/images/top/banner.png">
    </div>
    <div class="content_list">
        <div class="listitem">
            <div class="content_background">
                <div class="top_title">关于口碑榜</div>
                <div class="subtitle">
                    <p>ABOUT</p>
                    <img style="width:83px;margin:25px 0;" src="assets/images/top/line.png">
                </div>
                <div class="top_content">
                    <div class="text">
                        中国旅行口碑榜见证和记录了几年来全球旅游用户旅行足迹的变化，榜单涵盖酒店、景点、航空、旅游、邮轮、用车等全方位旅行体验维度。本届中国旅行口碑榜利用大数据参选入围，结合用户投票，力图打造国内最权威的旅游排行榜，为您提供最全面、真实的参考。
                    </div>
                </div>
            </div>
        </div>
        <div class="listitem">
            <div class="top_title">多榜单体系</div>
            <div class="subtitle">
                <p>MULTI</p>
                <img style="width:83px;margin:25px 0;" src="assets/images/top/line.png">
            </div>
            <div class="top_content">
                <img class="picture" src="assets/images/top/littleicon.png">
                <div class="multi_type">
                    <span>目的地</span>
                    <span>航司</span>
                    <span>酒店</span>
                    <span>景区</span>
                    <span>邮轮</span>
                    <span>KOL</span>
                </div>
            </div>
        </div>
        <div class="listitem">
            <div class="top_title">评选流程</div>
            <div class="subtitle">
                <p>PROCESS</p>
                <img style="width:83px;margin:25px 0;" src="assets/images/top/line.png">
            </div>
            <div class="top_content">
                <img class="picture" src="assets/images/top/bigicon.png">
                <div class="discribe">
                    <p>参选入围</p>
                    <p>用户投票</p>
                    <p>结果公示</p>
                </div>
            </div>
        </div>


    </div>
    <div class="footer">
        <div class="footer_title">合作伙伴</div>
        <div class="footer_pic">
            <img src="assets/images/top/partner.png">
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
</body>
</html>