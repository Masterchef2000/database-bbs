<?php


    header("Content-Type: text/html; charset=utf8");
    if(!isset($_POST["submit"])){
        exit("错误执行");
    }

    include('connect.php');
    $uid = $_POST['title'];
    $password = $_POST['password'];
    if ($uid && $password){
             $sql = "select * from i_user where user_id = $uid and password=$password";
             $result = mysqli_query($con,$sql);
             $rows=mysqli_num_rows($result);
             if($rows){
					setcookie ( "uid", $uid, time () + 3600 * 24 * 365 );
					setcookie ( "password", $password, time () + 3600 * 24 * 365 );

                   header("refresh:0;url=index.html");
                   exit;
             }else{
                echo "用户名或密码错误";
                echo "
                    <script>
                            setTimeout(function(){window.location.href='login.html';},3000);
                    </script>

                ";
             }
             

    }else{
                echo "表单填写不完整";
                echo "
                      <script>
                            setTimeout(function(){window.location.href='login.html';},3000);
                      </script>";
                        
    }

    mysqli_close($con);




?>