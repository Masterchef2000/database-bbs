<?php
header("content-type:text/json");

//获取数据库配置
include('connect.php');
//设置数据库字符集  
mysqli_query($con,"SET NAMES UTF8");

$postid=$_POST['post_id'];

mysqli_query($con,
"UPDATE post SET pstatus = '1' WHERE post_id = '$postid'");




mysqli_close($con);

?>