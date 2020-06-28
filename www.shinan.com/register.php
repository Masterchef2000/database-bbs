<?php 
header("Content-Type: text/html; charset=utf8");

    if(!isset($_POST['submit'])){
        exit("错误执行");
    }

    $name=$_POST['title'];
    $password=$_POST['password'];
	$n_name=$_POST['nickname'];
	$user_sex=$_POST['sex'];
	$user_age=$_POST['age'];
	$user_major=$_POST['major'];
	$user_hobby=$_POST['hobby'];
	$user_signature=$_POST['signature'];

	
    include('connect.php');
    $q="insert into i_user (user_id,password,nickname,sex,age,major,hobby,signature) values ('$name','$password','$n_name','$user_sex','$user_age','$user_major','$user_hobby','$user_signature')";
    $reslut=mysqli_query($con,$q);
    if (!$reslut){
        die('Error: ' . mysqli_error($con));
    }else{
        echo "注册成功，即将跳转到登录页...";
		echo  "
		<script>
				setTimeout(function(){window.location.href='login.html';},2000);
		</script>";
		
    }

    

    mysqli_close($con);

?>