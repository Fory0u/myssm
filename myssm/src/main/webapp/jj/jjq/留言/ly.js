$(function () {

    //从缓存中获取数据并渲染
    let msgBoxList =  [];
    innerHTMl(msgBoxList)

    //点击小图片，显示表情
    $(".bq").click(function (e) {
        $(".face").slideDown(); //慢慢向下展开
        e.stopPropagation(); //阻止冒泡事件
    });

    //在桌面任意地方点击，关闭表情框
    $(document).click(function () {
        $(".face").slideUp(); //慢慢向上收
    });

    //点击小图标时，添加功能
    $(".face ul li").click(function () {
        let simg = $(this).find("img").clone();
        $(".message").append(simg); //将表情添加到输入框
    });

    //点击发表按扭，发表内容
    $("span.submit").click(function () {
        if($('.spAll').val() == "0"){
            alert("请选择要评论的商品!");
            return;
        }
        let txt = $(".message").html(); //获取输入框内容
        if (!txt) {
            $('.message').focus(); //自动获取焦点
            return;
        }
        let obj = {
            msg: txt
        }

        $('#lxnr').val(txt)
        $('#spid').val($('.spAll').val())
        $('#spmc').val($('.spAll option:selected').html())

        var json =  $("#lyTj").serializeObject();
        $.ajax({
            url:'addLy.do',
            dataType: 'json',
            type:"POST",
            data:json,
            contentType: "application/json;charset=UTF-8", //缺失会出现URL编码，无法转成json对象
            success:function (rs) {
                debugger
                if(rs.success == "ok"){
                    obj.msg = rs.CLxnr;
                    obj.data = rs.data;
                    obj.username = rs.username;
                    obj.spmc = rs.spmc;
                    msgBoxList.unshift(obj) //添加到数组里
                    innerHTMl([obj]) //渲染当前输入框内容
                }else{
                    alert("请先登录用户");
                    window.location.href = getHref() + "logout.do";
                }
            }
        });
        // window.localStorage.setItem('msgBoxList', JSON.stringify(msgBoxList)) //将数据保存到缓存
        $('.message').html('') // 清空输入框

    });

    // //删除当前数据
    // $("body").on('click', '.del', function () {
    //     let index = $(this).parent().parent().index();
    //     msgBoxList.splice(index, 1)
    //     window.localStorage.setItem('msgBoxList', JSON.stringify(msgBoxList)) //将数据保存到缓存
    //     $(this).parent().parent().remove()
    // })

    //渲染html
    function innerHTMl(List) {

        List = List || []
        List.forEach(item => {
            let str =
                `<div class='msgBox'>
						<div class="headUrl">
							<img src='${path}/jj/jjq/留言/tx.jpg' width='50' height='50'/>
							<div>
								<span class="title">${item.username}</span>
								<span class="time">${item.data}</span>
							</div>
							<a class="del"><span>评论商品：</span>${item.spmc}</a>
						</div>
						<div class='msgTxt'>
							${item.msg}
						</div>
					</div>`
            $(".msgCon").prepend(str);
        })
    }



})
var path = window.location.pathname.substring(0, window.location.pathname.substring(1).indexOf('/') + 1);

function getHref() {
    return window.location.protocol + '//' + window.location.host + path + '/'
}