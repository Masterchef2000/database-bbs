<?php

    $server="localhost";
    $db_username="main";
    $db_password="8396qq";

    $con = mysqli_connect($server,$db_username,$db_password);
    if(!$con){
        die("can't connect".mysql_error());
    }
    mysqli_select_db($con,'bbs');
?>