<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>盐源县人民医院信息平台</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="stylesheet" href="/layui/css/layui.css"  media="all">
    <link rel="stylesheet" href="/css/script.css">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel = "icon" href = "images/icon/yy.ico">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/flexslider.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" href="css/animate.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
</head>
<body>
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

<section id="services" class="section services">
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <h3 class="text-center">信息系统问题反馈</h3>
            </div>
        </div>
    </div>

    <div class="admin-div">
        <#--FastDFS-->
        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
            <legend>文章左侧图片或视频</legend>
        </fieldset>

        <div class="layui-upload">
            <div class="layui-upload-list">
                <table class="layui-table">
                    <thead>
                    <tr><th>文件名</th>
                        <th>大小</th>
                        <th>状态</th>
                        <th>地址</th>
                        <th>操作</th>
                    </tr></thead>
                    <tbody id="fastdfsFileList"></tbody>
                </table>
            </div>
        </div><br/>

        <form class="layui-form" action="" lay-filter="example">
            <div class="layui-form-item" style="display: none">
                <div class="layui-input-block">
                    <input type="text" id="imgOptions" name="imgOptions" autocomplete="off" class="layui-input">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label" >系统名称</label>
                <div class="layui-input-block" >
                    <input  style="width: 50%" type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入需反馈系统名称" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">反馈人姓名</label>
                <div class="layui-input-block">
                    <input style="width: 50%" type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入您的姓名" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">反馈人科室</label>
                <div class="layui-input-block">
                    <input style="width: 50%" type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入您的科室" class="layui-input">
                </div>
            </div>


            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">问题描述</label>
                <div class="layui-input-block">
                    <textarea style="width: 50%" id="brief" name="content" placeholder="为了工程师能够尽快定位解决问题，请尽可能详细的描述您的问题" lay-verify="required" class="layui-textarea"></textarea>
                </div>
            </div>

            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn" lay-submit="" lay-filter="addArticle">立即提交</button>
                </div>
            </div>
        </form>
    </div>
</section>


<script src="/layui/layui.js" charset="utf-8"></script>
<script src="/js/admin.js" charset="utf-8"></script>
<script src="/js/contact.js" charset="utf-8"></script>
</body>
</html>