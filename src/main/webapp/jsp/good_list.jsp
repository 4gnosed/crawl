<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- saved from url=(0044)https://you.ctrip.com/shopping/guilin28.html -->
<html>
<head>
    <link charset="utf-8" type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/css/common.v2.0.css">
    <link charset="utf-8" type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/fed.v2.0.css">

    <link charset="utf-8" type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/css/city_shopping.v2.0.css">
    <link type="text/css" rel="stylesheet" href="./桂林购物攻略,桂林购物清单_指南,旅游买什么便宜_划算【携程攻略】_files/pc_flaot.css">

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
<div>
</div>


<div class="content cf ">
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
            <li><h1>桂林购物攻略</h1></li>
        </ul>
    </div>
    <div class="dest_toptitle">
        <div class="cf">
            <div class="f_left">
                <h1>
                    <a title="桂林" href="https://you.ctrip.com/place/guilin28.html">桂林</a>
                </h1>
                <p>Guilin</p>

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
                欢迎您访问桂林 </p>
        </div>
    </div>
</div>
<div class="ttd_topnav_box">
    <div class="ttd_topnav"
         style="position: relative; overflow: visible; top: 0px; left: 0px; right: 0px; width: 100%; height: 39px;">
        <div class="innerbox">
            <ul class="cf">

                <li class="ttd_first_nav"><a href="https://you.ctrip.com/place/guilin28.html">主页</a>
                </li>
                <li><a href="https://you.ctrip.com/sight/guilin28.html">景点</a>
                </li>
                <li style="z-index: 1;"><a href="https://hotels.ctrip.com/hotel/Guilin33">住宿</a>
                    <span class="gs_newicon"></span>
                </li>
                <li><a href="https://you.ctrip.com/restaurant/guilin28.html">美食</a>
                </li>
                <li class="current"><a href="https://you.ctrip.com/shopping/guilin28.html">购物</a>
                </li>
                <li><a href="https://you.ctrip.com/travels/guilin28.html">游记</a>
                </li>
                <li><a href="https://you.ctrip.com/journeys/guilin28.html">行程</a>
                </li>
                <li><a href="https://vacations.ctrip.com/tour/static/page/guide/introduction.html">当地向导</a>
                </li>
                <li style="z-index: 1;"><a
                        href="https://vacations.ctrip.com/whole-2B126/?searchText=%E6%A1%82%E6%9E%97">旅游度假</a>
                    <span class="gs_newicon ddrnewicon"></span>
                </li>
            </ul>
        </div>
    </div>
</div>

<div class="ttd2_background">
    <div class="content cf">

        <div class="des_wide f_right">
            <!--景点速览，带收缩展开换div-->

            <!--景点速览 END-->
            <div class="normalbox channelspace">
                <div class="normaltitle">
                    <h1>桂林<span>特色商品</span></h1>

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
                    <h1>桂林<span>必逛购物地</span></h1>
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
<!--弹出层-->
<div class="gsn-layer food_popbox" id="foodPopbox">
    <a rel="nofollow" href="javascript:$.popupbox.close();" class="close"></a>
    <div class="carousel" id="foodCarousel">
        <ol class="carousel-indicators" style="margin-left: 0px; display: block;">
        </ol>
        <div class="carousel-inner">
        </div>
        <a data-slide="prev" href="https://you.ctrip.com/shopping/guilin28.html#foodCarousel"
           class="carousel-control left">‹</a>
        <a data-slide="next" href="https://you.ctrip.com/shopping/guilin28.html#foodCarousel"
           class="carousel-control right">›</a>
    </div>
    <h3 class="boxtitle">
        <span class="f_left"></span><span class="f_right"><a rel="nofollow" href="javascript:;" class="icon_slike"
                                                             data-id="0"><i></i><span></span></a></span>
    </h3>
    <ul class="toplinedl">
        <li></li>
        <li class="topline"><strong>哪里买：</strong></li>
        <li class="ellipsis"></li>
    </ul>
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
<config id="timespan" value="20160329"></config><!--InstanceEnd name="position"-->
<script type="text/javascript">var globalConfig = {
    H1: 'https',
    AjaxUrl: 'accounts.ctrip.com',
    H3: 'my.ctrip.com',
    PassportUrl: 'passport.ctrip.com',
    Lang: 'gb2312'
};</script>
<script type="text/javascript" src="./桂林购物攻略,桂林购物清单_指南,旅游买什么便宜_划算【携程攻略】_files/ActivityController_V2.min.js.下载"
        charset="utf-8"></script>


