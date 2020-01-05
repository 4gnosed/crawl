[TOC]



---



## crawl 是一个基于WebMagic爬取携程网上广西省内景点、购物、美食板块数据并进行展示的SSM项目

------



- 基于WebMagic，通过单元测试对各个模块的数据进行爬取，通过分析携程网上的页面链接结构，进行部分页面数据的舍弃，通过WebMagic层次地进行采集，比如首先爬取所有城市，再爬取通过url进入一个城市采集景点列表数据等，对于景点详情数据中评论这部分数据的爬取遇到一定困难，因为其为跨域的异步请求动态加载的，需要模仿其请求步骤，关于爬取数据的详细说明请见代码注释。
- 本项目采用jsp展示数据，其中大量使用了jstl和JQuery进行页面的渲染，翻页等动态组件也是使用JQuery进行加载。
- 补充说明：SSM+MySql+JSP+WebMagic+MAVEN+JDK8,数据库名称为zti，脚本在webapp的sqlScript文件夹下，爬取日志在log文件夹下，由于图片数目有4K+张，为上传到这里，但是各个模块各个实体的图片的保存路径的文件夹是通过唯一标识命名的。看下图img下是以城市的唯一标识命名的文件下，一个城市如北海下根据模块划分为美食、商品、餐馆、商店、景点的文件下，每一个模块的文件下又根据实体的唯一标识命名文件夹，文件夹下才是图片，同时这些唯一标识是以页面的URL中的标识定义的。

<img src="C:\Users\gnosed\AppData\Roaming\Typora\typora-user-images\1578229927751.png" width="300px">

-----



### 景点模块（首页）

​		首页是展示爬取的广西省内所有城市，每个城市伴随5个较闻名的景点，翻页非异步请求。



<img src="D:\Download\localhost_8080_crawl_.png" width="800px">



​		点击一个城市，进入这个城市页面，首先展示这个城市的景点列表（翻页非异步请求），可以通过导航进入美食、购物模块。

<img src="D:\Download\localhost_8080_crawl_getSights_page=1&placeurlid=guilin28.png" width="800px">



​		可点击景点进入景点详情页，展示景点基本的信息，页面下半部分是景点评论，翻页为异步请求。

<img src="D:\Download\localhost_8080_crawl_getSight_sighturlid=22079.png" width="800px">

### 美食模块

​		如果在首页进入美食模块，会展示广西内所有的美食列表，如果是上面提到的从某一个城市进入的美食模块，那么展示的是这个城市的美食列表。

<img src="D:\Download\localhost_8080_crawl_getFoods.png" width="800px">

​		选择进入一个美食，展示美食信息和美食对应的餐馆。

<img src="D:\Download\localhost_8080_crawl_getFood_foodurlid=17485-p1.png" width="800px">

### 购物模块

​		购物模块的功能流程和美食模块一样。特色商品列表，

<img src="D:\Download\localhost_8080_crawl_getGoods.png" width="800px">

​		进入商品详情页，还有可以点击我的主页，可回到首页，即广西省城市列表。

<img src="D:\Download\localhost_8080_crawl_getGood_goodurlid=368591.png" width="800px">

