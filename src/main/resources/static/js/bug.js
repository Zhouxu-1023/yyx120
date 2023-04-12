layui.use(['form','layer','jquery','laypage', 'layedit'],function(){
    var form = layui.form,
        layer = parent.layer === undefined ? layui.layer : parent.layer,
        $ = layui.jquery;

    //监听提交
    form.on('submit(addPresentation)', function(data){
        var presentation = JSON.stringify(data.field);

        layer.confirm('确定提交?', {icon: 3, title:'提交'}, function(index){
            layer.close(index);
            var load = layer.load(1);
            $.ajax({
                type:"post",
                url:"/presentation/save",
                data:presentation,
                async : false,
                dataType : "json",
                contentType: "application/json",
                success:function(result){
                    if(result.code == 0){
                        layer.close(index);
                        layer.close(load);
                        layer.msg("执行成功", {icon: 6});
                    }else{
                        layer.close(index);
                        layer.close(load);
                        layer.msg(data.msg, {icon: 4});
                    }

                    setTimeout(function(){
                        parent.layer.close(index);
                        window.parent.location.reload();
                    },3000);
                }
            });
        });

        return false;
    });
});