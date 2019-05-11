$(function () {

    //√ 按钮
    $('.item-box .col-check i').on('click',dx);
    //全选
    $('#J_selectAll').on('click',qx);

    //加减
    $('.J_minus').on('click', jian);
    $('.J_plus').on('click', ja);


    $('.popBox .popClose').on('click',popClose)
    $('.popBox .popBtn span').on('click',popClose)
    $('#J_goCheckout').on('click',addOrder)


    zj();


});
var zongShu = 0;
var zongShu_selected =0;
var zongJia = 0;

function dx() {
    var flag = true;
    $(this).toggleClass('icon-checkbox-selected');
    $('.item-box .col-check i').each(function () {
        if(!$(this).is('.icon-checkbox-selected')){
            flag = false;
            return;
        }
    })
    if(flag){
        $('#J_selectAll').addClass('icon-checkbox-selected')
    }else{
        $('#J_selectAll').removeClass('icon-checkbox-selected')
    }
    zj();
}
function qx() {
    $(this).toggleClass('icon-checkbox-selected');
    if($(this).is('.icon-checkbox-selected')){
        $('.item-box .col-check i').addClass('icon-checkbox-selected')
    }else{
        $('.item-box .col-check i').removeClass('icon-checkbox-selected')
    }
    zj();
}

function zj() {
    //被选中的数
    var $selectItem = $('.item-box .col-check i.icon-checkbox-selected').parent().parent();
    var spid ="";
    var spmc ="";
    var spsl ="";
    var spdj ="";
    $selectItem.each(function () {
        //总价
        zongJia += parseFloat($(this).find('.col-price').html()) * $(this).find('.J_goodsNum').val()
        //已选个数
        zongShu_selected += $(this).find('.J_goodsNum').val()*1;

        //spid
        spid = spid+$(this).find('.shopCId').val()+";";
        spmc = spmc+$(this).find('.col-name a').html()+";";
        spsl = spsl+$(this).find('.J_goodsNum').val()+";";
        spdj = spdj+parseFloat($(this).find('.col-price').html())+";";

    })
    //总数
    $('.J_goodsNum').each(function () {
        zongShu += $(this).val()*1 ;
    })
    //写入页面
    $('#J_cartTotalNum').html(zongShu);
    $('#J_selTotalNum').html(zongShu_selected);
    $('#J_cartTotalPrice').html(zongJia.toFixed(2));
    //写入表单
    $('#spzs').val(zongShu_selected);
    $('#spzj').val(zongJia.toFixed(2));
    $('#spid').val(spid)
    $('#spmc').val(spmc)
    $('#spsl').val(spsl)
    $('#spdj').val(spdj)


    zongJia = 0;
    zongShu_selected = 0;
    zongShu =0;
}


function ja() {
    var input = $(this).parent().find('input');
    var price = parseFloat($(this).parent().parent().parent().find('.col-price').html());
    var xj = $(this).parent().parent().parent().find('.col-total');
    if (input.val() * 1 >= input.attr('max') * 1) {
        return;
    } else {
        input.val(input.val() * 1 + 1 + "")
        xj.html( (price * input.val()).toFixed(2) + "元" )
    }
    zj();
}

function jian() {
    var input = $(this).parent().find('input');
    var price = parseFloat($(this).parent().parent().parent().find('.col-price').html());
    var xj = $(this).parent().parent().parent().find('.col-total');
    if (input.val() * 1 <= input.attr('min') * 1) {
        return;
    } else {
        input.val(input.val() * 1 - 1 + "")
        xj.html( (price * input.val()).toFixed(2) + "元" )
    }
    zj();
    // $(this).eq(0).parents().eq(0).remove()
}

function addOrder() {
    var json =  $("#addOrderForm").serializeObject();
    $('.loadingBox').css('display','block');
    $.ajax({
        url:'order.do?addGwcToOrder',
        dataType: 'json',
        type:"POST",
        data:json,
        contentType: "application/json;charset=UTF-8", //缺失会出现URL编码，无法转成json对象
        success:function(rs) {
            debugger;
            $('.loadingBox .loading').css('display','none');
            if(rs.success == "ok"){
                //结算成功
                $('.popBox').css('display','block');
            }else{
                alert("请先登录用户");
                window.location.href = getHref() + "logout.do";
            }

        }
    });
}




var path = window.location.pathname.substring(0, window.location.pathname.substring(1).indexOf('/') + 1);

function getHref() {
    return window.location.protocol + '//' + window.location.host + path + '/'
}


function popClose() {
    $('.popBox').css('display','none');
    $('.loadingBox').css('display','none');
    window.location.href = getHref() + "shop.do?listShopQt";
}
