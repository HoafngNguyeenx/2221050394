let danhSachPhim = [
    {
        id : 1,
        tenPhim: "mưa đỏ", 
        namPhatHanh: 2025,
        tuoi: 16,
        thoiLuong:2,
        quocGia: "vietNam",
       poster: "mua-do-top-1-1756596974-4686-1756597005.webp",
        theLoai: "phim chiếu rạp"
    },
    {
         id : 2,
        tenPhim: "conan", 
        namPhatHanh: 2023,
        tuoi: 10,
        thoiLuong:1.5,
        quocGia: "nhật bản",
        poster: "biqr90h7_1920x1080-conan-viendando.png",
        theLoai: "phim hoạt hình"
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