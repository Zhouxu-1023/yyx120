layui.define(['jquery', 'table', 'larryms','forms','laydate','layer'], function(exports) {
    var $ = layui.$,
        table = layui.table,
        forms = layui.forms,
        laydate = layui.laydate,
        larryms = layui.larryms,
        layer = layui.layer;

    var tbWidth = $("#tableRes").width();
    var layTableId = "case";
    var mUrl = interface_jwcaseinfo_queryChoose,
        mIns = table.render({
            elem: '#case',
            id: "case",
            cellMinWidth: 95,
            url: mUrl,
            method: 'get',
            height: "full-155",
            page: true,
            limits: [5, 10, 15, 20, 25, 30, 35, 40],
            limit: 5,
            response: { //定义后端 json 格式，详细参见官方文档
                statusName: 'code', //状态字段名称
                statusCode: 200, //状态字段成功值
                msgName: 'msg', //消息字段
                countName: 'count', //总数字段
                dataName: 'data' //数据字段
            },
            cols: [
                [{
                    type: "radio",
                    width: 60,
                    fixed: 'center',
                }, {
                    field: 'CASE_NAME',
                    title: '案件名称',
                    minWidth: 160,
                    edit: 'text',
                    align: 'center'
                },{
                    field: 'UNDERTAKER_NAME',
                    title: '承办人姓名',
                    minWidth: 160,
                    edit: 'text',
                    align: 'center'
                }, {
                    field: 'CRT_TIME',
                    title: '创建时间',
                    minWidth: 160,
                    edit: 'text',
                    align: 'center'
                }]
            ]
        });
    $('#searchBtn').on('click', function() {
        var caseName = $('#caseName').val();
        if (caseName != '') {
            table.reload("case", {
                page: {
                    curr: 1
                },
                where: {
                    CASE_NAME: caseName
                }
            })
        } else {
            table.reload("case", {
                page: {
                    curr: 1
                },
                where: {
                    CASE_NAME: ''
                }
            })
        }
    });

    //按钮组监听
    $('.layui-btn').on('click', function() {
        var type = $(this).data('type'),
            url = $(this).data('url'),
            tit = $(this).children('cite').text();
        panelaction[type] ? panelaction[type].call(this) : '';
    });
    //定义事件集合
    var panelaction = {
        addRow: function(){	//添加一行
            var thisTime = getDate();
            var thisUserName = layui.sessionData("userModel").userName;
            var oldData = table.cache[layTableId];
            console.log(oldData);
            var newRow = {CASE_NAME: null,UNDERTAKER_NAME: thisUserName, CRT_TIME: thisTime};
            var currentPage = $(".layui-laypage-em").next().html();
            oldData.unshift(newRow);
            //oldData.push(newRow);
            mIns.reload({
                page: {
                    curr: 1
                },
                url: '',
                data : oldData
            });
        },
        updateRow: function(obj){
            var oldData = table.cache[layTableId];
            console.log(oldData);
            for(var i=0, row; i < oldData.length; i++){
                row = oldData[i];
                if(row.tempId == obj.tempId){
                    $.extend(oldData[i], obj);
                    return;
                }
            }
            tableIns.reload({
                data : oldData
            });
        },
        removeEmptyTableCache: function(){
            var oldData = table.cache[layTableId];
            for(var i=0, row; i < oldData.length; i++){
                row = oldData[i];
                if(!row || !row.tempId){
                    oldData.splice(i, 1);    //删除一项
                }
                continue;
            }
            tableIns.reload({
                data : oldData
            });
        },
        save: function(){
            var oldData = table.cache[layTableId];
            console.log(oldData);

            var row = '';
            for(var i=0, tempRow; i < oldData.length; i++){
                tempRow = oldData[i];
                if(tempRow.LAY_CHECKED==true){
                    row = tempRow;
                }
            }
            if(null==row||""==row){
                layer.msg("请选择一行！", { icon: 5 }); //提示
                return;
            }
            if(null==row.UNDERTAKER_NAME||null==row.CASE_NAME){
                layer.msg("检查每一行，请选择分类！", { icon: 5 }); //提示
                return;
            }
            //var resData = JSON.stringify(row, null, 2);	//使用JSON.stringify() 格式化输出JSON字符串
            saveData(row);
        },
        delRow: function(){
            var oldData = table.cache[layTableId];
            console.log(oldData);

            var row = '';
            for(var i=0, tempRow; i < oldData.length; i++){
                tempRow = oldData[i];
                if(tempRow.LAY_CHECKED==true){
                    row = tempRow;
                }
            }
            if(null==row||""==row){
                layer.msg("请选择一行！", { icon: 5 }); //提示
                return;
            }
            var resData = JSON.stringify(row, null, 2);	//使用JSON.stringify() 格式化输出JSON字符串
            delData(row);
        }
    }

    function saveData(data) {
        $.ajax({
            cache: true,
            type: "POST",
            dataType: 'json',
            contentType : 'application/json;charset=utf-8',//缺少这个415
            url:interface_jwCaseInfo_saveData,
            data:JSON.stringify(data),
            async: false,
            error: function(request) {
                larryms.msg("新增出错！");
            },
            success: function(data) {
                var dsall = data.data;
                window.location.reload();
                larryms.msg("新增成功！");
            }
        });
    }

    function delData(data) {
        $.ajax({
            cache: true,
            type: "DELETE",
            dataType: 'json',
            contentType : 'application/json;charset=utf-8',//缺少这个415
            url:interface_jwCaseInfo_delData,
            data:JSON.stringify(data),
            async: false,
            error: function(request) {
                larryms.msg("删除出错！");
            },
            success: function(data) {
                mIns.reload();
                larryms.msg("删除成功！");
            }
        });
    }

    function getDate() {
        var oDate = new Date(); //实例一个时间对象；
        var year = oDate.getFullYear();   //获取系统的年；
        var month = oDate.getMonth()+1;   //获取系统月份，由于月份是从0开始计算，所以要加1
        var date = oDate.getDate(); // 获取系统日，
        var hour = oDate.getHours(); //获取系统时，
        var min = oDate.getMinutes(); //分
        var sec = oDate.getSeconds(); //秒
        return year+"-"+month+"-"+date+" "+hour+":"+min+":"+sec;
    }
    exports('viewjwhistorychoose', {});
});