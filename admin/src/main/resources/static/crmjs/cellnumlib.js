layui.use(['element', 'jquery', 'table', 'upload', 'laydate'], function () {
    var $ = layer.jquery;
    var upload = layui.upload;
    var laydate = layui.laydate;
    laydate.render({elem: '#dateTime1',type: 'datetime' });
    laydate.render({elem: '#dateTime2',type: 'datetime' });
    laydate.render({elem: '#dateTime3',type: 'datetime' });

    var uploadInst = upload.render({
        exts:'xls|xlsx'
        ,accept: 'file'
        ,elem: '#upload' //绑定元素
        ,url: '/calledallot/calledAllot/upload' //上传接口
        ,done: function(res){
            console.info(res);
            if(res.code==-1){
                layer.msg(res.msg);
            }
        }
        ,error: function(){
            layer.msg("文件上传失败");
        }
    });
})
function downloadtemplate() {
    layer.msg("开始下载模板")
    window.location.href="/calledallot/calledAllot/downloadtemplate";
}
