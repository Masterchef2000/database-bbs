<?php
header("content-type:text/json");

$user_searchval=$_POST['searchval'];


//获取数据库配置
include('connect.php');

//设置数据库字符集  
mysqli_query($con,"SET NAMES UTF8");
//更新每个帖子的回复数
mysqli_query($con,
"UPDATE post,
(SELECT post_id,count(reply_message.rm_id) num
FROM post
LEFT JOIN reply_message ON post.post_id = reply_message.rp_id 
GROUP BY post.post_id) a
SET post.heat = a.num
WHERE post.post_id = a.post_id");
//获取最新的数据
$result = mysqli_query($con,"SELECT * FROM post WHERE content LIKE '%$user_searchval%' OR title LIKE '%$user_searchval%' ");
if($result){
$results = array();
while ($row = mysqli_fetch_assoc($result)) {
$results[] = $row;
}
// 将数组转成json格式
echo json_encode($results);
// 关闭连接
mysqli_free_result($result);
}else{
	echo "";
}



mysqli_close($con);

?>