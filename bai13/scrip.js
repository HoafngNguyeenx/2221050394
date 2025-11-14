let danhSachphim = [
    {
        id: 1,
        tenPhim: "Mưa đỏ"
        namPhathanh: 2025,
        tuoi: 16,
        thoiLuong: 2,
        quocGia: "Việt Nam"
        poster: 
        theLoai: "Phim chiếu rạp"
    }
    {
        id: 3,
        tenPhim: "Conan"
        namPhathanh: 2020
        thoiLuong: 2
        quocGia: "Nhật Bản"
        poster: 
        theLoai: "Phim hoạt hình"

    }
    {
        id: 2,
        tenPhim: "Ma Đồng Náo Hải"
        namPhathanh: 2025
        thoiLuong: 2
        quocGia: "Trung Quốc"
        poster:
        theLoai: "Phim hoạt hình"
        
    }
    
];
let phimHientai = danhSachphim[0];
let banner = document.getElementsByClassName('banner')[0];
function chonPhim(idPhim){
    for (let i = 0; i < danhSachphim.length; i++){
        if (danhSachphim[i].id === idPhim) {
            banner.computedStyleMap.backgroundImage = danhSachphim[i].poster;

        }
    }
}



