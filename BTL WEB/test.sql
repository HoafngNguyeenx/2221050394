

CREATE DATABASE IF NOT EXISTS quan_ly_web_phim;
USE quan_ly_web_phim;

CREATE TABLE IF NOT EXISTS the_loai (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ten_the_loai VARCHAR(50)
);

INSERT  INTO the_loai (id, ten_the_loai) VALUES
(1,'Hành động'),(2,'Kinh dị'),(3,'Tình cảm'),(4,'Hài'),
(5,'Phiêu lưu'),(6,'Hoạt hình'),(7,'Viễn tưởng'),(8,'Tâm lý'),
(9,'Chiến tranh'),(10,'Hình sự'),(11,'Âm nhạc'),(12,'Gia đình'),
(13,'Thể thao'),(14,'Cổ trang'),(15,'Tài liệu'),(16,'Lãng mạn'),
(17,'Trinh thám'),(18,'Khoa học'),(19,'Siêu anh hùng'),(20,'Học đường'),
(21,'Zombie'),(22,'Kỳ ảo'),(23,'Hành động – Hài'),(24,'Bí ẩn'),
(25,'Chính kịch'),(26,'Drama'),(27,'Hành động – Viễn tưởng'),
(28,'Cảnh sát'),(29,'Lịch sử'),(30,'Phi khoa học');

CREATE TABLE IF NOT EXISTS vai_tro (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ten_vai_tro VARCHAR(20)
);

INSERT  INTO vai_tro (id, ten_vai_tro) VALUES
(1,'Admin'),(2,'User'),(3,'Editor');

CREATE TABLE IF NOT EXISTS quoc_gia (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ten_quoc_gia VARCHAR(100)
);

INSERT  INTO quoc_gia (id, ten_quoc_gia) VALUES
(1,'Việt Nam'),(2,'Mỹ'),(3,'Hàn Quốc'),(4,'Trung Quốc'),(5,'Nhật Bản'),
(6,'Anh'),(7,'Pháp'),(8,'Đức'),(9,'Nga'),(10,'Ấn Độ'),
(11,'Canada'),(12,'Úc'),(13,'Thái Lan'),(14,'Philippines'),(15,'Singapore'),
(16,'Malaysia'),(17,'Indonesia'),(18,'Mexico'),(19,'Brazil'),(20,'Argentina'),
(21,'Tây Ban Nha'),(22,'Ý'),(23,'Thuỵ Điển'),(24,'Na Uy'),(25,'Phần Lan'),
(26,'Đan Mạch'),(27,'Hà Lan'),(28,'New Zealand'),(29,'Thổ Nhĩ Kỳ'),(30,'Ả Rập');

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

INSERT  INTO nguoi_dung 
(id, ten_dang_nhap, matKhau, ho_ten, email, sdt, vai_tro_id, ngay_sinh)
VALUES
(1,'user1','123','Nguyen A','user1@gmail.com','0900000001',2,'1990-01-01'),
(2,'user2','123','Tran B','user2@gmail.com','0900000002',2,'1991-02-02'),
(3,'user3','123','Le C','user3@gmail.com','0900000003',2,'1992-03-03'),
(4,'user4','123','Pham D','user4@gmail.com','0900000004',2,'1993-04-04'),
(5,'user5','123','Huynh E','user5@gmail.com','0900000005',2,'1994-05-05'),
(6,'user6','123','Vo F','user6@gmail.com','0900000006',2,'1995-06-06'),
(7,'user7','123','Ly G','user7@gmail.com','0900000007',2,'1996-07-07'),
(8,'user8','123','Nguyen H','user8@gmail.com','0900000008',2,'1997-08-08'),
(9,'user9','123','Le I','user9@gmail.com','0900000009',2,'1998-09-09'),
(10,'user10','123','Pham J','user10@gmail.com','0900000010',2,'1999-10-10'),
(11,'user11','123','Ngo K','user11@gmail.com','0900000011',2,'2000-11-11'),
(12,'user12','123','Nguyen L','user12@gmail.com','0900000012',2,'1991-12-12'),
(13,'user13','123','Tran M','user13@gmail.com','0900000013',2,'1992-01-13'),
(14,'user14','123','Le N','user14@gmail.com','0900000014',2,'1993-02-14'),
(15,'user15','123','Pham O','user15@gmail.com','0900000015',2,'1994-03-15'),
(16,'user16','123','Vo P','user16@gmail.com','0900000016',2,'1995-04-16'),
(17,'user17','123','Ly Q','user17@gmail.com','0900000017',2,'1996-05-17'),
(18,'user18','123','Nguyen R','user18@gmail.com','0900000018',2,'1997-06-18'),
(19,'user19','123','Tran S','user19@gmail.com','0900000019',2,'1998-07-19'),
(20,'user20','123','Le T','user20@gmail.com','0900000020',2,'1999-08-20'),
(21,'user21','123','Pham U','user21@gmail.com','0900000021',2,'2000-09-21'),
(22,'user22','123','Vo V','user22@gmail.com','0900000022',2,'1990-10-22'),
(23,'user23','123','Ly X','user23@gmail.com','0900000023',2,'1991-11-23'),
(24,'user24','123','Nguyen Y','user24@gmail.com','0900000024',2,'1992-12-24'),
(25,'user25','123','Tran Z','user25@gmail.com','0900000025',2,'1993-01-25'),
(26,'user26','123','Le A','user26@gmail.com','0900000026',2,'1994-02-26'),
(27,'user27','123','Pham B','user27@gmail.com','0900000027',2,'1995-03-27'),
(28,'user28','123','Vo C','user28@gmail.com','0900000028',2,'1996-04-28'),
(29,'user29','123','Ly D','user29@gmail.com','0900000029',2,'1997-05-29'),
(30,'user30','123','Nguyen E','user30@gmail.com','0900000030',2,'1998-06-30');

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

