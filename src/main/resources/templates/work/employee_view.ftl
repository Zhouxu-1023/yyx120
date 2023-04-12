<!-- 员工管理-->
<!DOCTYPE html>
<html lang="en">
<head>
    <script src="/static/jquery-3.2.1/jquery-3.2.1.min.js"></script>
    <script src="/static/layui/layui.js"></script>
    <link rel="stylesheet" href="/static/layui/css/layui.css">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>测试 - layui</title>
    <link rel="stylesheet" href="layui/css/layui.css">
    <link rel="stylesheet" href="css/animate.min.css" />

    <script src="https://www.jq22.com/jquery/jquery-1.10.2.js"></script>

    <link rel="stylesheet" href="syalert/syalert.min.css" />

    <script src="syalert/syalert.min.js"></script>

    <style type="text/css">
        *{ margin:0px; padding:0px; box-sizing:border-box; }
        *:focus{ outline:none;}
        .tsm{ background:#333; font-size:13px; color:#fff; margin:20px; margin-top:0px; padding:12px; line-height:25px;}
        .tsm .p2{ margin-top:12px;}
        .btns{ padding:20px;}
        .btns div{ display:block; text-align:center; cursor:pointer; padding:10px; border-radius:5px; background:#0CC; color:#fff; margin-bottom:12px; width:100%;}
    </style>
</head>
<body>

<div class="btns">
    <div onClick="syalert.syopen('alert4')">模态弹窗</div>
</div>

<!-- 自定义弹窗 -->
<div style="width: 60%" class="sy-alert sy-alert-model animated" sy-enter="zoomIn" sy-leave="zoomOut" sy-type="confirm" sy-mask="true" id="alert4">
    <form class="layui-form" action="" lay-filter="example" class="sy-alert animated" sy-enter="zoomIn" sy-leave="zoomOut" sy-type="confirm" sy-mask="true" id="alert1">
        <div class="layui-form-item" style="display: none">
            <div class="layui-input-block">
                <input type="text" id="imgOptions" name="imgOptions" autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label style="width: 20%" class="layui-form-label" >系统名称</label>
            <div style="width: 50%" class="layui-input-block" >
                <input   type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入需反馈系统名称" class="layui-input">
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

<div class="tsm">
    <p>syalert.js 使用插件请参考index.html 里面的例子，插件依赖jquery,animate.css</p>
    <p class="p2">html 不会自动创建，请将上面弹窗HTML结构搬到自己网页</p>
    <p class="p2">具体使用方法：
    <p>打开弹窗 syalert.syopen(id)</p>
    <p>关闭弹窗 syalert.syhide(id)</p>
    <p>其中id为弹窗自定义的ID</p>
    <p class="p2">关于动画请直接在html上定义<p>
    <p>进入动画定义：sy-enter="zoomIn"</p>
    <p>离开动画 sy-leave="zoomOut"<p>
    <p>其中 zoomIn和zoomOut是 animate.css里面的动画名称。可以将动画名称更改为animate.css里面的动画名称，动画就变了哦。 </p>
</div>

<script>
    function ok(id){
        syalert.syhide(id);
    }
</script>

</body>
</html>