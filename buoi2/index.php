<?php
        //cookie
    //. Lưu ở phía người dùng
    //.dùng ch nhưng thông tin ít quan trọng
    $cookieName = "user";
    $cookieValue = "Hoang";
    //86400 = 30 ngày
        //setcookie($cookieName, $cookieValue,time()+86400 ), "/";
        if(isset($_COOKIE[$cookieName])){
            echo "cookie đã tồn tại"    ;
        }
        else{
            echo "cookie chưa tồn tại";
        }
        //session
    //.thông tin đăng nhập, giỏ hàng...
    session_start();
    $_SESSION["username"] = "Hoang";
    echo $
?>