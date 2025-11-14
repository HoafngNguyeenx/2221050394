let danhSachPhim = [
    {
        id : 1,
        tenPhim: " Mưa Đỏ", 
        namPhatHanh: 2025,
        tuoi: 16,
        thoiLuong:2,
        quocGia: "Việt Nam",
       poster: "/ontap2/Pic/mua do.jpg",
        theLoai: "Phim chiếu rạp"
    },
    {
         id : 2,
        tenPhim: "Ma Đồng Náo Hải", 
        namPhatHanh: 2023,
        tuoi: 15,
        thoiLuong:1.5,
        quocGia: "Trung Quốc",
        poster: "/ontap2/Pic/natra.jpg",
        theLoai: "Phim hoạt hình"
    }
];

let PhimHienTai = danhSachPhim[0];

let banner = document.getElementById('banner2');
let namephim = document.getElementById('namephim');
let namsinh = document.getElementById('namsinh');

let quocgia = document.getElementById('quocgia');

let thoiluong = document.getElementById('thoiluong');

function clickphim(id){
    alert(banner);
    for(let i = 0; i < danhSachPhim.length ; i ++){
        if(danhSachPhim[i].id == id){
            banner.src = danhSachPhim[i].poster;
            namephim.innerText ="tên phim" + danhSachPhim[i].tenPhim;
            namsinh.innerText = "Năm Phát Hanh " + danhSachPhim[i].namPhatHanh;

            quocgia.innerText = "Quốc GIa " + danhSachPhim[i].quocGia;

            thoiluong.innerText = "Thời LƯợng " + danhSachPhim[i].thoiLuong + "Giờ";

        }
    }
}