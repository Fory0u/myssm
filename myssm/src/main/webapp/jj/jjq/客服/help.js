$(function () {

    //发送
    $('.J_SendMessageButton').click(function () {
        var question = $('.J_Field').val();
        if(question == "" || question == undefined ||question ==null){
            alert("请输入内容~");
            return;
        }
        var time = new Date().getHours()+":"+new Date().getMinutes();
        var questionStr = `<div class="m-history-item-2">
                                <div class="T_system m-chatpanel-item m-chatpanel-item-center  m-chatpanel-system ">
                                    <div class="chat clearfix">
                                        <div class="J_Body body">
                                            <div class="J_Content content">
                                                今天 ${time}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="T_consumer m-chatpanel-item m-chatpanel-item-right  m-chatpanel-consumer " >
                                    <div class="chat clearfix">
                                        <div class="J_Body body">
                                            <div class="J_Content content">
                                                ${question}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>`;

        $('.m-history').append(questionStr);

        var json = JSON.stringify({
            'question':question
        })

        $.ajax({
            url: getHref()+'findQuestion.do',
            dataType: 'json',
            type:"POST",
            data:json,
            contentType: "application/json;charset=UTF-8", //缺失会出现URL编码，无法转成json对象
            success:function (rs) {
                //回复主体
                var kefuStr = `<div class="m-history-item-1">
                        <div class="T_recommend m-chatpanel-item m-chatpanel-item-left m-chatpanel-recommend ">
                            <div class="chat clearfix">
                                <div class="J_Body body  text-body">
                                    <div class="J_Content content">
                                        <ul>`;
                    //
                if(rs.chartList){
                    for (var i=0;i<rs.chartList.length;i++){
                        kefuStr += `<li class="J_Recommend">
                                    <a href="#">${rs.chartList[i].cfhxx}</a>
                                </li>`;
                    }
                }else{
                    kefuStr += `<li class="J_Recommend">
                                    <a href="#">${rs.message}</a>
                                </li>`;
                }
                kefuStr +=`</ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>`;
                $('.J_Field').val("")
                $('.m-history').append(kefuStr);
            }
        })


    })


    $('.J_Field').keydown(function(event){
        if(event.keyCode==13){//是回车
            $('.J_SendMessageButton').click();
            event.preventDefault();
        }else{
            if($(this).val() !=""){
                $('.J_InputBtn').addClass('active');
            }else{
                $('.J_InputBtn').removeClass('active');
            }
        }
    });
});


var path = window.location.pathname.substring(0, window.location.pathname.substring(1).indexOf('/') + 1);

function getHref() {
    return window.location.protocol + '//' + window.location.host + path + '/'
}


