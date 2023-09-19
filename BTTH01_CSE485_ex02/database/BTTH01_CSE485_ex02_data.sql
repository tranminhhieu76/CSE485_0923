create database BTTH01_CSE485;
use BTTH01_CSE485;

create table tacgia(
	ma_tgia INT UNSIGNED NOT NULL PRIMARY KEY,
    ten_tgia VARCHAR(100) NOT NULL,
    hinh_tgia VARCHAR(100)
);

create table theloai(
	ma_tloai INT UNSIGNED NOT NULL PRIMARY KEY,
    ten_tloai VARCHAR(50) NOT NULL
);

create table users(
	usersname varchar(30) NOT NULL PRIMARY KEY,
    pass varchar(20) NOT NULL
);

INSERT INTO users (usersname, pass) VALUES
('admin', '000'),
('hieu', 'hieu0706');

create table baiviet(
	ma_bviet INT UNSIGNED NOT NULL PRIMARY KEY,
    tieude VARCHAR(200) NOT NULL,
    ten_bhat VARCHAR(100) NOT NULL,
    ma_tloai INT UNSIGNED NOT NULL,
    tomtat TEXT NOT NULL,
    noidung TEXT,
    ma_tgia INT UNSIGNED NOT NULL,
    ngayviet DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    hinhanh VARCHAR(200) NULL,
    FOREIGN KEY (ma_tgia) REFERENCES tacgia(ma_tgia),
    FOREIGN KEY (ma_tloai) REFERENCES theloai(ma_tloai)
);

drop table tagia;
drop table theloai;
drop table baiviet;
drop table users;

INSERT INTO tacgia (ma_tgia, ten_tgia, hinh_tgia) VALUES
(1, 'Nhacvietplus', 'hinh_tgia_1.jpg'),
(2, 'Nhaccuatui', 'hinh_tgia_2.jpg'),
(3, 'Zingmp', 'hinh_tgia_3.jpg');


INSERT INTO theloai (ma_tloai, ten_tloai) VALUES
(1, 'Nhạc trữ tình'),
(2, 'Nhạc sến'),
(3, 'Nhạc remix');


INSERT INTO baiviet (ma_bviet, tieude, ten_bhat, ma_tloai, tomtat, noidung, ma_tgia, hinhanh) VALUES
(1, 'Nhạc về tình yêu', 'Cây, lá và gió', 1, 'Anh và em', 'Hay', 1, 'hinh_baiviet_1.jpg'),
(2, 'Nhạc về cuộc sống', 'Cuộc sống mến thương', 1, 'Tôi và bạn', 'Tuyệt vời', 2, 'hinh_baiviet_2.jpg'),
(3, 'Nhạc về mẹ', 'C', 2, 'Lòng mẹ', 'Xúc động', 1, 'hinh_baiviet_3.jpg');

truncate table tacgia;
truncate table theloai;
truncate table baiviet;