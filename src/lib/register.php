<?php
    include('./connectdata.php');

    $usenum=$_POST['usernum'];
    $usepaw1=$_POST['userpass'];

    $sql="select * from user where usenum='$usenum'";
    $result = $mysqli->query($sql);
    if($result->num_rows>0){
        echo '{"hasReg":false,"msg":"用户已存在!"}';
    }


    $insetSql="insert into user(usenum,usepaw)values('$usenum','$usepaw1')";

    $res=$mysqli->query($insetSql);

    if($res){
        echo '{"hasReg":true,"msg":"注册成功!"}';
    }
    $mysqli->close();
?>