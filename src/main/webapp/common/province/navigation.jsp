<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="gs-header cf">
    <div class="content">

        <div class="gs-nav">
            <ul>
                <li id="gs_nav_0">
                    <a href="${pageContext.request.contextPath}/place_list"><i class="icon_home"></i></a>
                </li>
                <li id="my_home">
                    <a href="${pageContext.request.contextPath}/place_list">我的主页</a>
                </li>
            </ul>
        </div>

        <c:choose>
            <c:when test="${sessionScope.get('user') != null}">
                <div class="gs-search-2">
                    <li class="set-list set-logIn"  style="display: block;padding-top: 10px;">
                        <a class="person-text" onclick="" style="cursor:pointer;">
                            <span class="set-text"><span class="member-name" name="nav-bar-mname">${sessionScope.get("user").getAccount()}</span>,<a>退出</a> </span>
                        </a>
                    </li>
                </div>
            </c:when>
            <c:otherwise>
                <li class="set-list set-logIn" id="nav-bar-set-login" style="display: block;padding-top: 10px;">
                    <a class="person-text" onclick="DoLogin()" style="cursor:pointer;">
                        <span class="set-text"><span class="member-name" name="nav-bar-mname">您好</span>，请登录 </span>
                    </a>
                </li>
            </c:otherwise>
        </c:choose>

    </div>
</div>