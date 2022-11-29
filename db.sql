CREATE DATABASE SHOPsDB
USE SHOPsDB



CREATE TABLE khachhang
(
	MaKH char(6) PRIMARY KEY,
	Hoten nvarchar(40) NOT NULL,
	Email varchar(40),
	Diachi nvarchar(30)

)
CREATE TABLE khachhangvanglai
(
	MaKH char(6) PRIMARY KEY
)

CREATE TABLE khachhangthanthietcotaikhoan
(
	MaKH char(6) PRIMARY KEY,
	bdate DATE,
	Gioitinh char(1),
	MaTK char(6),
	Sodiemtichluy int
)

CREATE TABLE vanchuyen
(
	MaGH char(6),
	MaDH char(6) PRIMARY KEY,
	Diachi nvarchar(30),
	Taixe nvarchar(40)

)

CREATE TABLE apdungkhuyenmai
(
	MaHD char(6),
	MaKM char(6),
	Loaimathang nvarchar(30)
)

CREATE TABLE sdt_khachhang
(
	MaKH char(6),
	SDT char(10) 
)
CREATE TABLE nhanvien
(
	CCCD char(12),
	MaNV char(6) PRIMARY KEY,
	Hoten nvarchar(40) NOT NULL,
	bdate DATE,
	Email varchar(40),
	Diachi nvarchar(30)
)


CREATE TABLE sdt_nhanvien 
(
	MaCH char(6),
	SDT char(10)
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
	MaNCC char(6),
	SDT char(10),
)

CREATE TABLE dichvugiaohang
(
	MaGH char(6) PRIMARY KEY,
	Tendichvu nvarchar(40) NOT NULL,
	Sdt int
)

CREATE TABLE donhang
(
	MaDH char(6) PRIMARY KEY,
	Hinhthuc varchar(40),
	Trangthai varchar(30),
	Ngaytao DATE
)
CREATE TABLE hoadon
(
	MaHD char(6) PRIMARY KEY,
	Thoigianxuat DATETIME NOT NULL
)
CREATE TABLE sanpham
(
	MaSP char(6) PRIMARY KEY,
	MaMH char(6),
	TenSP nvarchar(40) NOT NULL,
	Gianiemyet INT,
	Chatlieu nvarchar(30),
	MaCH char(6),
	MaNCC char(6),
	Mota nvarchar(40)

)
CREATE TABLE size
(
	MaSize char(6) PRIMARY KEY,
	Tensize char(4) NOT NULL

)
CREATE TABLE mathang
(
	MaMH char(6) PRIMARY KEY,
	TenMH nvarchar(40) NOT NULL,
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
	MaCH char(6),
	Sdt varchar(10)
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

CREATE TABLE nhanvienbanhang
(
	MaNV char(6)
)

CREATE TABLE nhanvienquanly_cuahang
(
	MaNV char(6),
	MaCH char(6),
	TenCH nvarchar(40) NOT NULL,
	Email varchar(40),
	Diachi nvarchar(40)
)

CREATE TABLE cuahangonline
(
	MaCH char(6)
)

CREATE TABLE cuahangoffline
(
	MaCH char(6)
)

CREATE TABLE ban
(
	MaMH char(6),
	MaCH char(6)
)

CREATE TABLE chua
(
	MaDH char(6),
	MaSP char(6),
	ID char(6),
	Soluong int,
	Giamua int
)

CREATE TABLE sanphamcosize
(
	MaSP char(6),
	IDsize char(6),
	Soluongnhap int,
	Soluongcon int
)

CREATE TABLE donhangonline
(
	Madon char(6),
	MaCH char(6),
	Diachi nvarchar(40),
	SDT char(10),
	Tennguoinhan nvarchar(40)
)

CREATE TABLE donhangoffline
(
	Madon char(6),
	MaCH char(6) 
)

CREATE TABLE hinhthucnhanhang
(
	Madon char(6),
	Hinhthuc varchar(40)
)