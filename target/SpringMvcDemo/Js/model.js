/**
 * Created by Meng on 2017/3/21.
 */
$(document).ready(function () {
    /*
     *
     * 给修改设立单击事件，让modeldailog获取表单内的值
     */
    $(".alteruser").click(
        function () {

            editInfo($(this));
        });
    function editInfo(obj) {
        var id = $(obj).attr("id");
        //获取表格中的一行数据
        var userId = document.getElementById("table").rows[id].cells[0].innerText;
        var username = document.getElementById("table").rows[id].cells[1].innerText;
        var password = document.getElementById("table").rows[id].cells[2].innerText;
        var realname = document.getElementById("table").rows[id].cells[3].innerText;
        var email = document.getElementById("table").rows[id].cells[4].innerText;
        var phone = document.getElementById("table").rows[id].cells[5].innerText;
        var unit = document.getElementById("table").rows[id].cells[6].innerText;
        var address = document.getElementById("table").rows[id].cells[7].innerText;
        var grade = document.getElementById("table").rows[id].cells[8].innerText;

        $('#user_id').val(userId);
        $('#user-name').val(username);
        $('#user-password').val(password);
        $('#real-name').val(realname);
        $('#user-phone').val(phone);
        $('#user-email').val(email);
        $('#user-unit').val(unit);
        $('#user-address').val(address);
        $('#user-grade').selected(grade);

    }

    /*
     *
     * 确定删除
     */
    $(".deleteuser").click(
        function () {
            if (confirm("是否继续确定删除？")) {
                alert("删除成功！");
            }
        });

    /*
     *修改触发的事件
     *
     */

    $(".change-btn").click(function () {
        if($(this).data('event') === "toggleEditNicknameState"){
             $('.editNicknameModule').css('display','block');
             $(".viewNicknameModule").css('display','none');
        }else if ($(this).data('event') === "toggleEditRealnameState"){
            $('.editRealnameModule').css('display','block');
            $(".viewRealnameModule").css('display','none');
        }
    });
    $('.tc-15-btn').click(function () {
              $('.editNicknameModule').css('display', 'none');
             $(".viewNicknameModule").css('display', 'table-cell');
                $('.editRealnameModule').css('display','none');
                $(".viewRealnameModule").css('display','table-cell');
        if($(this).data('event') === "updateNickname"){
            var stationname = $("#lzl").val();
            $.ajax({
                type: "post",//数据发送的方式（post 或者 get）
                url: "/alterstation",//要发送的后台地址127.0.0.1
                data: {"stationname":stationname},//要发送的数据（参数）格式为{'val1':"1","val2":"2"}
                //dataType: "json",//后台处理后返回的数据格式
                scriptCharset: 'utf-8',
                success: function (data) {//ajax请求成功后触发的方法
                    alert(data);
                },
                error: function () {//ajax请求失败后触发的方法
                    alert('请求shi');//弹出错误信息
                }
            });
    };
    });
});
