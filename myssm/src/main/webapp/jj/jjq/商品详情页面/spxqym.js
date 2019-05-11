$(function () {
    //选择不同的类型颜色
    $('.list-wrap .step-list li').on('click', function () {
        $(this).addClass('active').siblings().removeClass('active');
    })

    //加入购物车按钮
    $('#addGwc').on('click', addShopToGwc)

    $('.J_minus').on('click', jian);
    $('.J_plus').on('click', ja);
    $('.popBox .popClose').on('click',popClose)
    $('.popBox .popBtn span').on('click',popClose)
    zj();
})

var path = window.location.pathname.substring(0, window.location.pathname.substring(1).indexOf('/') + 1);

function getHref() {
    return window.location.protocol + '//' + window.location.host + path + '/'
}

function ja() {
    var input = $('.J_changeGoodsNum input');
    if (input.val() * 1 >= input.attr('max') * 1) {
        return;
    } else {
        input.val(input.val() * 1 + 1 + "")
    }
    zj();
}

function jian() {
    var input = $('.J_changeGoodsNum input');
    if (input.val() * 1 <= input.attr('min') * 1) {
        return;
    } else {
        input.val(input.val() * 1 - 1 + "")
    }
    zj();
    // $(this).eq(0).parents().eq(0).remove()
}

function zj() {
    var zj = parseFloat($('.price').html()) * $('.J_changeGoodsNum input').val();
    $('#zj').html(zj.toFixed(2))
    $('#spsl_this').val($('.J_changeGoodsNum input').val());
}

function addShopToGwc() {
    // var shopcartid = $('#shopcartid');
    // if(shopcartid.val() != ""){
    // }else{//此次session第一次购物
    // }

    $('#spid').val( ($('#spid').val()!="" ? $('#spid').val()+";" :"" )+ $('#spid_this').val()+";")
    $('#spmc').val( ($('#spmc').val()!="" ? $('#spmc').val()+";" :"" )+ $('#spmc_this').val()+";")
    $('#spdj').val( ($('#spdj').val()!="" ? $('#spdj').val()+";" :"" )+ $('#spdj_this').val()+";")
    $('#spsl').val( ($('#spsl').val()!="" ? $('#spsl').val()+";" :"" )+ $('#spsl_this').val()+";")

    var json =  $("#addGwcForm").serializeObject();
    $('.loadingBox').css('display','block');
    $.ajax({
        url:'shopcart.do?addGwc',
        dataType: 'json',
        type:"POST",
        data:json,
        contentType: "application/json;charset=UTF-8", //缺失会出现URL编码，无法转成json对象
        success:function(rs) {
            debugger;
            $('.loadingBox .loading').css('display','none');
            if(rs.success == "ok"){
                $('.popBox').css('display','block');
                $('#shopHref').attr('href',getHref()+'shopcart.do?findShopCartByCId&cid='+rs.shopcarid);
                // window.location.href =window.location.href;
            }else{
                alert("请先登录用户");
                window.location.href = getHref() + "logout.do";
            }

        }
    });
}

function popClose() {
    $('.popBox').css('display','none');
    $('.loadingBox').css('display','none');
}
