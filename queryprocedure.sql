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
	from sanpham sp, mathang mh
	where sp.Gianiemyet > @gia and mh.TenMH = @loai

exec laysanphamtheoloaivagia 200000, 'Áo'

go
create or alter procedure laythongtinchitietsanpham
	@masp char(6)
as
	select  sanpham.MaSP, TenSP, Gianiemyet, Chatlieu, Mota, Hinhanh, MaNCC, sanpham.MaMH,Soluongcon, Soluongnhap, IDsize, Loaisize 
	from ((sanpham join sanphamcosize on sanpham.MaSP = sanphamcosize.MaSP) join size on IDsize = id)
	where sanpham.MaSP = @masp;

exec laythongtinchitietsanpham 'SP0001'

go
create or alter procedure laythongtingiohang
	@makh char(6)
as
	select 
	from donhang, chua
	where donhang.MaKH = @makh and chua.MaDH = donhang.MaDH and donhang.Trangthai = N'Chưa giao hàng'

exec laythongtingiohang 'KH6304'
