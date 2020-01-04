<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/place_list">地方列表</a>
<br/>
<a href="${pageContext.request.contextPath}/getSights?page=1&placeurlid=nanning166">景点列表</a>
<br/>
<a href="${pageContext.request.contextPath}/getSight?sighturlid=2888">景点详情</a>
<br/>
<a href="${pageContext.request.contextPath}/getFoods?placeurlid=nanning166">美食列表</a>
<br/>
<a href="${pageContext.request.contextPath}/getFood?foodurlid=42942-p1">美食详情</a>
<br/>
<a href="${pageContext.request.contextPath}/getGoods?placeurlid=nanning166">商品列表</a>
<br/>
<a href="${pageContext.request.contextPath}/getGood?goodurlid=368591">商品详情</a>
</body>
</html>