<input type="hidden" id="sso_loginprocxyPath" name="sso_loginprocxyPath"
       value="http://you.ctrip.com/DestinationSite/LoginHelper/loginprocxy.html">
<script type="text/javascript" src="./桂林购物攻略,桂林购物清单_指南,旅游买什么便宜_划算【携程攻略】_files/mask_you.js.下载" charset="gb2312"></script>
<script type="text/javascript" src="./桂林购物攻略,桂林购物清单_指南,旅游买什么便宜_划算【携程攻略】_files/Globle_young.js.下载"
        charset="utf-8"></script>
<script type="text/javascript" src="./桂林购物攻略,桂林购物清单_指南,旅游买什么便宜_划算【携程攻略】_files/client_you.js.下载"
        charset="utf-8"></script>
<div class="login_popup login_popup_gs" id="sso_maskDIv" style="display:none">
    <div class="lg_main" id="sso_memberlogin">
        <div class="lg_hd">
            <div class="lg_sale"><i class="lg_ico_sale"></i>登录可享：积分换礼、预订返现、更快速的预订</div>
        </div>
        <div class="lg_switch"><label class="lg_label" id="sso_domUser"><input type="radio" name="2" checked="checked"
                                                                               id="sso_memberRadio">普通登录</label><label
                class="lg_label" id="sso_phonePwd"><input type="radio" name="2" id="sso_cardRadio">手机动态密码登录</label>
        </div>
        <ul class="lg_form" style="display: block;" id="sso_domUserUl">
            <li><label class="lg_form_label">登 录 名</label><input type="text" value="用户名/卡号/手机/邮箱"
                                                                 class="lg_input_text lg_input_unfocus" id="sso_txtUid">
            </li>
            <li><label class="lg_form_label">密&nbsp; &nbsp;码</label><input type="password" class="lg_input_text"
                                                                           id="sso_txtPwd" maxlength="20"
                                                                           onpaste="return false;"
                                                                           onkeydown="sso_member_enter();"
                                                                           oncontextmenu="return false;"
                                                                           oncopy="return false;" oncut="return false;">&nbsp;<a
                    href="https://accounts.ctrip.com/member/PassWord/VerifyUserInfo.aspx" id="sso_forgetPwd"
                    target="_blank">忘记密码？</a></li>
            <li id="sso_divVerifyCode" style="display: none;"><label class="lg_form_label">验 证 码</label><input
                    type="text" class="lg_input_text lg_input_small lg_input_unfocus" maxlength="6" name="verifyCode"
                    id="sso_verifyCode" autocomplete="off" value="不区分大小写" onkeydown="sso_member_enter();">&nbsp;<img
                    width="88" height="32" alt="" id="sso_imgCode"></li>
            <li id="sso_domErrorli" style="display: none;">
                <div class="lg_form_wrap">
                    <div class="base_error" id="sso_membererror" style="visibility: hidden;"><i
                            class="lg_ico_alert"></i>登录名或密码错误
                    </div>
                </div>
            </li>
            <li>
                <div class="lg_form_wrap"><label class="lg_label"><input type="checkbox" name="" checked="checked"
                                                                         id="sso_chkAutoLogin">30天内自动登录</label></div>
            </li>
            <li class="lg_form_btn">
                <div class="lg_form_wrap"><input type="button" value="登 录" class="lg_btn" id="sso_btnSubmit">&nbsp;<a
                        href="javascript:;" id="sso_register">免费注册</a></div>
            </li>
        </ul>
        <ul class="lg_form" style="display: none;" id="sso_phonePwdUl">
            <li><label class="lg_form_label">手 机 号</label><input type="text" id="sso_mobilePhone" value="请输入注册手机号"
                                                                 class="lg_input_text lg_input_unfocus"></li>
            <li id="sso_phoneCodeLi" style="display:none"><label class="lg_form_label">验 证 码</label><input type="text"
                                                                                                           class="lg_input_text lg_input_small lg_input_unfocus"
                                                                                                           maxlength="6"
                                                                                                           id="sso_txtCodePwd"
                                                                                                           value="不区分大小写">&nbsp;<img
                    width="88" height="32" alt="" id="sso_imgCodePhone"></li>
            <li><label class="lg_form_label">密&nbsp; &nbsp;码</label><input type="password"
                                                                           class="lg_input_text lg_input_small lg_input_unfocus"
                                                                           id="sso_dyPwdFirst"
                                                                           onkeydown="sso_phone_enter();">&nbsp;<a
                    href="javascript:;" class="lg_btn3" id="sso_reSend">发送动态密码</a></li>
            <li id="sso_phoneLoginErr" style="display: none">
                <div class="lg_form_wrap" style="display: ;">
                    <div class="base_error" id="sso_dymembererror"><i class="lg_ico_alert"></i>登录名或密码错误</div>
                </div>
            </li>
            <li id="sso_phoneLoginTip" style="display: none">
                <div class="lg_form_wrap" style="display: ;">
                    <div class="base_success"><i class="lg_ico_success"></i>动态密码已发送至您的手机，请注意查收。</div>
                </div>
            </li>
            <li>
                <div class="lg_form_wrap"><label class="lg_label"><input type="checkbox" name="" checked="checked"
                                                                         id="sso_chkAutoLoginDy">30天内自动登录</label></div>
            </li>
            <li class="lg_form_btn">
                <div class="lg_form_wrap"><input type="button" value="登 录" class="lg_btn" id="sso_btnSubmitLogin">&nbsp;<a
                        href="javascript:;" id="sso_register2">免费注册</a></div>
            </li>
        </ul>
        <div class="lg_others">其他登录：<a href="javascript:;" id="sso_clogin">合作卡</a> | <a
                href="http://www.ctrip.com/crptravel/" target="_parent">公司客户</a></div>
    </div>
    <div class="lg_main" id="sso_commonlogin" style="display: none">
        <div class="lg_hd"><strong>合作卡登录</strong></div>
        <input type="hidden" id="sso_hidSourceId" name="sso_hidSourceId" value="1">
        <ul class="lg_form">
            <li><label class="lg_form_label">合 作 卡</label><input type="text" id="sso_cardName"
                                                                 class="lg_input_text lg_input_unfocus" mod="address"
                                                                 mod_address_source="Alliance"
                                                                 mod_address_reference="sso_hidSourceId"
                                                                 mod_notice_tip="中文/拼音" value="中文/拼音"></li>
            <li><label class="lg_form_label">登 录 名</label><input type="text" id="sso_txtCUid" value="用户名/卡号/手机/邮箱"
                                                                 class="lg_input_text lg_input_unfocus"></li>
            <li><label class="lg_form_label">密&nbsp; &nbsp;码</label><input type="password" class="lg_input_text"
                                                                           maxlength="20" id="sso_txtcPwd"
                                                                           onpaste="return false;"
                                                                           oncontextmenu="return false;"
                                                                           oncopy="return false;"
                                                                           onkeydown="sso_card_enter();"
                                                                           oncut="return false;">&nbsp;<a
                    href="javascript:;" id="sso_lkbtnGetPwd">忘记密码？</a></li>
            <li id="sso_cardError" style="display: none">
                <div class="lg_form_wrap" style="display: ;">
                    <div class="base_error" id="sso_commonerror"><i class="lg_ico_alert"></i>登录名或密码错误</div>
                </div>
            </li>
            <li class="lg_form_btn">
                <div class="lg_form_wrap"><input type="button" value="登 录" class="lg_btn" id="sso_btnCSubmit">&nbsp;
                </div>
            </li>
        </ul>
        <div class="lg_others"><a href="javascript:;" class="lg_goback" id="sso_mlogin">&lt; 返回普通会员登录</a></div>
    </div>
    <div class="lg_gs"><h3>第三方帐号登录</h3>
        <ul class="lg_account_list">
            <li><a href="javascript:;"><span><i class="lg_ico_sina" id="sso_sina"></i></span>新浪微博</a></li>
            <li><a href="javascript:;"><span><i class="lg_ico_qq" id="sso_qq"></i></span>
                <p>QQ</p></a></li>
        </ul>
        <ul class="lg_account_list_m">
            <li><a href="javascript:;" id="sso_baidu"><span><i class="lg_ico_baidu_m"></i></span>百度</a></li>
            <li><a href="javascript:;" id="sso_renren"><span><i class="lg_ico_renren_m"></i></span>人人网</a></li>
            <li><a href="javascript:;" id="sso_nete"><span><i class="lg_ico_wangyi_m"></i></span>网易</a></li>
            <li><a href="javascript:;" id="sso_pay"><span><i class="lg_ico_alipay_m"></i></span>支付宝</a></li>
        </ul>
    </div>
    <a href="javascript:;" class="lg_close" id="sso_divClose">×</a></div>
