CREATE DATABASE SHOPsDB
USE SHOPsDB

--DROP DATABASE SHOPsDB

CREATE TABLE khachhang
(
	MaKH char(5) PRIMARY KEY,
	Hoten nvarchar(40) NOT NULL,
	Email varchar(40),
	Diachi nvarchar(30)

)
CREATE TABLE sdt_khachhang 
(
	
)


CREATE TABLE nhanvien
(
	CCCD char(12),
	MaNV char(7) PRIMARY KEY,
	Hoten nvarchar(40) NOT NULL,
	bdate DATE,
	Email varchar(40),
	Diachi nvarchar(30)
)

CREATE TABLE sdt_nhanvien 
(
	
)


CREATE TABLE nhacungcap
(
	MaNCC char(6) PRIMARY KEY,
	TenNCC nvarchar(40) NOT NULL,
	Email varchar(40),
	Diachi nvarchar(30)
)

CREATE TABLE sdt_nhacungcap
(	
	
)

CREATE TABLE dichvugiaohang
(
	MaGH char(6) PRIMARY KEY,
	Tendichvu nvarchar(40) NOT NULL,
	Sdt int
)

CREATE TABLE donhang
(
	MaDH char(5) PRIMARY KEY,
	Hinhthuc varchar(40),
	Trangthai varchar(30),
	Ngaytao DATE
)

CREATE TABLE hoadon
(
	MaHD char(5) PRIMARY KEY,
	Thoigianxuat DATETIME NOT NULL
)

CREATE TABLE sanpham
(
	
)

CREATE TABLE size
(
	MaSize char(5) PRIMARY KEY,
	Tensize char(4) NOT NULL

)

CREATE TABLE mathang
(
	MaMH char(6) PRIMARY KEY,
	TenMH nvarchar(30) NOT NULL,
	LoaiMH nvarchar(30) NOT NULL,
	Soluong int
)

CREATE TABLE cuahang
(
	MaCH char(6) PRIMARY KEY,
	TenCH nvarchar(30) NOT NULL,
	Email varchar(40),
	Diachi nvarchar(30) NOT NULL
)

CREATE TABLE sdt_cuahang
(
	
)

CREATE TABLE khuyenmai
(
	MaKM char(6) PRIMARY KEY,
	TenKM nvarchar(40),
	LoaiKM nvarchar(30),
	PhantramKM float NOT NULL,
	Thoigianbatdau DATETIME NOT NULL,
	Thoigianketthuc DATETIME NOT NULL,
	Dieukientoithieu varchar(20),
	Dieukientoida varchar(20),
	Giatrigiam float
)

CREATE TABLE taikhoan
(	
	MaTK char(6) PRIMARY KEY,
	Username varchar(30),
	Passwordd varchar(30),

)
