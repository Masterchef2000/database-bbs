<?php

header("Content-Type: text/html; charset=utf8");	
$postid=$_POST['post_id'];
include('connect.php');
//设置数据库字符集  
mysqli_query($con,"SET NAMES UTF8");
//查询数据库
mysqli_select_db($con,$db);
//获取最新的10条数据
$result = mysqli_query($con,"SELECT * FROM post,i_user WHERE post_id = '$postid' AND i_user.user_id = post.hostid ORDER BY  ptime DESC");

$results = array();
while ($row = mysqli_fetch_assoc($result)) {
	$results[] = $row;
}

// 将数组转成json格式
echo json_encode($results);
// 关闭连接
mysqli_free_result($result);


mysqli_close($con);

/*
header("content-type:text/json");
//获取数据库配置
include('connect.php');
//设置数据库字符集  
mysqli_query($con,"SET NAMES UTF8");
//查询数据库
mysqli_select_db($con,$db);
//获取最新的10条数据
$result = mysqli_query($con,"SELECT * FROM post ORDER BY  ptime DESC");
$results = array();
while ($row = mysqli_fetch_assoc($result)) {
$results[] = $row;
}
// 将数组转成json格式
echo json_encode($results);
// 关闭连接
mysqli_free_result($result);
mysqli_close($con);
*/
?>