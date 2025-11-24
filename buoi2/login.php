<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>php - buoi2</title>

</head>
<body>
    
<form action="login.php" method="post">
    <h1>Đăng nhập</h1>
    <div>
        <input type="text" name="username" placeholder="Tên đăng nhập">
    </div>
    <div>
        <input type="password" name="password" placeholder="Mật khẩu">
    </div>
    <div>
        <input type="submit" value="Đăng nhập"
        
    </div>
</form>

<?php
//lấy dữ liệu dùng , gửi dữ liệu dùng
if(isset($_POST['username']) && isset($_POST['password'])){

$tenDangNhap = $_POST['username'];
$matKhau = $_POST['password'];
    //echo $tenDangNhap . $matKhau;
    //nếu đăng nhập bằng admin
    //mật khẩu 123 thì cho phép người dùng vào trang chủ
    if($tenDangNhap == 'admin' && $matKhau == '123'){
        header('location: trangchu.php');

    }
    else{
        echo "<p class='warning'> Sai thông tin đăng nhập</p>";
    }
}
?>
</body>
</html>