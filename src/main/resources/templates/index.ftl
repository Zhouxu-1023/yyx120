<!doctype html>
<!--[if lt IE 7]>
<html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>
<html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>
<html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang=""> <!--<![endif]-->

<head>
    <meta charset="utf-8">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>盐源县人民医院信息平台</title>
    <link rel = "icon" href = "images/icon/yy.ico">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/flexslider.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" href="css/animate.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
</head>

<body>

<!-- Header Section -->
<section class="tophead" role="tophead">
    <!-- Navigation Section -->
    <header id="header">

        <div class="header-content clearfix">
            <#--      <nav class="navigation" role="navigation">-->
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <!--Brand and toggle get grouped for better mobile display-->
                    <!--响应式导航栏必须包含.collapse .navbar-collapse
                        折叠起来的导航栏实际上是由class .navbar-toggle 以及两个data-组成
                        第一个data-用于告诉JavaScript要做什么，第二个data-用于指定切换到哪一个元素,为了更具体化的显示折叠之后的展示页面
                        用了三个class属性为.icon-bar 的<span>创建了所谓的汉堡按钮(可以更改为任意喜欢样式。-->
                    <div class="navbar-header" style="background-image: inherit">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                data-target="#example-navbar-collapse"
                                aria-expanded="false">
                            <!--只用于屏幕阅读器，普通浏览器不显示，给无法看到屏幕显示的人士（比如盲人）提供方便-->
                            <span class="sr-only">Toggle Navigation</span>
                            <!--汉堡按钮-->
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <!--.navbar-brand默认是添加文字的，也可以添加图片，必须是小图片，图片太大位置就会靠下-->
                        </button>
                        <!--.navbar-brand会让文本更大一号-->
                        <#--            <img class="img-fluid" src="images/yy_logo.png">-->
                        <a class="navbar-brand" href="#">盐源县人民医院信息平台</a>
                    </div>

                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#">主页</a></li>
                        <li><a href="/tel">通讯录</a></li>
                        <li><a href="html/test.html">测试</a></li>
                        <li><a href="/bug">问题反馈</a></li>
                        <li class="dropdown">
                            <!--.aria-haspopup表示点击会出现菜单或是浮动元素 .aria-expanded表示展开状态-->
                            <a type="button" class="dropdown-toggle" href="#" data-toggle="dropdown"
                               aria-haspopup="true" aria-expanded="false">
                                更多
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="#portfolio">办公服务</a></li>
                                <#--                  <li><a href="#">便捷查询</a></li>-->
                                <#--                  <li><a href="#">更多功能</a></li>-->
                                <!--分隔符-->
                                <li class="divider" role="separator"></li>
                                <li><a href="#">便捷查询</a></li>
                                <li class="divider" role="separator"></li>
                                <li><a href="/login">管理员界面</a></li>
                                <li class="divider" role="separator"></li>
                                <li><a href="#">更多功能</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
        </div>
        </nav>


        <#--      <nav class="navbar navbar-expand-md bg-dark navbar-dark">-->
        <#--        <div class="item" style="font-size: x-large"><img src="images/logo.png" style="width:100%;height:auto;">盐源县人民医院内网信息平台</div>-->
        <#--        <a class="navbar-brand" href="#">盐源县人民医院内网信息平台</a>-->
        <#--        <ul class="primary-nav">-->
        <#--          <li><a href="#header-slider">主页</a></li>-->
        <#--          <li><a href="#services">服务</a></li>-->
        <#--          <li><a href="#portfolio">更多</a></li>-->
        <#--          <li><a href="/login">维护</a></li>-->
        <#--        </ul>-->
        <#--      </nav>-->
        <a href="#" class="nav-toggle">Menu<span></span></a> </div>
    </header>
    <!-- Navigation Section -->
</section>
<!-- Header Section -->
<!-- Slider Section -->
<section id="header-slider" class="section new_slider">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
            <li data-target="#myCarousel" data-slide-to="4"></li>
        </ol>
        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active"><img src="images/portfolio/自信01.jpg" alt="Chania" style="width:100%;height:180px;">
            </div>
            <div class="item"><img src="images/portfolio/日拱一卒01.jpg" alt="毒鸡汤-自信" style="width:100%;height:auto;"></div>
            <div class="item"><img src="images/portfolio/脆弱意志01.png" alt="毒鸡汤" style="width:100%;height:auto;"></div>
            <div class="item"><img src="images/portfolio/logo.png" alt="毒鸡汤" style="width:100%;height:auto;"></div>
            <div class="item"><img src="images/portfolio/yyxrmyy01.jpg" alt="医院背景" style="width:100%;height:auto;"></div>
        </div>
        <!-- Controls -->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"> <span
                    class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span
                    class="sr-only">Previous</span></a> <a class="right carousel-control" href="#myCarousel"
                                                           role="button" data-slide="next"> <span
                    class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> <span
                    class="sr-only">Next</span></a></div>
</section>
<!-- Slider Section -->

<!-- Service Section -->
<section id="services" class="section services">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 col-sm-6">
                <div id="titleBrief" style="white-space: pre;word-wrap:break-word" class="services-content">
                    <#--简介-->
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div id="trademark" class="services-content">
                    <#--品牌标签-->
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div id="marketing" class="services-content">
                    <#--媒体标签-->
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div id="marketing" class="services-content">
                    <#--媒体标签-->
                </div>
            </div>
        </div>
    </div>
</section>


<!-- portfolio grid section -->
<section id="portfolio" class="section portfolio">
    <div class="container-fluid">
        <div id="article" class="row">
            <#--文章-->
        </div>
    </div>
</section>
<!-- portfolio grid section -->

<!-- footer section -->
<footer id="contact" class="footer">
    <div class="container-fluid">
        <div id="address" class="col-md-2 left">
            <#--办公地址-->
        </div>
        <div id="phoneemail" class="col-md-2 left">
            <#--联系方式-->

        </div>
        <div id="qqwx" class="col-md-2 left">
            <#--社交通讯-->

        </div>
        <div id="ownership" class="col-md-2 left">
            <#--版权信息-->

        </div>
    </div>
</footer>
<!-- footer section -->

<!-- JS FILES -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.flexslider-min.js"></script>
<script src="js/retina.min.js"></script>
<script src="js/modernizr.js"></script>
<script src="js/main.js"></script>
<script src="/layui/layui.js" charset="utf-8"></script>
<script src="/js/index.js"></script>
</body>
</html>