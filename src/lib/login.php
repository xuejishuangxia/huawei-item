<?php
    include('./connectdata.php');

    $usernum=$_REQUEST['usernum'];
    $password=$_REQUEST['userpass'];

    $sql = "select * from user where usenum='$usernum' and usepaw='$password'";

    $result=$mysqli->query($sql);

    if($result->num_rows>0){

        echo '{"hasReg":true,"msg":"登录成功!"}';

    }else{
        echo '{"hasReg":false,"msg":"用户名或密码错误!"}';
    }   
?>