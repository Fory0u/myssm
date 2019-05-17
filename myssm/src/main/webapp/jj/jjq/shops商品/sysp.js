(function () {
    $(function () {
        var $spfl = $('#spfl');
        var $spjgMin = $('#spjgmin');
        var $spjgMax = $('#spjgmax');
        var $spslMin = $('#spslmin');
        var $spslMax = $('#spslmax');

        var $shopLxMain = $('#shopLxMain');
        // var $shopLxMain = $('.shopListMain');
        var $clearTj = $('#clearTj');

        $clearTj.on('click',function () {
            $("#shopTj")[0].reset();
            $('.tCon a.active').removeClass('active');
            searchByTj();
        });
        //商品分类
        $('.spfl').on('click',function () {
            $spfl.val($(this).find('span').data('info'));
            $(this).addClass('active').siblings().removeClass('active')
            searchByTj();
        });
        //商品价格
        $('.spjg').on('click',function () {

            $spjgMin.val($(this).find('span').data('minjg'))
            $spjgMax.val($(this).find('span').data('maxjg'))
            $(this).addClass('active').siblings().removeClass('active')
            searchByTj();
        });
        //商品数量
        $('.spsl').on('click',function () {
            $spslMin.val($(this).find('span').data('minsl'))
            $spslMax.val($(this).find('span').data('maxsl'))
            $(this).addClass('active').siblings().removeClass('active')
            searchByTj();
        });
        //请求后台条件方法
        function searchByTj() {

            var json =  $("#shopTj").serializeObject();
            $.ajax({
                url:'shop.do?searchByTj',
                dataType: 'json',
                type:"POST",
                data:json,
                contentType: "application/json;charset=UTF-8", //缺失会出现URL编码，无法转成json对象
                success:function(rs){
                    debugger;
                    $shopLxMain.html('');
                    var arrRs = rs.listSplx;
                    var s = "";
                    var shopList = [];
                    var imgsrc ;
                    for (var i = 0;i<arrRs.length;i++){
                        imgsrc = path+"/jj/jjq/shops商品/images/main/home/nav-left.jpg";
                        s = "<h3 class=\"h3-title\">"+arrRs[i].c_lxmc+"</h3>\n" +
                            "            <div class=\"hm-el-main clearfix\">\n" +
                            "                <div class=\"hm-el-ma-lf f-lf\">\n" +
                            "                    <img src=\""+imgsrc+"\">" +
                            "                </div>\n" +
                            "                <div class=\"hm-el-ma-rgt f-lf\">\n" +
                            "                    <ul class=\"hm-el-ma-rgt-top clearfix shopListMain\" >\n" +
                            "\n" +
                            "                    </ul>\n" +
                            "                </div>\n" +
                            "            </div>";
                        $shopLxMain.append(s);
                        shopList.push(arrRs[i].listSp);
                    }
                    var className= "";

                    for (var j = 0;j<shopList.length;j++){
                        for (var k = 0;k<shopList[j].length;k++) {
                            className=k%4?"li-m-rgt":"";
                            imgsrc = path+"/upload/"+shopList[j][k].c_photo;
                            s = "<li  class=\"+className+\"   onclick=\"toSpxqym(this)\"  " +
                                "data-spid='"+shopList[j][k].c_id+"' >" +
                                "                                <a href=\"#\">\n" +
                                "                                    <img src=\""+imgsrc+"\">" +
                                "                                </a>\n" +
                                "                                <p class=\"title\">\n" +
                                "                                    <a href=\"#\">"+shopList[j][k].c_spmc+"</a>\n" +
                                "                                </p>\n" +
                                "                                <p class=\"info\">"+shopList[j][k].c_spms+"</p>" +
                                "                                <p class=\"price\">"+shopList[j][k].f_spjg+"</p>\n" +
                                "                                <div class=\"more\">\n" +
                                "                                    <a href=\"#\">\n" +
                                "                                        <span class=\"review\">优雅的我烧一壶优雅的水，再泡一壶优雅的茶与客服妹子共享</span>\n" +
                                "                                    </a>\n" +
                                "                                    <a href=\"#\">\n" +
                                "                                        <span class=\"author\"> 来自于 胡尔卿 的评价 </span>\n" +
                                "                                    </a>\n" +
                                "                                </div>\n" +
                                "                            </li>";
                            $('.shopListMain').eq(j).append(s);
                        }
                    }
                }
            });


        }



    })

})();

var path  = window.location.pathname.substring(0, window.location.pathname.substring(1).indexOf('/')+1);

function getHref(){
    return  window.location.protocol + '//' + window.location.host +   path +'/'
}

//跳转商品详情页面
function toSpxqym(e) {

    window.location.href = getHref()+'shop.do?toSpxqym&cid='+$(e).data('spid');
    // console.log(getHref() + 'shop.do?toSpxqym&cid=' + $(e).data('spid'));
    // console.log(e);
}
