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

    <link rel="stylesheet" href="layui/css/layui.css">
    <link rel="stylesheet" href="css/animate.min.css" />
    <script src="js/jquery-1.10.2.js"></script>
    <link rel="stylesheet" href="syalert/syalert.min.css" />
    <script src="syalert/syalert.min.js"></script>
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
                        <li><a href="/test">测试</a></li>
                        <li><a onClick="syalert.syopen('alert4')">问题反馈</a></li>
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
        </div>
    </header>
    <!-- Navigation Section -->
</section>


<!-- 自定义弹窗 -->
<div style="width: 60%" class="sy-alert sy-alert-model animated" sy-enter="zoomIn" sy-leave="zoomOut" sy-type="confirm" sy-mask="true" id="alert4">
    <form class="layui-form" action="" lay-filter="example" class="sy-alert animated" sy-enter="zoomIn" sy-leave="zoomOut" sy-type="confirm" sy-mask="true" id="alert1">

        <div class="layui-form-item">
            <label style="width: 30%" class="layui-form-label" > </label>
        </div>
        <div class="layui-form-item">
            <label style="width: 30%" class="layui-form-label" >系统名称</label>
            <div   class="layui-input-block" >
                <input style="width: 50%"   type="text" name="sysName" lay-verify="title" autocomplete="off" placeholder="请输入需反馈系统名称" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label style="width: 30%" class="layui-form-label">反馈人姓名</label>
            <div  class="layui-input-block">
                <input style="width: 50%" type="text" name="name" lay-verify="title" autocomplete="off" placeholder="请输入您的姓名" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label style="width: 30%" class="layui-form-label">反馈人科室</label>
            <div  class="layui-input-block">
                <input style="width: 50%" type="text" name="office" lay-verify="title" autocomplete="off" placeholder="请输入您的科室" class="layui-input">
            </div>
        </div>


        <div class="layui-form-item layui-form-text">
            <label style="width: 30%" class="layui-form-label">问题描述</label>
            <div  class="layui-input-block">
                <textarea style="width: 50%" id="brief" name="detail" placeholder="为了工程师能够尽快定位解决问题，请尽可能详细的描述您的问题" lay-verify="required" class="layui-textarea"></textarea>
            </div>
        </div>

        <div class="layui-form-item">
            <div style="margin-left: 30%; width: 30%" class="layui-input-block">
                <button class="layui-btn" lay-submit="" lay-filter="addBug">立即提交</button>
                <button class="layui-btn layui-btn-danger" onClick="syalert.syhide('alert4')">取消</button>
            </div>
        </div>
    </form>
</div>



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
<script>
    function ok(id){
        console.log("这是干什么")
        syalert.syhide(id);
    }
</script>
<script type="text/javascript">

    $(function () {
        layui.use('form', function(){
            var form = layui.form;
            //监听提交
            form.on('submit(addBug)', function(data){
                var article = JSON.stringify(data.field);
                console.log(article)
                layer.confirm('确定提交?', {icon: 3, title:'提交'}, function(index){
                    layer.close(index);
                    var load = layer.load(1);
                    $.ajax({
                        type:"post",
                        url:"/bug/submit",
                        data:article,
                        async : false,
                        dataType : "json",
                        contentType: "application/json",
                        success:function(result){
                            if(result.code == 0){
                                layer.close(index);
                                layer.close(load);
                                syalert.syhide('alert4')
                                layer.msg("提交成功，感谢您提出的宝贵意见，我们将尽快核实处理！", {icon: 6});
                            }else{
                                layer.close(index);
                                layer.close(load);
                                layer.msg(data.msg, {icon: 4});
                            }

                            setTimeout(function(){
                                parent.layer.close(index);
                            },3000);
                        }
                    });
                });
                return false;
            });
        });
    })
</script>


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