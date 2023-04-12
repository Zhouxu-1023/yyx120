<!-- 员工管理-->
<!DOCTYPE html>
<html lang="en">
<head>
    <script src="static/js/jquery-3.4.1.min.js"></script>
    <script src="static/layui/layui.js"></script>
    <link rel="stylesheet" href="static/layui/css/layui.css">
</head>
<body>
<script src="js/test.js"></script>
<![endif]-->
<section class="layui-col-md12" style="margin: 0 auto; float: none;">
    <div class="layui-row larryms-panel">
        <div class="larryms-panel-body layui-col-lg12 layui-col-md12 layui-col-sm12 layui-col-xs12" style="height:374px; ">
            <form class="layui-inline fr layui-hide-xs" style="float: left;">
                <div class="larryms-search-box">
                    <div class="layui-input-inline">
                        <input type="text" name="caseName" id="caseName"  class="layui-input searchVal layui-inline" placeholder="案件名称" onkeypress="if(event.keyCode==13) {searchBtn.click();return false;}" autocomplete="off">
                    </div>
                    <a class="layui-btn larryms-search" id="searchBtn" data-type="reload">搜索</a>
                </div>
            </form>
            <div class="layui-inline" style="float: right">
                <button type="button" class="layui-btn" data-type="addRow" title="添加一行">
                    <i class="layui-icon layui-icon-add-1"></i> 添加一行
                </button>
                <button type="button" name="btnSave" class="layui-btn layui-btn-normal" data-type="save"><i class="layui-icon layui-icon-ok-circle"></i>保存</button>
                <button type="reset" name="btnReset" class="layui-btn layui-btn-danger" data-type="delRow"><i class="larry-icon larry-cha"></i>删除</button>
            </div>
            <div id="tableRes" class="user-list layui-col-lg12 layui-col-md12 layui-col-sm12 layui-col-xs12" style="height: 294px;">
                <table class="larryms-table-id" id="case" lay-filter="company" data-url="/larryms/data/dataquery/viewjwhistorychoose.json"></table>
            </div>
        </div>
    </div>
</section>

<!-- 加载js文件-->
<script type="text/javascript" src="/larryms/layui/layui.js"></script>
<script type="text/javascript" src="/larryms/plus/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="/larryms/mods/dataquery/constant.js"></script>
<script type="text/javascript">
    layui.cache.page = 'viewjwhistorychoose';
    layui.config({
        version:"2.0.8",
        base:'/larryms/',  //实际使用时，建议改成绝对路径
        //entry:'test/', //自定义项目js入口，CDN资源引用或自定义js存放路径请设置该值，如默认请不要设置该参数
        mods:'dataquery/',
        rightMenu: false // false关闭，设置为custom时使用自定义，不使用默认menu
    }).extend({
        larry:'js/base'
    }).use('larry');
</script>
</body>
</html>