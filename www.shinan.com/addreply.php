<?php 
header("Content-Type: text/html; charset=utf8");

    if(!isset($_POST['submit'])){
        exit("错误执行");
    }
	
	$replyid=uniqid();
	$postid=$_POST['post_id'];
	$uid = $_POST['userid'];
	$content=$_POST['content'];
	$time = date("Y-m-d G:i:s");


	
    include('connect.php');
    $q="insert into reply_message (rm_id,rp_id,rper_id,rtime,thumb,rcontent) values ('$replyid','$postid','$uid','$time','0','$content')";
    $reslut=mysqli_query($con,$q);
    if (!$reslut){
        die('Error: ' . mysqli_error($con));
    }else{
        echo "回复成功！";

		echo  "
		<script>
				history.go(-1);
				setTimeout(function(){window.location.href='detail.html';},1000);
		</script>";
	
		
    }

    

    mysqli_close($con);

?>