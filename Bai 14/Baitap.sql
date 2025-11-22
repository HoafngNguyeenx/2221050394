CREATE DATABASE IF NOT EXISTS quan_ly_web_phim;
USE quan_ly_web_phim;

CREATE TABLE IF NOT EXISTS the_loai (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ten_the_loai VARCHAR(50)
);
CREATE TABLE IF NOT EXISTS vai_tro (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ten_vai_tro VARCHAR(20)
);
CREATE TABLE IF NOT EXISTS quoc_gia (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ten_quoc_gia VARCHAR(100)
);
CREATE TABLE IF NOT EXISTS nguoi_dung (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ten_dang_nhap VARCHAR(50),
    matKhau VARCHAR(50),
    ho_ten VARCHAR(50),
    email VARCHAR(50),
    sdt VARCHAR(10),
    vai_tro_id INT,
    ngay_sinh DATETIME,
    FOREIGN KEY (vai_tro_id) REFERENCES vai_tro(id)
);
CREATE TABLE IF NOT EXISTS phim (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ten_phim VARCHAR(255),
    dao_dien_id INT,
    nam_phat_hanh INT,
    poster VARCHAR(255),
    quoc_gia_id INT,
    so_tap INT,
    trailer VARCHAR(255),
    mo_ta TEXT,
    FOREIGN KEY (quoc_gia_id) REFERENCES quoc_gia(id)
);
CREATE TABLE IF NOT EXISTS phim_dien_vien (
    id INT PRIMARY KEY AUTO_INCREMENT,
    phim_id INT,
    dien_vien_id INT
);
CREATE TABLE IF NOT EXISTS phim_the_loai (
    id INT PRIMARY KEY AUTO_INCREMENT,
    phim_id INT,
    the_loai_id INT,
    FOREIGN KEY (phim_id) REFERENCES phim(id),
    FOREIGN KEY (the_loai_id) REFERENCES the_loai(id)
);
CREATE TABLE IF NOT EXISTS tap_phim (
    id INT PRIMARY KEY AUTO_INCREMENT,
    so_tap INT,
    tieu_de VARCHAR(255),
    phim_id INT,
    thoiLuong FLOAT,
    trailer VARCHAR(255),
    FOREIGN KEY (phim_id) REFERENCES phim(id)
);

    