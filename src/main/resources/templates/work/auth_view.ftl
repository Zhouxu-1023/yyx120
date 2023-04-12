<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>用户管理iFrame</title>
    <script src="static/js/jquery-3.4.1.min.js"></script>
    <script src="static/layui/layui.js"></script>
    <link rel="stylesheet" href="static/layui/css/layui.css">
</head>
<body>


<table class="layui-hide" id="auth-table" lay-filter="auth-table" style="height: 100%"></table>


<script>
    var layerCallback;
    layui.use(['table', 'form'], function(){
        var table = layui.table;
        var form = layui.form;
        table.render({
            elem: '#auth-table',
            url:'/auths',
            toolbar: '#toolbar',
            parseData: function (res) {
                console.log(res);
                return {
                    "code": 0,
                    "msg": "",
                    data: res.data,
                    count: res.size
                }
            }
            ,cols: [[
                <!--{type:'checkbox', fixed:'left'},-->
                {field:'id', width:60, title: '序号'},
                {field:'name', width:150, title: '科室', edit: 'text'},
                {field:'password', width:150, title: '电话', edit: 'text'},
                {fixed: 'right', width:150, align:'center', toolbar: '#barTpl'}
            ]]
        });

        var temp;
        form.on('switch(admin_switch)', function (obj) {
            temp = obj.elem.checked;
        });

        //监听工具条(右侧)
        table.on('tool(auth-table)', function(obj){ //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
            var data = obj.data; //获得当前行数据
            var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
            var tr = obj.tr; //获得当前行 tr 的DOM对象
            if(layEvent === 'del'){ //删除
                layer.confirm('删除用户' + data.username + '?', {skin: 'layui-layer-molv',offset:'c', icon:'0'},function(index){
                    obj.del(); //删除对应行（tr）的DOM结构，并更新缓存
                    layer.close(index);
                    //向服务端发送删除指令
                    $.ajax({
                        url: '/auths/' + data.id,
                        type: 'delete',
                        success: function (res) {
                            console.log(res);
                            if (res.code == 200) {
                                layer.msg('删除成功', {icon: 1, skin: 'layui-layer-molv', offset:'c'});
                            } else {
                                layer.msg('删除失败', {icon: 2, skin: 'layui-layer-molv', offset:'c'});
                            }
                        }
                    })
                });
            } else if(layEvent === 'edit'){ //编辑
                // 发送更新请求
                $.ajax({
                    url: '/auths/' + data.id,
                    method: 'put',
                    data: JSON.stringify({
                        username: data.username,
                        password: data.password,
                        empId: data.empId,
                        isAdmin: temp == null ? data.isAdmin : temp
                    }),
                    contentType: "application/json",
                    success: function (res) {
                        console.log(res);
                        if (res.code == 200) {
                            layer.msg('更新成功', {icon: 1});
                            obj.update({
                                username: data.username,
                                password: data.password,
                                empId: data.empId
                            });
                        } else {
                            layer.msg('更新失败', {icon: 2});
                        }
                    }
                });
            }
        });

        /*上方工具栏监听*/
        table.on('toolbar(auth-table)', function (obj) {
            var data = obj.data; //获得当前行数据
            var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
            var tr = obj.tr; //获得当前行 tr 的DOM对象
            switch(obj.event) {
                case 'addPost':
                    layerCallback= function(callbackData) {
                        // 执行局部刷新, 获取之前的TABLE内容, 再进行填充
                        var dataBak = [];
                        var tableBak = table.cache.auth-table;
                        for (var i = 0; i < tableBak.length; i++) {
                            dataBak.push(tableBak[i]);      //将之前的数组备份
                        }
                        dataBak.push(callbackData);
                        table.reload("auth-table",{
                            data:dataBak   // 将新数据重新载入表格
                        });
                     };
                    layer.open({
                        title: '添加用户',
                        content: 'static/html/layers/auth-insert.html',
                        type: 2,
                        offset: 'c',
                        area: ["500px", "350px"]
                    });
            }
        });
    });
</script>

</body>
</html>