<iframe id="sso_ifrprocxy" style="display: none;"
        src="./桂林购物攻略,桂林购物清单_指南,旅游买什么便宜_划算【携程攻略】_files/saved_resource.html"></iframe>


<script charset="utf-8" type="text/javascript"
        src="./桂林购物攻略,桂林购物清单_指南,旅游买什么便宜_划算【携程攻略】_files/common.v2.0.js.下载"></script>
<script charset="utf-8" type="text/javascript" src="./桂林购物攻略,桂林购物清单_指南,旅游买什么便宜_划算【携程攻略】_files/fed.v2.0.js.下载"></script>
<script charset="utf-8" type="text/javascript"
        src="./桂林购物攻略,桂林购物清单_指南,旅游买什么便宜_划算【携程攻略】_files/city_shopping.v2.0.js.下载"></script>
<script type="text/javascript">
    function GetGlobalShopsInfo(ischina, poiType) {
        var shopids = [];
        $(".abiconbox").each(function () {
            var shopid = $(this).attr("data-id");
            shopids.push(shopid);
        });
        var shopidStr = shopids.join(",");
        if (shopids != "") {
            $.ajax({
                url: "/destinationsite/SharedComm/GetGlobalShopsInfo",
                type: "post",
                async: true,
                data: {"shopids": shopidStr, "poitype": poiType},
                success: function (responseText) {
                    $.each(responseText, function (i, item) {
                        if (item) {
                            if (ischina) {
                                $(".abiconbox[data-id=" + item + "]").append("<s class=\"ico_global\"></s>");
                            } else {
                                $(".abiconbox[data-id=" + item + "]").append("<s class=\"ico_global\"></s>");
                            }
                        }
                    });
                },
                error: function () {
                }
            });
        }
    }

    function SetImgOriginalUrl() {
        try {
            $("img[data-original]").each(function (i) {
                var url = $(this).attr("data-original");
                if (url != "") {
                    $(this).attr("src", url);
                }
            });
        } catch (e) {
        }
    }

    $(function () {
        OnloadShopimg();
        ShowVacationAd();
        ShowspecialHotelAd();
        if ($("#inChina").val().toLowerCase() == "true") {
            GetSpecialFlightView();
        } else {
            ShowIntelFlightAd();
        }
        SetImgOriginalUrl();
    });
    //喜欢处理脚本
    INTERFACE.likeRequestFn = function ($that) {
        var goodsid = $that.attr("data-id");
        if (goodsid > 0) {
            $.ajax({
                url: "/destinationsite/Shopping/GoodsHandle",
                type: "post",
                async: true,
                data: {"goodsid": goodsid},
                success: function (responseText) {
                    if (responseText.ResultCode == 1) {
                    }
                },
                error: function () {
                }
            });
        }
    };

    // 异步请求喜欢数和喜欢状态
    INTERFACE.likeDataUrl = "/destinationsite/SharedPage/GetPOILikedInfo";

    //弹出浮层
    INTERFACE.getFoodDataFn = function (callback, $that) {
        var goodsid = "0";
        var districtid = "0";
        var shopid = "0";

        goodsid = $that.attr("data-id");
        districtid = $that.attr("data-item");

        if (goodsid > 0) {
            $.ajax({
                url: "/destinationsite/Shopping/GetGoodsInfo",
                type: "post",
                async: true,
                data: {"goodsid": goodsid, "districtid": districtid, "shopid": shopid, "pagetype": "1"}, //pagetype:0为国家，1为城市和详情
                success: function (responseText) {
                    callback(responseText);
                },
                error: function () {
                }
            });
        }
    };
