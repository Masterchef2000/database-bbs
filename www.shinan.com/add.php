<?php 
header("Content-Type: text/html; charset=utf8");

    if(!isset($_POST['submit'])){
        exit("错误执行");
    }
	
	$postid=uniqid();
    $title=$_POST['title'];
    $kind=$_POST['kind'];
	$content=$_POST['content'];
	$uid = $_POST['userid'];
	$time = date("Y-m-d G:i:s");

	
    include('connect.php');
    $q="insert into post (post_id,ptime,pkind,title,hostid,pstatus,heat,content) values ('$postid','$time','$kind','$title','$uid','0','','$content')";
    $reslut=mysqli_query($con,$q);
    if (!$reslut){
        die('Error: ' . mysqli_error($con));
    }else{
        echo "发布成功！即将跳转到主页...";
		echo  "
		<script>
				setTimeout(function(){window.location.href='index.html';},2000);
		</script>";
	
		
    }

    

    mysqli_close($con);

?>