<?php
header("Content-type:text/html;charset=utf-8");
include('connect.php');
mysqli_query($con,"set names utf8");
mysqli_query($con,"UPDATE reply_message SET thumb = thumb+1");
$result = mysqli_query($con,"SELECT * FROM reply_message");
if(isset($_GET['name'])){
while($row = mysqli_fetch_array($result))
  {
  echo $row['thumb'];
  }
}else{
	echo "赞成功！";
	echo  "
	<script>
			setTimeout(function(){window.location.href='javascript:history.back();';},0.01);
	</script>";
}
mysqli_close($con);
?>