</script>


<script type="text/javascript">
    if (!window.__SSO_submit) {
        window.__SSO_submit = function (a, t) {
            $('.a_popup_login').removeClass('a_popup_login');
            switch (a) {
                case 'wantClickID':
                case 'wentClickID':
                    $("#" + a).trigger('click');
                    break;
                case 'setFriend0':
                case 'setFriend1':
                case 'setFriend2':
                    SetFirendProfileurlNo(a);
                    break;
                case 'writereviewid':
                    var currentUrl = window.location.href.replace(/#.*$/g, "");
                    var urlParamsIndex = currentUrl.lastIndexOf("?");
                    var randomCode = Math.floor(Math.random() * 10000 + 1);

                    if (urlParamsIndex == -1) {
                        currentUrl += "?RandomCode=" + randomCode;
                    } else {
                        var hasParamAlready = currentUrl.match(/RandomCode=[^&]{0,}/);
                        if (hasParamAlready != null) {
                            currentUrl = currentUrl.replace(/RandomCode=[^&]{0,}/, "RandomCode=" + randomCode);
                        } else {
                            currentUrl += "&RandomCode=" + randomCode;
                        }
                    }
                    window.location.href = currentUrl + "#dianPing";
                    break;
                case 'comment-submit':
                    $(".post_review .btn_line .gsn-btn-2").click();
                    break;
            }
        };
    }

    if (window.$) {
        $(function () {
            if (window.ShowGowant) {
                ShowGowant();
            }
            if (window.ShowWeather) {
                ShowWeather();
            }
            if (window.asynfunc) {
                for (var index in window.asynfunc) {
                    try {
                        window.asynfunc[index].call();
                    } catch (e) {
                        if (window.console) {
                            console.log(e);
                        }
                    }
                }
            }
        });
    }
</script>


<div id="hKwordCon" class="search-box" style="display: none; top: 0px; left: 0px;">
    <ul></ul>
</div>
<div id="gsn_alert_box" class="gsn-layer" style="display:none"><a class="close"
                                                                  href="javascript:$.popupbox.close()"></a>
    <div class="gsn-form"><h3 style="color: #0066CC;font-weight: normal; line-height: 2em; margin: 0;"></h3>
        <div class="gsn-inputbox gsn-buttonbox" style="text-align: right;"><a class="gsn-btn-2"
                                                                              href="javascript:$.popupbox.close()">确定</a>
        </div>
    </div>
</div>
<div id="qcode_share"><a class="close" href="javascript:;"></a></div>
<div id="bdshare" class="shareulbg_2 bdshare_t get-codes-bdshare" style="display: none;"><a
        class="bds_tsina"><span>新浪微博</span></a><a class="weibo" href="javascritp:;"><span>微信</span></a><a
        class="bds_renren"><span>人人网</span></a><a class="bds_qzone"><span>QQ空间</span></a></div>
<div id="gsn-notice-box"
     style="width: 290px; text-align: center; position: fixed; left: 50%; top: 50%; margin:-20px 0 0 -145px; z-index: 100;display:none;"></div>
<div>
    <div class="city_select_popup" style="display: none;"><a class="close" href="javascript:;">×</a>
        <p class="title">支持中文/拼音/简拼输</p>
        <ul class="tab_box"></ul>
    </div>
    <div class="city_select_popup" style="display: none;"><a class="close" href="javascript:;">×</a>
        <p class="title">支持中文/拼音/简拼输</p>
        <ul class="tab_box"></ul>
    </div>
</div>
<div>
    <div class="city_suggest_popup" style="display: none;"></div>
    <div class="city_suggest_popup" style="display: none;"></div>
</div>
<div id="calendar" class="gs-date" style="display: block; left: -1000px; top: -1000px;">
    <div id="datelist0" class="date-list"><label></label>
        <dl>
            <dt class="week0">日</dt>
            <dt class="week1">一</dt>
            <dt class="week2">二</dt>
            <dt class="week3">三</dt>
            <dt class="week4">四</dt>
            <dt class="week5">五</dt>
            <dt class="week6">六</dt>
            <dd><span>1</span><span>2</span><span>3</span><span>4</span><span>5</span><span>6</span><span>7</span><span>8</span><span>9</span><span>10</span><span>11</span><span>12</span><span>13</span><span>14</span><span>15</span><span>16</span><span>17</span><span>18</span><span>19</span><span>20</span><span>21</span><span>22</span><span>23</span><span>24</span><span>25</span><span>26</span><span>27</span><span>28</span><span>29</span><span>30</span><span>31</span><span
                    class="foretime"></span><span class="foretime"></span><span class="foretime"></span><span
                    class="foretime"></span><span class="foretime"></span><span class="foretime"></span><span
                    class="foretime"></span><span class="foretime"></span><span class="foretime"></span><span
                    class="foretime"></span><span class="foretime"></span></dd>
        </dl>
    </div>
    <div id="datelist1" class="date-list"><label></label>
        <dl>
            <dt class="week0">日</dt>
            <dt class="week1">一</dt>
            <dt class="week2">二</dt>
            <dt class="week3">三</dt>
            <dt class="week4">四</dt>
            <dt class="week5">五</dt>
            <dt class="week6">六</dt>
            <dd><span>1</span><span>2</span><span>3</span><span>4</span><span>5</span><span>6</span><span>7</span><span>8</span><span>9</span><span>10</span><span>11</span><span>12</span><span>13</span><span>14</span><span>15</span><span>16</span><span>17</span><span>18</span><span>19</span><span>20</span><span>21</span><span>22</span><span>23</span><span>24</span><span>25</span><span>26</span><span>27</span><span>28</span><span>29</span><span>30</span><span>31</span><span
                    class="foretime"></span><span class="foretime"></span><span class="foretime"></span><span
                    class="foretime"></span><span class="foretime"></span><span class="foretime"></span><span
                    class="foretime"></span><span class="foretime"></span><span class="foretime"></span><span
                    class="foretime"></span><span class="foretime"></span></dd>
        </dl>
    </div>
    <a id="calendar-lastmonth">&lt;&lt;</a><a id="calendar-nextmonth">&gt;&gt;</a></div>
<div id="gs_addone_1" class="gs_addone_1">+1</div>
<input type="hidden" id="abTestValue" value="abTestValue_Value"><input type="hidden" id="qrcodeLink"
                                                                       value="http://m.ctrip.com/m/c3"><input
        type="hidden" id="channel" value="自然"><input type="hidden" id="codeImgKey" value="s5sllodx1577160248760">
<div class="fl_pop_wrap" id="appd_wrap_default" style="display: none;">
    <div class="fl_pop_wrap_cntr" id="fl_pop_wrap_cntr" style="left: -100%;">
        <div class="fl_pop_wrap_cntr_bg" id="fl_pop_wrap_cntr_bg"></div>
        <div class="fl_pop_box">
            <div class="fl_pop_pic"><img id="imgAll" src="./桂林购物攻略,桂林购物清单_指南,旅游买什么便宜_划算【携程攻略】_files/fu_gl.png"></div>
            <div class="fl_pop_cnt">
                <div class="fl_pop_cnt_bg"></div>
                <div class="fl_pop_form">
                    <div class="fl_pop_ttl">下载携程旅行手机版<a href="http://app.ctrip.com/"><span>Pad</span>及手机网络版 &gt;</a>
                    </div>
                    <div>下载地址至手机&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;APP下单享更多优惠</div>
                    <div class="fl_pop_items"><input type="text" placeholder="请输入11位手机号" id="popfloating_phone_num"
                                                     value="" class="fl_pop_input_phone">
                        <div class="fl_pop_submit"><input type="text" id="authCodeImgInput" placeholder="动态验证码" value=""
                                                          class="fl_pop_input_secode">
                            <div class="float_pop_secode"><img width="90" height="38"
                                                               src="data:image/jpeg;base64,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"
                                                               id="authCodeImg"></div>
                            <a class="fl_pop_btn_normal" id="popfloating_send_msg" href="javascript:;">免费获取</a><a
                                    class="fl_pop_btn_normal fl_pop_btn_disabled" href="javascript:;"
                                    title="为避免频繁发送，请稍后再试">免费获取</a></div>
                        <div class="fl_pop_phone_tip" id="popfloating_show_msg" style="display:none;"><span
                                class="fl_pop_ico_arrow"></span><i class="fl_pop_ico_alert"></i></div>
                        <div class="fl_pop_secode_tip" id="popfloating_show_msg_codetip" style="display:none;"><span
                                class="fl_pop_ico_arrow"></span><i class="fl_pop_ico_alert"></i></div>
                        <div class="fl_pop_sucess_tip" id="msg_sucess" style="display:none"><i
                                class="fl_pop_ico_sucess"></i>下载链接短信已成功发送到您的手机！
                        </div>
                    </div>
                </div>
                <div class="fl_pop_qrcode">
                    <div class="fl_pop_hint">扫描二维码下载</div>
                    <div style="position:relative;background-color:white;width:115px;height:115px;margin-top: 7px;"><img
                            src="./桂林购物攻略,桂林购物清单_指南,旅游买什么便宜_划算【携程攻略】_files/log.png"
                            style="position:absolute;left:40px;top:40px;z-index:999;width:35px;height:35px;">
                        <div id="popfloating_float_img">
                            <canvas width="103" height="103" style="display: none;"></canvas>
                            <img alt="Scan me!"
                                 src="data:image/png;base64,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"
                                 style="display: block;"></div>
                    </div>
                </div>
            </div>
            <a href="javascript:;" class="fl_wrap_close" title="关闭" id="appd_wrap_close">×</a></div>
    </div>
    <div id="fl_pop_box_default"></div>
    <div id="appd_wrap_icon_arrow_down"></div>
</div>
</body>
</html>