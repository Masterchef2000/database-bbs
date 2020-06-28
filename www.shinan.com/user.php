<?php
header("content-type:text/json");

$user_id=$_POST['user_id'];
//获取数据库配置
include('connect.php');

//设置数据库字符集  
mysqli_query($con,"SET NAMES UTF8");


//获取最新的数据
$result = mysqli_query($con,"SELECT * FROM i_user WHERE user_id = '$user_id'");
$results = array();
while ($row = mysqli_fetch_assoc($result)) {
$results[] = $row;
}
// 将数组转成json格式
echo json_encode($results);
// 关闭连接
mysqli_free_result($result);

mysqli_close($con);

?>