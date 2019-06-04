$(function () {
    $('.login-button').on('click', function () {
        $.ajax({
            type: "post",
            url: "../lib/login.php",
            data: {
                usernum: $('.l-username').val(),
                userpass: $('.l-password').val()
            },
            dataType: "json",
            success: function (data) {
                if (data.hasReg) {
                    alert(data.msg);
                    location.href="./index.html";
                }else{
                    alert(data.msg)
                }

            }
        });
    })

})