INSERT  INTO phim 
(id, ten_phim, dao_dien_id, nam_phat_hanh, poster, quoc_gia_id, so_tap, trailer, mo_ta)
VALUES
(1,'Phim 1',1,2020,'poster1.jpg',1,10,'trailer1','Mô tả phim 1'),
(2,'Phim 2',2,2020,'poster2.jpg',2,12,'trailer2','Mô tả phim 2'),
(3,'Phim 3',3,2021,'poster3.jpg',3,8,'trailer3','Mô tả phim 3'),
(4,'Phim 4',4,2021,'poster4.jpg',4,16,'trailer4','Mô tả phim 4'),
(5,'Phim 5',5,2022,'poster5.jpg',5,20,'trailer5','Mô tả phim 5'),
(6,'Phim 6',1,2022,'poster6.jpg',6,14,'trailer6','Mô tả phim 6'),
(7,'Phim 7',2,2020,'poster7.jpg',7,10,'trailer7','Mô tả phim 7'),
(8,'Phim 8',3,2021,'poster8.jpg',8,12,'trailer8','Mô tả phim 8'),
(9,'Phim 9',4,2022,'poster9.jpg',9,18,'trailer9','Mô tả phim 9'),
(10,'Phim 10',5,2020,'poster10.jpg',10,20,'trailer10','Mô tả phim 10'),
(11,'Phim 11',1,2021,'poster11.jpg',11,15,'trailer11','Mô tả phim 11'),
(12,'Phim 12',2,2022,'poster12.jpg',12,12,'trailer12','Mô tả phim 12'),
(13,'Phim 13',3,2020,'poster13.jpg',13,10,'trailer13','Mô tả phim 13'),
(14,'Phim 14',4,2021,'poster14.jpg',14,16,'trailer14','Mô tả phim 14'),
(15,'Phim 15',5,2022,'poster15.jpg',15,20,'trailer15','Mô tả phim 15'),
(16,'Phim 16',1,2020,'poster16.jpg',16,12,'trailer16','Mô tả phim 16'),
(17,'Phim 17',2,2021,'poster17.jpg',17,18,'trailer17','Mô tả phim 17'),
(18,'Phim 18',3,2022,'poster18.jpg',18,10,'trailer18','Mô tả phim 18'),
(19,'Phim 19',4,2020,'poster19.jpg',19,12,'trailer19','Mô tả phim 19'),
(20,'Phim 20',5,2021,'poster20.jpg',20,16,'trailer20','Mô tả phim 20'),
(21,'Phim 21',1,2022,'poster21.jpg',21,10,'trailer21','Mô tả phim 21'),
(22,'Phim 22',2,2020,'poster22.jpg',22,12,'trailer22','Mô tả phim 22'),
(23,'Phim 23',3,2021,'poster23.jpg',23,14,'trailer23','Mô tả phim 23'),
(24,'Phim 24',4,2022,'poster24.jpg',24,16,'trailer24','Mô tả phim 24'),
(25,'Phim 25',5,2020,'poster25.jpg',25,18,'trailer25','Mô tả phim 25'),
(26,'Phim 26',1,2021,'poster26.jpg',26,20,'trailer26','Mô tả phim 26'),
(27,'Phim 27',2,2022,'poster27.jpg',27,12,'trailer27','Mô tả phim 27'),
(28,'Phim 28',3,2020,'poster28.jpg',28,14,'trailer28','Mô tả phim 28'),
(29,'Phim 29',4,2021,'poster29.jpg',29,16,'trailer29','Mô tả phim 29'),
(30,'Phim 30',5,2022,'poster30.jpg',30,18,'trailer30','Mô tả phim 30');

