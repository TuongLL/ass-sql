CREATE DATABASE SHOPsDB
USE SHOPsDB


CREATE TABLE taikhoan
(
	MaTK char(6) PRIMARY KEY,
	Username varchar(40),
	Password varchar(40),
	LoaiTK varchar(40)
)

CREATE TABLE khachhang
(
	MaKH char(6) PRIMARY KEY,
	Hoten nvarchar(40) NOT NULL,
	Email varchar(40),
	Diachi nvarchar(30)

)

CREATE TABLE sdt_khachhang
(
	ID char(6),
	SDT varchar(10),
	MaKH char(6),
	CONSTRAINT fk_khachhang_makh FOREIGN KEY (MaKH)
				REFERENCES khachhang(MaKH),
	PRIMARY KEY (MaKH, SDT)
)

CREATE TABLE khachhangvanglai
(
	MaKH char(6) PRIMARY KEY,
	CONSTRAINT fk_khachhangvanglai_makh FOREIGN KEY (MaKH)
				REFERENCES khachhang(MaKH)
)

CREATE TABLE khachhangthanthietcotaikhoan
(
	bdate DATE,
	Gioitinh char(1),
	Sodiemtichluy int,
	MaKH char(6),
	CONSTRAINT fk_khachhangthanthietcotaikhoan_makh FOREIGN KEY (MaKH)
				REFERENCES khachhang(MaKH),
	MaTK char(6),
	CONSTRAINT fk_khachhangthanthietcotaikhoan_matk FOREIGN KEY (MaTK)
				REFERENCES taikhoan(MaTK),
)

CREATE TABLE donhang
(
	MaDH char(6) PRIMARY KEY,
	Trangthai varchar(30),
	Ngaytao DATE,
	MaKH char(6),
	CONSTRAINT fk_donhang_makh FOREIGN KEY (MaKH)
				REFERENCES khachhang(MaKH)
)

CREATE TABLE hinhthucnhanhang
(
	Hinhthuc varchar(40),
	MaDH char(6),
	CONSTRAINT fk_hinhthucnhanhang_madh FOREIGN KEY (MaDH)
				REFERENCES donhang(MaDH),
	PRIMARY KEY (MaDH, Hinhthuc)
)

CREATE TABLE dichvugiaohang
(
	MaGH char(6) PRIMARY KEY,
	Tendichvu nvarchar(40) NOT NULL,
	Taixe nvarchar(40),
	Sdt varchar(10)
)

CREATE TABLE vanchuyen
(
	Diachi nvarchar(30),
	Taixe nvarchar(40),
	MaGH char(6),
	CONSTRAINT fk_vanchuyen_magh FOREIGN KEY (MaGH)
				REFERENCES dichvugiaohang(MaGH),
	MaDH char(6) PRIMARY KEY,
	CONSTRAINT fk_vanchuyen_madh FOREIGN KEY (MaDH)
				REFERENCES donhang(MaDH)
)

CREATE TABLE khuyenmai
(
	MaKM char(6) PRIMARY KEY,
	TenKM nvarchar(40),
	LoaiKM nvarchar(40),
	PhantramKM float NOT NULL,
	Thoigianbatdau DATETIME NOT NULL,
	Thoigianketthuc DATETIME NOT NULL,
	Dieukientoithieu varchar(40),
	Dieukientoida varchar(40),
	Giatrigiam float,
	Soluongtoida int
)

CREATE TABLE nhanvien
(
	CCCD char(12) UNIQUE,
	MaNV char(6) PRIMARY KEY,
	Ten nvarchar(40) NOT NULL,
	Bdate DATE,
	Email varchar(40),
	Diachi nvarchar(40),
	Sogiolamviec int,
	MaTK char(6),
	MaCH char(6)
--	CONSTRAINT fk_nhanvien_mach FOREIGN KEY (MaCH)
--				REFERENCES nhanvienquanly_cuahang(MaCH)
	
)

CREATE TABLE sdt_nhanvien 
(
	SDT varchar(10),
	MaNV char(6),
	CONSTRAINT fk_sdt_nhanvien_manv FOREIGN KEY (MaNV)
				REFERENCES nhanvien(MaNV),
	PRIMARY KEY (MaNV, SDT)
)

CREATE TABLE nhanvienquanly_cuahang
(
	MaCH char(6) PRIMARY KEY,
	TenCH nvarchar(40) NOT NULL,
	Email varchar(40),
	Diachi nvarchar(40),
	MaTK char(6),
	CONSTRAINT fk_nhanvienquanly_cuahang_matk FOREIGN KEY (MaTK)
				REFERENCES taikhoan(MaTK),
	MaNV char(6),
	CONSTRAINT fk_nhanvienquanly_cuahang_manv FOREIGN KEY (MaNV)
				REFERENCES nhanvien(MaNV)
)


CREATE TABLE sdt_cuahang
(
	SDT varchar(10),
	MaCH char(6),
	CONSTRAINT fk_sdt_cuahang_mach FOREIGN KEY (MaCH)
				REFERENCES nhanvienquanly_cuahang(MaCH),
	PRIMARY KEY (MaCH, SDT)
)

ALTER TABLE nhanvien
ADD CONSTRAINT fk_nhanvien_mach FOREIGN KEY (MaCH)
				REFERENCES nhanvienquanly_cuahang(MaCH);

CREATE TABLE nhanvienbanhang
(
	MaNV char(6) PRIMARY KEY,
	CONSTRAINT fk_nhanvienbanhang_manv FOREIGN KEY (MaNV)
				REFERENCES nhanvien(MaNV)
)

