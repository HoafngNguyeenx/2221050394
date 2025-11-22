<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buổi 1 PHP</title>
</head>
<body>
    <?php
    //1. in ra màn hình
    echo "Hello world <br>" ;
    echo "Hi";
    //Biến
    //cú pháp: $ + tên biến = giá trị của biến
    $ten ="Hoang";
    $tuoi =21;
    echo $ten . "" . $tuoi . "tuổi<br>";
    //3 Hằng
    define("soPi", "3.14 <br>");
    echo soPi;
    //Phân biệt '' và ""
    echo '$ten<br>';
    echo "$ten<br>";

    //Chuỗi
    //5.1 kiểm tra độ dài chuỗi
    echo strlen($ten) . "<br>";
    //5.2 đếm số từ
    echo str_word_count($ten);
    //5.3 tìm kiếm kí tự trong chuỗi
    echo strpos($ten, "o") . "<br>";
    //5.4 thay thế kí tự trong chuỗi
    echo str_replace("Hoang", "nguyen", $ten) . "<br>";
    //6 toán tử
    $soThuNhat = 10;
    $soThuHai = 5;
    //phép cộng
    // + - * /
    echo $soThuNhat + $soThuHai . "<br>";
    //gán
    // += -= *= /= %=
    echo $soThuNhat %= $soThuHai ;
    //so sánh 
    // == != < > <= >= ===
    //7. câu điều kiện
    //if("điều kiện"){
        //logic
    // }

    //else("điều kiện"){
        //logic
    // }

    //kiểm tra tổng của số thứ nhất và số thứ 2
    // (nếu < 15 thì in ra nhỏ hơn 15)
    //(nếu = 15 thì in ra tổng bằng 15)
    // còn lại in ra lớn hơn 15
    $tong = $soThuNhat + $soThuHai ;
    echo $tong . "<br>";
    if("$tong < 15"){
    echo "Nhỏ hơn 15";}
    elseif("$tong == 15 "){
    echo "Bằng 15";}
    else {
        echo "Tổng lớn hơn 15";}
    //8. switch case
$color = "red";

switch ($color) {
    case "red":
        echo "is red";
        break;

    case "blue":
        echo "is blue";
        break;

    default:
        echo "unknown color";
}
    //9. for
    for($i=0; $i < 100; $i++) {
        echo $i . "<br>";
    }
    //10. mảng
    $mang = ["An", "Nhật Anh", "Vũ Anh"];
    // đếm phần tử
    echo count($mang);
    echo $mang[1];
    print_r($mang);
    $mang[0] = "Hải Anh";
    print_r($mang);
    //xóa 
    unset($mang[3]);
    print_r($mang);
     ?>
</body>
</html>