CREATE TABLE IF NOT EXISTS phim_dien_vien (
    id INT PRIMARY KEY AUTO_INCREMENT,
    phim_id INT,
    dien_vien_id INT
);

INSERT INTO phim_dien_vien (id, phim_id, dien_vien_id) VALUES
(1,1,1),(2,1,2),(3,2,3),(4,2,4),(5,3,5),(6,3,6),(7,4,3),(8,5,2),(9,6,1),
(10,7,4),(11,8,6),(12,9,2),(13,10,3),(14,11,1),(15,12,5),(16,13,4),(17,14,3),
(18,15,2),(19,16,1),(20,17,3),(21,18,4),(22,19,2),(23,20,6),(24,21,5),
(25,22,4),(26,23,3),(27,24,2),(28,25,1),(29,26,5),(30,27,6);

CREATE TABLE IF NOT EXISTS phim_the_loai (
    id INT PRIMARY KEY AUTO_INCREMENT,
    phim_id INT,
    the_loai_id INT,
    FOREIGN KEY (phim_id) REFERENCES phim(id),
    FOREIGN KEY (the_loai_id) REFERENCES the_loai(id)
);

INSERT INTO phim_the_loai (id, phim_id, the_loai_id) VALUES
(1,1,1),(2,1,3),(3,2,5),(4,2,7),(5,3,2),(6,4,1),(7,4,4),(8,5,6),(9,6,2),(10,7,10),
(11,8,8),(12,9,12),(13,10,14),(14,11,15),(15,12,16),(16,13,3),(17,14,1),
(18,15,2),(19,16,4),(20,17,5),(21,18,6),(22,19,7),(23,20,10),(24,21,11),
(25,22,12),(26,23,13),(27,24,14),(28,25,15),(29,26,16),(30,27,17);

CREATE TABLE IF NOT EXISTS tap_phim (
    id INT PRIMARY KEY AUTO_INCREMENT,
    so_tap INT,
    tieu_de VARCHAR(255),
    phim_id INT,
    thoiLuong FLOAT,
    trailer VARCHAR(255),
    FOREIGN KEY (phim_id) REFERENCES phim(id)
);

INSERT INTO tap_phim (id, so_tap, tieu_de, phim_id, thoiLuong, trailer) VALUES
(1,1,'Tập 1',1,40,'trailer1'),
(2,2,'Tập 2',1,42,'trailer2'),
(3,3,'Tập 3',2,45,'trailer3'),
(4,4,'Tập 4',2,38,'trailer4'),
(5,5,'Tập 5',3,50,'trailer5'),
(6,6,'Tập 6',3,55,'trailer6'),
(7,7,'Tập 7',4,48,'trailer7'),
(8,8,'Tập 8',5,42,'trailer8'),
(9,9,'Tập 9',6,40,'trailer9'),
(10,10,'Tập 10',7,44,'trailer10'),
(11,11,'Tập 11',8,46,'trailer11'),
(12,12,'Tập 12',9,39,'trailer12'),
(13,13,'Tập 13',10,41,'trailer13'),
(14,14,'Tập 14',11,50,'trailer14'),
(15,15,'Tập 15',12,45,'trailer15'),
(16,16,'Tập 16',13,48,'trailer16'),
(17,17,'Tập 17',14,42,'trailer17'),
(18,18,'Tập 18',15,44,'trailer18'),
(19,19,'Tập 19',16,46,'trailer19'),
(20,20,'Tập 20',17,50,'trailer20'),
(21,21,'Tập 21',18,48,'trailer21'),
(22,22,'Tập 22',19,42,'trailer22'),
(23,23,'Tập 23',20,44,'trailer23'),
(24,24,'Tập 24',21,46,'trailer24'),
(25,25,'Tập 25',22,50,'trailer25'),
(26,26,'Tập 26',23,48,'trailer26'),
(27,27,'Tập 27',24,42,'
