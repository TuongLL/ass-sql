create or alter procedure laytatcasanpham
as
	select *
	from sanpham

go
create or alter procedure laysanphamtheoloaivagia
	@gia int,
	@loai nvarchar(40)
as
	select sp.TenSP, sp.Gianiemyet, sp.Hinhanh
	from sanpham sp join mathang mh on sp.MaMH = mh.MaMH
	where sp.Gianiemyet > @gia and mh.TenMH = @loai

go
create or alter procedure laythongtinchitietsanpham
	@masp char(6)
as
	select  sanpham.MaSP, TenSP, Gianiemyet, Chatlieu, Mota, Hinhanh, MaNCC, sanpham.MaMH,Soluongcon, Soluongnhap, IDsize, Loaisize 
	from ((sanpham join sanphamcosize on sanpham.MaSP = sanphamcosize.MaSP) join size on IDsize = id)
	where sanpham.MaSP = @masp;

go
create or alter procedure laythongtingiohang
	@makh char(6)
as
	select *
	from donhang d, chua c join sanpham s on c.MaSP = s.MaSP
	where d.MaKH = @makh and c.MaDH = d.MaDH and d.Trangthai = N'Chưa giao hàng'

go
create or alter procedure dangnhap
	@username varchar(40),
	@password varchar(40)
as
begin
	declare @matk char(6)
	set @matk = (SELECT MaTK from taikhoan where Username = @username and Passwordd = @password)

	if (EXISTS(select * from taikhoan where Username = @username and Passwordd = @password and LoaiTK = N'Tài khoản khách'))
	begin
		select k.MaKH, Hoten, Email, Diachi from khachhang k, khachhangthanthietcotaikhoan t where k.MaKH = t.MaKH and t.MaTK = @matk
	end

	else
	if (EXISTS(select * from taikhoan where Username = @username and Passwordd = @password and LoaiTK = N'Tài khoản nhân viên'))
	begin
		select * from nhanvien where MaTK = @matk
	end

	else
		raiserror (N'Lỗi: Sai tên đăng nhập hoặc mật khẩu',16,1)
end

go
create or alter procedure dangky
	@matk char(6),
	@makh char(6),
	@username varchar(40),
	@password varchar(40),
	@email varchar(40),
	@hoten nvarchar(40),
	@diachi nvarchar(40),
	@gioitinh char(1),
	@bdate date
as
begin	
	insert into taikhoan (MaTK, Username, Passwordd, LoaiTK)
	values (@matk, @username, @password, N'Tài khoản khách')

	insert into khachhang (MaKH, Hoten, Email, Diachi)
	values (@makh, @hoten, @email, @diachi)

	insert into khachhangthanthietcotaikhoan (MaKH, MaTK, Gioitinh, bdate, Sodiemtichluy)
	values (@makh, @matk, @gioitinh, @bdate, 0)
end