CREATE TABLE hoadon
(
	MaHD char(6) PRIMARY KEY,
	Thoigianxuat DATETIME NOT NULL,
	Tongtien int,
	Sodiemsudung int,
	Hinhthuc varchar(40),
	Thoigian DATETIME,
	Giagiam int,
	MaDH char(6),
	CONSTRAINT fk_hoadon_madh FOREIGN KEY (MaDH)
			REFERENCES donhang(MaDH),
	MaNV char(6),
	CONSTRAINT fk_hoadon_manv FOREIGN KEY (MaNV)
			REFERENCES nhanvienbanhang(MaNV)
)

CREATE TABLE apdungkhuyenmai
(
	Loaimathang nvarchar(40),
	MaHD char(6),
	CONSTRAINT fk_apdungkhuyenmai_mahd FOREIGN KEY (MaHD)
		REFERENCES hoadon(MaHD),
	MaKM char(6),
	CONSTRAINT fk_apdungkhuyenmai_makm FOREIGN KEY (MaKM)
		REFERENCES khuyenmai(MaKM),
	PRIMARY KEY (MaHD, MaKM)
)

CREATE TABLE cuahangonline
(
	MaCH char(6) PRIMARY KEY,
	CONSTRAINT fk_cuahangonline_mach FOREIGN KEY (MaCH)
		REFERENCES nhanvienquanly_cuahang(MaCH),
)

CREATE TABLE cuahangoffline
(
	MaCH char(6) PRIMARY KEY,
	CONSTRAINT fk_cuahangoffline_mach FOREIGN KEY (MaCH)
		REFERENCES nhanvienquanly_cuahang(MaCH),
)

CREATE TABLE donhangonline
(
	Diachi nvarchar(40),
	SDT varchar(10),
	Tennguoinhan nvarchar(40),
	MaDH char(6) PRIMARY KEY,
	CONSTRAINT fk_donhangonline_madh FOREIGN KEY (MaDH)
			REFERENCES donhang(MaDH),
	MaCH char(6),
	CONSTRAINT fk_donhangonline_mach FOREIGN KEY (MaCH)
			REFERENCES cuahangonline(MaCH)
)

CREATE TABLE donhangoffline
(
	MaDH char(6) PRIMARY KEY,
	CONSTRAINT fk_donhangoffline_madh FOREIGN KEY (MaDH)
			REFERENCES donhang(MaDH),
	MaCH char(6),
	CONSTRAINT fk_donhangoffline_mach FOREIGN KEY (MaCH)
			REFERENCES cuahangoffline(MaCH)
)

CREATE TABLE mathang
(
	MaMH char(6) PRIMARY KEY,
	TenMH nvarchar(40) NOT NULL,
	Soluong int
)

CREATE TABLE ban
(
	MaMH char(6),
	CONSTRAINT fk_ban_mamh FOREIGN KEY (MaMH)
			REFERENCES mathang(MaMH),
	MaCH char(6),
	CONSTRAINT fk_ban_mach FOREIGN KEY (MaCH)
			REFERENCES nhanvienquanly_cuahang(MaCH),
	PRIMARY KEY (MaMH, MaCH)
)

CREATE TABLE nhacungcap
(
	MaNCC char(6) PRIMARY KEY,
	TenNCC nvarchar(40) NOT NULL,
	Email varchar(40),
	Diachi nvarchar(40)
)

CREATE TABLE sdt_nhacungcap
(	
	SDT char(10),
	MaNCC char(6),
	CONSTRAINT fk_sdt_nhacungcap_mannc FOREIGN KEY (MaNCC)
			REFERENCES nhacungcap(MaNCC),
	PRIMARY KEY (MaNCC, SDT)
)

CREATE TABLE sanpham
(
	MaSP char(6) PRIMARY KEY,
	TenSP nvarchar(40) NOT NULL,
	Gianiemyet INT,
	Chatlieu nvarchar(40),
	Mota nvarchar(40),
	MaCH char(6),
	CONSTRAINT fk_sanpham_mach FOREIGN KEY (MaCH)
			REFERENCES nhanvienquanly_cuahang(MaCH),
	MaNCC char(6),
	CONSTRAINT fk_sanpham_mannc FOREIGN KEY (MaNCC)
			REFERENCES nhacungcap(MaNCC),
	MaMH char(6),
	CONSTRAINT fk_sanpham_mamh FOREIGN KEY (MaMH)
			REFERENCES mathang(MaMH)
)

CREATE TABLE size
(
	ID char(6) PRIMARY KEY,
	Loaisize char(4) NOT NULL,
	MaMH char(6),
	CONSTRAINT fk_size_mamh FOREIGN KEY (MaMH)
			REFERENCES mathang(MaMH)
)

CREATE TABLE sanphamcosize
(
	Soluongnhap int,
	Soluongcon int,
	MaSP char(6),
	CONSTRAINT fk_sanphamcosize_masp FOREIGN KEY (MaSP)
			REFERENCES sanpham(MaSP),
	IDsize char(6),
	CONSTRAINT fk_sanpham_idsize FOREIGN KEY (IDsize)
			REFERENCES size(ID),
	PRIMARY KEY (MaSP, IDsize)
)

CREATE TABLE chua
(
	Soluong int,
	Giamua int,
	MaDH char(6),
	CONSTRAINT fk_chua_madh FOREIGN KEY (MaDH)
			REFERENCES donhang(MaDH),
	MaSP char(6),
	CONSTRAINT fk_chua_masp FOREIGN KEY (MaSP)
			REFERENCES sanpham(MaSP),
	IDsize char(6),
	CONSTRAINT fk_chua_idsize FOREIGN KEY (IDsize)
			REFERENCES size(ID),
	PRIMARY KEY (MaDH, MaSP, IDsize)
)
