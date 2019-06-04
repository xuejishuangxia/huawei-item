var usernum = document.querySelector('.usernum');
var usersms = document.querySelector('.usersms');
var userpass = document.querySelector('.userpass');
var userpass2 = document.querySelector('.userpass2');
var result1 = document.querySelector('.result1');
var result2 = document.querySelector('.result2');
var result3 = document.querySelector('.result3');
var button = document.querySelector('.button');

var phone = /^1[3-9]\d{9}$/;
var password = /^.{6,}$/;
var checkpass = /^.{6,}$/;
var shortcode = /^\d{6}$/;


usernum.onkeyup = function () {
    if (phone.test(usernum.value)) {
        result1.innerHTML = '该用户名有效';
    } else {
        result1.innerHTML = '请输入6-18位有效字符';
    }
}
usersms.onkeyup = function () {
    if (shortcode.test(usersms.value)) {
        result2.innerHTML = '该密码有效';
    } else {
        result2.innerHTML = '请输入6-12位有效字符';
    }
}
userpass.onkeyup = function () {
    if (password.test(userpass.value)) {
        result3.innerHTML = '该密码有效';
    } else {
        result3.innerHTML = '请输入6-12位有效字符';
    }
}


$(function () {
    $('.button').on('click', function () {
        $.ajax({
            type: "post",
            url: "../lib/register.php",
            data: {
                usernum: usernum.value,
                userpass: userpass.value
            },
            dataType: "json",
            success: function (data) {
                if(data.hasReg){
                    alert(data.msg);
                    location.href="./login.html";
                }else{
                    alert(data.msg)
                }
            },
            err:function(xhr){
                console.log(xhr.status)
            }
        });
    })

})

    