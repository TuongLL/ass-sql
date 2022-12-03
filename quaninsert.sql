--USE SHOPsDB
----INSERT nhanvien (10 rows)
ALTER TABLE nhanvien
NOCHECK CONSTRAINT fk_nhanvien_mach;
ALTER TABLE nhanvien
NOCHECK CONSTRAINT fk_nhanvien_matk;

INSERT INTO nhanvien (MaNV, MaCH, MaTK, Ten, CCCD, Bdate, Email, Diachi, Sogiolamviec) --CH0003
VALUES ('NV5748', 'CH0003', 'TK2478','Alfreds Futterkiste', '589719619328', '1984-07-17', 'theodor9@gmail.com','Obere Str. 57', '45')
INSERT INTO nhanvien (MaNV, MaCH, MaTK, Ten, CCCD, Bdate, Email, Diachi, Sogiolamviec) --CH0002
VALUES ('NV1988', 'CH0002', 'TK6716','Antonio Moreno', '214040328454', '2002-12-15', 'norah_claes@skynet.be','Avda. de la Constitución 2222', '55')
INSERT INTO nhanvien (MaNV, MaCH, MaTK, Ten, CCCD, Bdate, Email, Diachi, Sogiolamviec)
VALUES ('NV8452', 'CH0001', 'TK0553','Christina Berglund', '976466106176', '1981-11-22', 'tuur96@yahoo.com','Mataderos 2312', '46')
INSERT INTO nhanvien (MaNV, MaCH, MaTK, Ten, CCCD, Bdate, Email, Diachi, Sogiolamviec) --CH0004
VALUES ('NV0229', 'CH0004', 'TK9636','Hanna Moos', '269890059148', '1982-09-06', 'mauro.decoster@hotmail.com','120 Hanover Sq.', '59')
INSERT INTO nhanvien (MaNV, MaCH, MaTK, Ten, CCCD, Bdate, Email, Diachi, Sogiolamviec)
VALUES ('NV5829', 'CH0002', 'TK8657','Laurence Lebihans', '347353885339', '2002-07-18', 'fleur_declercq@gmail.com','Forsterstr. 57', '56')
INSERT INTO nhanvien (MaNV, MaCH, MaTK, Ten, CCCD, Bdate, Email, Diachi, Sogiolamviec)
VALUES ('NV6597', 'CH0002', 'TK2691','Elizabeth Lincoln', '759956421108', '2000-06-12', 'seppe16@gmail.com','12, rue des Bouchers', '57')
INSERT INTO nhanvien (MaNV, MaCH, MaTK, Ten, CCCD, Bdate, Email, Diachi, Sogiolamviec)
VALUES ('NV6372', 'CH0003', 'TK3111','Patricio Simpson', '277815238823', '1999-08-13', 'pauline.vandenbroeck9@gmail.com','23 Tsawassen Blvd.', '50')
INSERT INTO nhanvien (MaNV, MaCH, MaTK, Ten, CCCD, Bdate, Email, Diachi, Sogiolamviec)
VALUES ('NV6725', 'CH0004', 'TK3360','Francisco Chang', '753311057239', '1998-07-18', 'simon.dewilde@gmail.com','Fauntleroy Circus', '49')
INSERT INTO nhanvien (MaNV, MaCH, MaTK, Ten, CCCD, Bdate, Email, Diachi, Sogiolamviec)
VALUES ('NV8918', 'CH0002', 'TK4574','Diego Roel', '156849961941', '1995-03-01', 'hamza.thijs63@hotmail.com','Hauptstr. 29', '55')
INSERT INTO nhanvien (MaNV, MaCH, MaTK, Ten, CCCD, Bdate, Email, Diachi, Sogiolamviec) --CH0001
VALUES ('NV7195', 'CH0001', 'TK6106','Maria Larsson', '329249856987', '1992-04-05', 'matthias_martens16@hotmail.com','Berkeley Gardens 12 Brewery', '57')



----INSERT nhanvienquanly_cuahang (4 rows)

INSERT INTO nhanvienquanly_cuahang (MaCH, TenCH, Email, Diachi, MaNV)
VALUES ('CH0001', 'Black Pink Panther Thủ Đức', 'bpptd@gmail.com', 'TP. Thủ Đức, TP. HCM', 'NV7195')
INSERT INTO nhanvienquanly_cuahang (MaCH, TenCH, Email, Diachi, MaNV)
VALUES ('CH0002', 'Black Pink Panther Bình Thạnh', 'bppbt@gmail.com', 'Q. Bình Thạnh, TP. HCM', 'NV1988')
INSERT INTO nhanvienquanly_cuahang (MaCH, TenCH, Email, Diachi, MaNV)
VALUES ('CH0003', 'Black Pink Panther Gò Vấp', 'bppgv@gmail.com', 'Q. Gò Vấp, TP. HCM', 'NV5748')
INSERT INTO nhanvienquanly_cuahang (MaCH, TenCH, Email, Diachi, MaNV)
VALUES ('CH0004', 'Black Pink Panther Q1', 'bppq1@gmail.com', 'Q. 1, TP. HCM', 'NV0229')

ALTER TABLE nhanvien
CHECK CONSTRAINT fk_nhanvien_mach;


----INSERT sdt_cuahang
INSERT INTO sdt_cuahang (MaCH, SDT)
VALUES ('CH0001', '0388068714')
INSERT INTO sdt_cuahang (MaCH, SDT)
VALUES ('CH0002', '0838608413')
INSERT INTO sdt_cuahang (MaCH, SDT)
VALUES ('CH0003', '0941335473')
INSERT INTO sdt_cuahang (MaCH, SDT)
VALUES ('CH0004', '0706318312')


----INSERT sdt_nhanvien
INSERT INTO sdt_nhanvien (MaNV, SDT)
VALUES ('NV0229', '0123450229')
INSERT INTO sdt_nhanvien (MaNV, SDT)
VALUES ('NV1988', '0198816357')
INSERT INTO sdt_nhanvien (MaNV, SDT)
VALUES ('NV5748', '0157486431')
INSERT INTO sdt_nhanvien (MaNV, SDT)
VALUES ('NV5829', '0158618923')
INSERT INTO sdt_nhanvien (MaNV, SDT)
VALUES ('NV6372', '0643123891')
INSERT INTO sdt_nhanvien (MaNV, SDT)
VALUES ('NV6597', '0564486328')
INSERT INTO sdt_nhanvien (MaNV, SDT)
VALUES ('NV6725', '0689713358')
INSERT INTO sdt_nhanvien (MaNV, SDT)
VALUES ('NV7195', '0764532168')
INSERT INTO sdt_nhanvien (MaNV, SDT)
VALUES ('NV8452', '0642318046')
INSERT INTO sdt_nhanvien (MaNV, SDT)
VALUES ('NV8918', '0897120469')


----INSERT nhanvienbanhang (6 rows)
INSERT INTO nhanvienbanhang (MaNV)
VALUES ('NV5829')
INSERT INTO nhanvienbanhang (MaNV)
VALUES ('NV6372')
INSERT INTO nhanvienbanhang (MaNV)
VALUES ('NV6597')
INSERT INTO nhanvienbanhang (MaNV)
VALUES ('NV6725')
INSERT INTO nhanvienbanhang (MaNV)
VALUES ('NV8452')
INSERT INTO nhanvienbanhang (MaNV)
VALUES ('NV8918')

----INSERT khuyenmai
INSERT INTO khuyenmai (MaKM, TenKM, LoaiKM, PhantramKM, Thoigianbatdau, Thoigianketthuc, Dieukientoithieu, Dieukientoida, Giatrigiam, Soluongtoida)
VALUES ('KM1292', 'Black Friday', 'Khuyến mãi giảm giá giày', '0.3', '2022-11-1 00:00:00', '2022-12-24 23:59:59', 'Mua hai đôi trở lên', 'Chỉ áp dụng cho một sản phẩm', NULL, 5)


----INSERT khachhang
INSERT INTO khachhang (MaKH, Hoten, Email, Diachi)
VALUES ('KH4875', 'Zbyszek Matti', 'walla14@gmail.com', 'Keskuskatu 45')
INSERT INTO khachhang (MaKH, Hoten, Email, Diachi)
VALUES ('KH9290', 'Karl Jablonski', 'helsiki57@gmail.com', '305 - 14th Ave. S. Suite 3B')
INSERT INTO khachhang (MaKH, Hoten, Email, Diachi)
VALUES ('KH6304', 'Paula Parente', 'oulu.lu1654@gmail.com', 'Rua do Mercado, 12')
INSERT INTO khachhang (MaKH, Hoten, Email, Diachi)
VALUES ('KH0376', 'Pirkko Koskitalo', 'reims1316@gmail.com', 'Adenauerallee 900')
INSERT INTO khachhang (MaKH, Hoten, Email, Diachi)
VALUES ('KH2373', 'Paul Henriot', 'lyon.paul15@gmail.com', '2, rue du Commerce')


----INSERT sdt_khachhang

INSERT INTO sdt_khachhang (MaKH, SDT)
VALUES ('KH4875', '0156489431')
INSERT INTO sdt_khachhang (MaKH, SDT)
VALUES ('KH9290', '0841321786')
INSERT INTO sdt_khachhang (MaKH, SDT)
VALUES ('KH6304', '0314564813')
INSERT INTO sdt_khachhang (MaKH, SDT)
VALUES ('KH0376', '0789653243')
INSERT INTO sdt_khachhang (MaKH, SDT)
VALUES ('KH2373', '0846313894')

----INSERT khachvanglai
INSERT INTO khachhangvanglai (MaKH)
VALUES ('KH4875')
INSERT INTO khachhangvanglai (MaKH)
VALUES ('KH9290')
INSERT INTO khachhangvanglai (MaKH)
VALUES ('KH6304')


----INSERT cuahangonline
INSERT INTO cuahangonline (MaCH)
VALUES ('CH0001')


----INSERT cuahangoffline
INSERT INTO cuahangoffline (MaCH)
VALUES ('CH0002')
INSERT INTO cuahangoffline (MaCH)
VALUES ('CH0003')
INSERT INTO cuahangoffline (MaCH)
VALUES ('CH0004')


----INSERT nhacungcap
INSERT INTO nhacungcap (MaNCC, TenNCC, Email, Diachi)
VALUES ('NCC434', 'Coolmate', 'Cool@coolmate.me', 'Q7, TP. HCM')
INSERT INTO nhacungcap (MaNCC, TenNCC, Email, Diachi)
VALUES ('NCC225', 'Decathlon', 'cskh@decathlon.com', 'Q. Bình Thạnh, TP. HCM')


----INSERT sdt_nhacungcap
INSERT INTO sdt_nhacungcap (MaNCC, SDT)
VALUES ('NCC434', '1900272737')
INSERT INTO sdt_nhacungcap (MaNCC, SDT)
VALUES ('NCC225', '0305728805')


----INSERT mathang
INSERT INTO mathang (MaMH, TenMH)
VALUES ('MH0001', 'Áo')
INSERT INTO mathang (MaMH, TenMH)
VALUES ('MH0002', 'Quần')
INSERT INTO mathang (MaMH, TenMH)
VALUES ('MH0003', 'Giày')


----INSERT ban
INSERT INTO ban (MaMH, MaCH)
VALUES ('MH0001', 'CH0001')
INSERT INTO ban (MaMH, MaCH)
VALUES ('MH0002', 'CH0001')
INSERT INTO ban (MaMH, MaCH)
VALUES ('MH0001', 'CH0001')
INSERT INTO ban (MaMH, MaCH)
VALUES ('MH0002', 'CH0002')
INSERT INTO ban (MaMH, MaCH)
VALUES ('MH0003', 'CH0002')
INSERT INTO ban (MaMH, MaCH)
VALUES ('MH0001', 'CH0002')
INSERT INTO ban (MaMH, MaCH)
VALUES ('MH0001', 'CH0003')
INSERT INTO ban (MaMH, MaCH)
VALUES ('MH0002', 'CH0003')
INSERT INTO ban (MaMH, MaCH)
VALUES ('MH0002', 'CH0003')
INSERT INTO ban (MaMH, MaCH)
VALUES ('MH0001', 'CH0004')
INSERT INTO ban (MaMH, MaCH)
VALUES ('MH0003', 'CH0004')
INSERT INTO ban (MaMH, MaCH)
VALUES ('MH0002', 'CH0004')


----INSERT sanpham

INSERT INTO sanpham (MaSP, TenSP, Gianiemyet, Chatlieu, MaNCC, MaMH, Mota)
VALUES ('SP0001', 'CROSS CUT POLO / BLACK-GREY COLOR', '225000', 'Cotton', 'NCC434', 'MH0001', 'N''Bảng size OuterityS : Dài 69 Rộng 52.5 | 1m50 - 1m65, 45 - 55KgM : Dài 73 Rộng 55 | 1m60 - 1m75, 50 - 65KgL: Dài : 76.5 Rộng: 57.5 | 1m7 - 1m8, 65Kg - 80Kg👉 Nếu chưa biết lựa size bạn có thể inbox để được chúng mình tư vấn.🔹 Chính sách đổi trả Outerity.– Miễn phí đổi hàng cho khách mua ở Outerity trong trường hợp bị lỗi từ nhà sản xuất, giao nhầm hàng, nhầm size.- Quay video mở sản phẩm khi nhận hàng, nếu không có video unbox, khi phát hiện lỗi phải báo ngay cho Outerity trong 1 ngày tính từ ngày giao hàng thành công. Qua 1 ngày chúng mình không giải quyết khi không có video unbox.– Sản phẩm đổi trong thời gian 3 ngày kể từ ngày nhận hàng– Sản phẩm còn mới nguyên tem, tags, sản phẩm chưa giặt và không dơ bẩn, hư hỏng bởi những tác nhân bên ngoài cửa hàng sau khi mua hàng.👉 Đặc biệt:– Tất cả sản phẩm ver 3.0 sẽ được hỗ trợ trả hàng hoàn tiền trong vòng 05 ngày kể từ ngày nhận hàng nếu có trải nghiệm không tốt, không hài lòng về sản phẩm– Chấp nhận trả hàng hoàn tiền với sản phẩm đã qua sử dụng, không còn nguyên tag tuy nhiên sản phẩm phải còn nguyên vẹn, không bị rách, bung chỉ, bạc màu do quá trình sử dụng🔹Liên hệ: 0862642568/ Web / Outerity.com/ IG / @Outerity.sg/ FB / Outerity')

INSERT INTO sanpham (MaSP, TenSP, Gianiemyet, Chatlieu, MaNCC, MaMH, Mota)
VALUES ('SP0002', 'CROSS CUT POLO / Grey-White Color', '225000', 'Cotton', 'NCC225', 'MH0001', 'N''Bảng size OuterityS : Dài 69 Rộng 52.5 | 1m50 - 1m65, 45 - 55KgM : Dài 73 Rộng 55 | 1m60 - 1m75, 50 - 65KgL: Dài : 76.5 Rộng: 57.5 | 1m7 - 1m8, 65Kg - 80Kg👉 Nếu chưa biết lựa size bạn có thể inbox để được chúng mình tư vấn.🔹 Chính sách đổi trả Outerity.– Miễn phí đổi hàng cho khách mua ở Outerity trong trường hợp bị lỗi từ nhà sản xuất, giao nhầm hàng, nhầm size.- Quay video mở sản phẩm khi nhận hàng, nếu không có video unbox, khi phát hiện lỗi phải báo ngay cho Outerity trong 1 ngày tính từ ngày giao hàng thành công. Qua 1 ngày chúng mình không giải quyết khi không có video unbox.– Sản phẩm đổi trong thời gian 3 ngày kể từ ngày nhận hàng– Sản phẩm còn mới nguyên tem, tags, sản phẩm chưa giặt và không dơ bẩn, hư hỏng bởi những tác nhân bên ngoài cửa hàng sau khi mua hàng.👉 Đặc biệt:– Tất cả sản phẩm ver 3.0 sẽ được hỗ trợ trả hàng hoàn tiền trong vòng 05 ngày kể từ ngày nhận hàng nếu có trải nghiệm không tốt, không hài lòng về sản phẩm– Chấp nhận trả hàng hoàn tiền với sản phẩm đã qua sử dụng, không còn nguyên tag tuy nhiên sản phẩm phải còn nguyên vẹn, không bị rách, bung chỉ, bạc màu do quá trình sử dụng🔹Liên hệ: 0862642568/ Web / Outerity.com/ IG / @Outerity.sg/ FB / Outerity')

INSERT INTO sanpham (MaSP, TenSP, Gianiemyet, Chatlieu, MaNCC, MaMH, Mota)
VALUES ('SP0003', 'CROSS CUT POLO / White-Grey Color', '208000', 'Cotton', 'NCC225', 'MH0001', 'N''Bảng size OuterityS : Dài 69 Rộng 52.5 | 1m50 - 1m65, 45 - 55KgM : Dài 73 Rộng 55 | 1m60 - 1m75, 50 - 65KgL: Dài : 76.5 Rộng: 57.5 | 1m7 - 1m8, 65Kg - 80Kg👉 Nếu chưa biết lựa size bạn có thể inbox để được chúng mình tư vấn.🔹 Chính sách đổi trả Outerity.– Miễn phí đổi hàng cho khách mua ở Outerity trong trường hợp bị lỗi từ nhà sản xuất, giao nhầm hàng, nhầm size.- Quay video mở sản phẩm khi nhận hàng, nếu không có video unbox, khi phát hiện lỗi phải báo ngay cho Outerity trong 1 ngày tính từ ngày giao hàng thành công. Qua 1 ngày chúng mình không giải quyết khi không có video unbox.– Sản phẩm đổi trong thời gian 3 ngày kể từ ngày nhận hàng– Sản phẩm còn mới nguyên tem, tags, sản phẩm chưa giặt và không dơ bẩn, hư hỏng bởi những tác nhân bên ngoài cửa hàng sau khi mua hàng.👉 Đặc biệt:– Tất cả sản phẩm ver 3.0 sẽ được hỗ trợ trả hàng hoàn tiền trong vòng 05 ngày kể từ ngày nhận hàng nếu có trải nghiệm không tốt, không hài lòng về sản phẩm– Chấp nhận trả hàng hoàn tiền với sản phẩm đã qua sử dụng, không còn nguyên tag tuy nhiên sản phẩm phải còn nguyên vẹn, không bị rách, bung chỉ, bạc màu do quá trình sử dụng🔹Liên hệ: 0862642568/ Web / Outerity.com/ IG / @Outerity.sg/ FB / Outerity')

INSERT INTO sanpham (MaSP, TenSP, Gianiemyet, Chatlieu, MaNCC, MaMH, Mota)
VALUES ('SP0004', 'POLO COLOR PICKER - WHITE', '195000', 'Cotton', 'NCC434', 'MH0001', 'N''Bảng size OuterityS : Dài 69 Rộng 52.5 | 1m50 - 1m65, 45 - 55KgM : Dài 73 Rộng 55 | 1m60 - 1m75, 50 - 65KgL: Dài : 76.5 Rộng: 57.5 | 1m7 - 1m8, 65Kg - 80Kg👉 Nếu chưa biết lựa size bạn có thể inbox để được chúng mình tư vấn.🔹 Chính sách đổi trả Outerity.– Miễn phí đổi hàng cho khách mua ở Outerity trong trường hợp bị lỗi từ nhà sản xuất, giao nhầm hàng, nhầm size.- Quay video mở sản phẩm khi nhận hàng, nếu không có video unbox, khi phát hiện lỗi phải báo ngay cho Outerity trong 1 ngày tính từ ngày giao hàng thành công. Qua 1 ngày chúng mình không giải quyết khi không có video unbox.– Sản phẩm đổi trong thời gian 3 ngày kể từ ngày nhận hàng– Sản phẩm còn mới nguyên tem, tags, sản phẩm chưa giặt và không dơ bẩn, hư hỏng bởi những tác nhân bên ngoài cửa hàng sau khi mua hàng.👉 Đặc biệt:– Tất cả sản phẩm ver 3.0 sẽ được hỗ trợ trả hàng hoàn tiền trong vòng 05 ngày kể từ ngày nhận hàng nếu có trải nghiệm không tốt, không hài lòng về sản phẩm– Chấp nhận trả hàng hoàn tiền với sản phẩm đã qua sử dụng, không còn nguyên tag tuy nhiên sản phẩm phải còn nguyên vẹn, không bị rách, bung chỉ, bạc màu do quá trình sử dụng🔹Liên hệ: 0862642568/ Web / Outerity.com/ IG / @Outerity.sg/ FB / Outerity')

INSERT INTO sanpham (MaSP, TenSP, Gianiemyet, Chatlieu, MaNCC, MaMH, Mota)
VALUES ('SP0005', 'POLO CROSS - ITALICS / Black-White Color', '225000', 'Cotton', 'NCC225', 'MH0001', 'N''Bảng size OuterityS : Dài 69 Rộng 52.5 | 1m50 - 1m65, 45 - 55KgM : Dài 73 Rộng 55 | 1m60 - 1m75, 50 - 65KgL: Dài : 76.5 Rộng: 57.5 | 1m7 - 1m8, 65Kg - 80Kg👉 Nếu chưa biết lựa size bạn có thể inbox để được chúng mình tư vấn.🔹 Chính sách đổi trả Outerity.– Miễn phí đổi hàng cho khách mua ở Outerity trong trường hợp bị lỗi từ nhà sản xuất, giao nhầm hàng, nhầm size.- Quay video mở sản phẩm khi nhận hàng, nếu không có video unbox, khi phát hiện lỗi phải báo ngay cho Outerity trong 1 ngày tính từ ngày giao hàng thành công. Qua 1 ngày chúng mình không giải quyết khi không có video unbox.– Sản phẩm đổi trong thời gian 3 ngày kể từ ngày nhận hàng– Sản phẩm còn mới nguyên tem, tags, sản phẩm chưa giặt và không dơ bẩn, hư hỏng bởi những tác nhân bên ngoài cửa hàng sau khi mua hàng.👉 Đặc biệt:– Tất cả sản phẩm ver 3.0 sẽ được hỗ trợ trả hàng hoàn tiền trong vòng 05 ngày kể từ ngày nhận hàng nếu có trải nghiệm không tốt, không hài lòng về sản phẩm– Chấp nhận trả hàng hoàn tiền với sản phẩm đã qua sử dụng, không còn nguyên tag tuy nhiên sản phẩm phải còn nguyên vẹn, không bị rách, bung chỉ, bạc màu do quá trình sử dụng🔹Liên hệ: 0862642568/ Web / Outerity.com/ IG / @Outerity.sg/ FB / Outerity')

INSERT INTO sanpham (MaSP, TenSP, Gianiemyet, Chatlieu, MaNCC, MaMH, Mota)
VALUES ('SP0006', 'POLO CROSS - ITALICS / WHITE - BLACK COLOR', '225000', 'Cotton', 'NCC434', 'MH0001', 'N''Bảng size OuterityS : Dài 69 Rộng 52.5 | 1m50 - 1m65, 45 - 55KgM : Dài 73 Rộng 55 | 1m60 - 1m75, 50 - 65KgL: Dài : 76.5 Rộng: 57.5 | 1m7 - 1m8, 65Kg - 80Kg👉 Nếu chưa biết lựa size bạn có thể inbox để được chúng mình tư vấn.🔹 Chính sách đổi trả Outerity.– Miễn phí đổi hàng cho khách mua ở Outerity trong trường hợp bị lỗi từ nhà sản xuất, giao nhầm hàng, nhầm size.- Quay video mở sản phẩm khi nhận hàng, nếu không có video unbox, khi phát hiện lỗi phải báo ngay cho Outerity trong 1 ngày tính từ ngày giao hàng thành công. Qua 1 ngày chúng mình không giải quyết khi không có video unbox.– Sản phẩm đổi trong thời gian 3 ngày kể từ ngày nhận hàng– Sản phẩm còn mới nguyên tem, tags, sản phẩm chưa giặt và không dơ bẩn, hư hỏng bởi những tác nhân bên ngoài cửa hàng sau khi mua hàng.👉 Đặc biệt:– Tất cả sản phẩm ver 3.0 sẽ được hỗ trợ trả hàng hoàn tiền trong vòng 05 ngày kể từ ngày nhận hàng nếu có trải nghiệm không tốt, không hài lòng về sản phẩm– Chấp nhận trả hàng hoàn tiền với sản phẩm đã qua sử dụng, không còn nguyên tag tuy nhiên sản phẩm phải còn nguyên vẹn, không bị rách, bung chỉ, bạc màu do quá trình sử dụng🔹Liên hệ: 0862642568/ Web / Outerity.com/ IG / @Outerity.sg/ FB / Outerity')

INSERT INTO sanpham (MaSP, TenSP, Gianiemyet, Chatlieu, MaNCC, MaMH, Mota)
VALUES ('SP0007', 'POLO LITTLE CONTAIN / WHITE COLOR', '225000', 'Cotton', 'NCC434', 'MH0001', 'N''Bảng size OuterityS : Dài 69 Rộng 52.5 | 1m50 - 1m65, 45 - 55KgM : Dài 73 Rộng 55 | 1m60 - 1m75, 50 - 65KgL: Dài : 76.5 Rộng: 57.5 | 1m7 - 1m8, 65Kg - 80Kg👉 Nếu chưa biết lựa size bạn có thể inbox để được chúng mình tư vấn.🔹 Chính sách đổi trả Outerity.– Miễn phí đổi hàng cho khách mua ở Outerity trong trường hợp bị lỗi từ nhà sản xuất, giao nhầm hàng, nhầm size.- Quay video mở sản phẩm khi nhận hàng, nếu không có video unbox, khi phát hiện lỗi phải báo ngay cho Outerity trong 1 ngày tính từ ngày giao hàng thành công. Qua 1 ngày chúng mình không giải quyết khi không có video unbox.– Sản phẩm đổi trong thời gian 3 ngày kể từ ngày nhận hàng– Sản phẩm còn mới nguyên tem, tags, sản phẩm chưa giặt và không dơ bẩn, hư hỏng bởi những tác nhân bên ngoài cửa hàng sau khi mua hàng.👉 Đặc biệt:– Tất cả sản phẩm ver 3.0 sẽ được hỗ trợ trả hàng hoàn tiền trong vòng 05 ngày kể từ ngày nhận hàng nếu có trải nghiệm không tốt, không hài lòng về sản phẩm– Chấp nhận trả hàng hoàn tiền với sản phẩm đã qua sử dụng, không còn nguyên tag tuy nhiên sản phẩm phải còn nguyên vẹn, không bị rách, bung chỉ, bạc màu do quá trình sử dụng🔹Liên hệ: 0862642568/ Web / Outerity.com/ IG / @Outerity.sg/ FB / Outerity')

INSERT INTO sanpham (MaSP, TenSP, Gianiemyet, Chatlieu, MaNCC, MaMH, Mota)
VALUES ('SP0008', 'POLO MINIMALIST / Black Color', '212000', 'Cotton', 'NCC225', 'MH0001', 'N''Bảng size OuterityS : Dài 69 Rộng 52.5 | 1m50 - 1m65, 45 - 55KgM : Dài 73 Rộng 55 | 1m60 - 1m75, 50 - 65KgL: Dài : 76.5 Rộng: 57.5 | 1m7 - 1m8, 65Kg - 80Kg👉 Nếu chưa biết lựa size bạn có thể inbox để được chúng mình tư vấn.🔹 Chính sách đổi trả Outerity.– Miễn phí đổi hàng cho khách mua ở Outerity trong trường hợp bị lỗi từ nhà sản xuất, giao nhầm hàng, nhầm size.- Quay video mở sản phẩm khi nhận hàng, nếu không có video unbox, khi phát hiện lỗi phải báo ngay cho Outerity trong 1 ngày tính từ ngày giao hàng thành công. Qua 1 ngày chúng mình không giải quyết khi không có video unbox.– Sản phẩm đổi trong thời gian 3 ngày kể từ ngày nhận hàng– Sản phẩm còn mới nguyên tem, tags, sản phẩm chưa giặt và không dơ bẩn, hư hỏng bởi những tác nhân bên ngoài cửa hàng sau khi mua hàng.👉 Đặc biệt:– Tất cả sản phẩm ver 3.0 sẽ được hỗ trợ trả hàng hoàn tiền trong vòng 05 ngày kể từ ngày nhận hàng nếu có trải nghiệm không tốt, không hài lòng về sản phẩm– Chấp nhận trả hàng hoàn tiền với sản phẩm đã qua sử dụng, không còn nguyên tag tuy nhiên sản phẩm phải còn nguyên vẹn, không bị rách, bung chỉ, bạc màu do quá trình sử dụng🔹Liên hệ: 0862642568/ Web / Outerity.com/ IG / @Outerity.sg/ FB / Outerity')

INSERT INTO sanpham (MaSP, TenSP, Gianiemyet, Chatlieu, MaNCC, MaMH, Mota)
VALUES ('SP0009', 'POLO MINIMALIST / White Color', '212000', 'Cotton', 'NCC225', 'MH0001', 'N''Bảng size OuterityS : Dài 69 Rộng 52.5 | 1m50 - 1m65, 45 - 55KgM : Dài 73 Rộng 55 | 1m60 - 1m75, 50 - 65KgL: Dài : 76.5 Rộng: 57.5 | 1m7 - 1m8, 65Kg - 80Kg👉 Nếu chưa biết lựa size bạn có thể inbox để được chúng mình tư vấn.🔹 Chính sách đổi trả Outerity.– Miễn phí đổi hàng cho khách mua ở Outerity trong trường hợp bị lỗi từ nhà sản xuất, giao nhầm hàng, nhầm size.- Quay video mở sản phẩm khi nhận hàng, nếu không có video unbox, khi phát hiện lỗi phải báo ngay cho Outerity trong 1 ngày tính từ ngày giao hàng thành công. Qua 1 ngày chúng mình không giải quyết khi không có video unbox.– Sản phẩm đổi trong thời gian 3 ngày kể từ ngày nhận hàng– Sản phẩm còn mới nguyên tem, tags, sản phẩm chưa giặt và không dơ bẩn, hư hỏng bởi những tác nhân bên ngoài cửa hàng sau khi mua hàng.👉 Đặc biệt:– Tất cả sản phẩm ver 3.0 sẽ được hỗ trợ trả hàng hoàn tiền trong vòng 05 ngày kể từ ngày nhận hàng nếu có trải nghiệm không tốt, không hài lòng về sản phẩm– Chấp nhận trả hàng hoàn tiền với sản phẩm đã qua sử dụng, không còn nguyên tag tuy nhiên sản phẩm phải còn nguyên vẹn, không bị rách, bung chỉ, bạc màu do quá trình sử dụng🔹Liên hệ: 0862642568/ Web / Outerity.com/ IG / @Outerity.sg/ FB / Outerity')

INSERT INTO sanpham (MaSP, TenSP, Gianiemyet, Chatlieu, MaNCC, MaMH, Mota)
VALUES ('SP0010', 'POLO OUTERITY RAINBOW - WHITE', '208000', 'Cotton', 'NCC434', 'MH0001', 'N''Bảng size OuterityS : Dài 69 Rộng 52.5 | 1m50 - 1m65, 45 - 55KgM : Dài 73 Rộng 55 | 1m60 - 1m75, 50 - 65KgL: Dài : 76.5 Rộng: 57.5 | 1m7 - 1m8, 65Kg - 80Kg👉 Nếu chưa biết lựa size bạn có thể inbox để được chúng mình tư vấn.🔹 Chính sách đổi trả Outerity.– Miễn phí đổi hàng cho khách mua ở Outerity trong trường hợp bị lỗi từ nhà sản xuất, giao nhầm hàng, nhầm size.- Quay video mở sản phẩm khi nhận hàng, nếu không có video unbox, khi phát hiện lỗi phải báo ngay cho Outerity trong 1 ngày tính từ ngày giao hàng thành công. Qua 1 ngày chúng mình không giải quyết khi không có video unbox.– Sản phẩm đổi trong thời gian 3 ngày kể từ ngày nhận hàng– Sản phẩm còn mới nguyên tem, tags, sản phẩm chưa giặt và không dơ bẩn, hư hỏng bởi những tác nhân bên ngoài cửa hàng sau khi mua hàng.👉 Đặc biệt:– Tất cả sản phẩm ver 3.0 sẽ được hỗ trợ trả hàng hoàn tiền trong vòng 05 ngày kể từ ngày nhận hàng nếu có trải nghiệm không tốt, không hài lòng về sản phẩm– Chấp nhận trả hàng hoàn tiền với sản phẩm đã qua sử dụng, không còn nguyên tag tuy nhiên sản phẩm phải còn nguyên vẹn, không bị rách, bung chỉ, bạc màu do quá trình sử dụng🔹Liên hệ: 0862642568/ Web / Outerity.com/ IG / @Outerity.sg/ FB / Outerity')

INSERT INTO sanpham (MaSP, TenSP, Gianiemyet, Chatlieu, MaNCC, MaMH, Mota)
VALUES ('SP0011', 'Polo Signature / Black Color', '208000', 'Cotton', 'NCC225', 'MH0001', 'N''Bảng size OuterityS : Dài 69 Rộng 52.5 | 1m50 - 1m65, 45 - 55KgM : Dài 73 Rộng 55 | 1m60 - 1m75, 50 - 65KgL: Dài : 76.5 Rộng: 57.5 | 1m7 - 1m8, 65Kg - 80Kg👉 Nếu chưa biết lựa size bạn có thể inbox để được chúng mình tư vấn.🔹 Chính sách đổi trả Outerity.– Miễn phí đổi hàng cho khách mua ở Outerity trong trường hợp bị lỗi từ nhà sản xuất, giao nhầm hàng, nhầm size.- Quay video mở sản phẩm khi nhận hàng, nếu không có video unbox, khi phát hiện lỗi phải báo ngay cho Outerity trong 1 ngày tính từ ngày giao hàng thành công. Qua 1 ngày chúng mình không giải quyết khi không có video unbox.– Sản phẩm đổi trong thời gian 3 ngày kể từ ngày nhận hàng– Sản phẩm còn mới nguyên tem, tags, sản phẩm chưa giặt và không dơ bẩn, hư hỏng bởi những tác nhân bên ngoài cửa hàng sau khi mua hàng.👉 Đặc biệt:– Tất cả sản phẩm ver 3.0 sẽ được hỗ trợ trả hàng hoàn tiền trong vòng 05 ngày kể từ ngày nhận hàng nếu có trải nghiệm không tốt, không hài lòng về sản phẩm– Chấp nhận trả hàng hoàn tiền với sản phẩm đã qua sử dụng, không còn nguyên tag tuy nhiên sản phẩm phải còn nguyên vẹn, không bị rách, bung chỉ, bạc màu do quá trình sử dụng🔹Liên hệ: 0862642568/ Web / Outerity.com/ IG / @Outerity.sg/ FB / Outerity')

INSERT INTO sanpham (MaSP, TenSP, Gianiemyet, Chatlieu, MaNCC, MaMH, Mota)
VALUES ('SP0012', 'Polo Signature / White Color', '208000', 'Cotton', 'NCC434', 'MH0001', 'N''Bảng size OuterityS : Dài 69 Rộng 52.5 | 1m50 - 1m65, 45 - 55KgM : Dài 73 Rộng 55 | 1m60 - 1m75, 50 - 65KgL: Dài : 76.5 Rộng: 57.5 | 1m7 - 1m8, 65Kg - 80Kg👉 Nếu chưa biết lựa size bạn có thể inbox để được chúng mình tư vấn.🔹 Chính sách đổi trả Outerity.– Miễn phí đổi hàng cho khách mua ở Outerity trong trường hợp bị lỗi từ nhà sản xuất, giao nhầm hàng, nhầm size.- Quay video mở sản phẩm khi nhận hàng, nếu không có video unbox, khi phát hiện lỗi phải báo ngay cho Outerity trong 1 ngày tính từ ngày giao hàng thành công. Qua 1 ngày chúng mình không giải quyết khi không có video unbox.– Sản phẩm đổi trong thời gian 3 ngày kể từ ngày nhận hàng– Sản phẩm còn mới nguyên tem, tags, sản phẩm chưa giặt và không dơ bẩn, hư hỏng bởi những tác nhân bên ngoài cửa hàng sau khi mua hàng.👉 Đặc biệt:– Tất cả sản phẩm ver 3.0 sẽ được hỗ trợ trả hàng hoàn tiền trong vòng 05 ngày kể từ ngày nhận hàng nếu có trải nghiệm không tốt, không hài lòng về sản phẩm– Chấp nhận trả hàng hoàn tiền với sản phẩm đã qua sử dụng, không còn nguyên tag tuy nhiên sản phẩm phải còn nguyên vẹn, không bị rách, bung chỉ, bạc màu do quá trình sử dụng🔹Liên hệ: 0862642568/ Web / Outerity.com/ IG / @Outerity.sg/ FB / Outerity')

--INSERT size
INSERT INTO size (ID,Loaisize,MaMH)
VALUES ('SZ1234', 'XL','MH0001')

INSERT INTO size (ID,Loaisize,MaMH)
VALUES ('SZ1283', 'L','MH0001')

INSERT INTO size (ID,Loaisize,MaMH)
VALUES ('SZ1563', 'L','MH0002')

INSERT INTO size (ID,Loaisize,MaMH)
VALUES ('SZ1213', '42','MH0003')

--INSERT sanphamcosize
INSERT INTO sanphamcosize (MaSP,IDsize,Soluongnhap,Soluongcon)
VALUES ('SP0001','SZ1283','10','9')

INSERT INTO sanphamcosize (MaSP,IDsize,Soluongnhap,Soluongcon)
VALUES ('SP0002','SZ1234','10','8')

INSERT INTO sanphamcosize (MaSP,IDsize,Soluongnhap,Soluongcon)
VALUES ('SP0003','SZ1234','10','7')

INSERT INTO sanphamcosize (MaSP,IDsize,Soluongnhap,Soluongcon)
VALUES ('SP0004','SZ1283','10','6')

INSERT INTO sanphamcosize (MaSP,IDsize,Soluongnhap,Soluongcon)
VALUES ('SP0005','SZ1234','10','5')

--INSERT donhang
INSERT INTO donhang (MaDH, Trangthai,Ngaytao,MaKH)
VALUES ('DH0001','Chua giao hang','2022-12-2','KH6304')

INSERT INTO donhang (MaDH, Trangthai,Ngaytao,MaKH)
VALUES ('DH0002','Da giao hang','2022-11-08','KH2373')

INSERT INTO donhang (MaDH, Trangthai,Ngaytao,MaKH)
VALUES ('DH0003','Da giao hang','2022-12-09','KH4875')


--INSERT chua
INSERT INTO chua (MaDH,MaSP,IDsize, Soluong,Giamua)
VALUES ('DH0002','SP0002','SZ1283','2','225000')

INSERT INTO chua (MaDH,MaSP,IDsize, Soluong,Giamua)
VALUES ('DH0001','SP0001','SZ1234','1','225000')

INSERT INTO chua (MaDH,MaSP,IDsize, Soluong,Giamua)
VALUES ('DH0003','SP0001','SZ1234','2','225000')

--INSERT taikhoan
INSERT INTO taikhoan (MaTK,Username,Passwordd,LoaiTK)
VALUES ('TK9812','qukanda124','nasd@123','Tai khoan khach')

INSERT INTO taikhoan (MaTK,Username,Passwordd,LoaiTK)
VALUES ('TK2691','nhanvien1243','lksn#241','Tai khoan nhan vien')

ALTER TABLE nhanvien
CHECK CONSTRAINT fk_nhanvien_matk;

--INSERT khachhangthanthietcotaikhoan
INSERT INTO khachhangthanthietcotaikhoan (MaKH,bdate,Gioitinh,MaTK,Sodiemtichluy)
VALUES ('KH4875','2000-07-08','M','TK1257','10')

INSERT INTO khachhangthanthietcotaikhoan (MaKH,bdate,Gioitinh,MaTK,Sodiemtichluy)
VALUES ('KH2373','2001-04-12','M','TK9812','30')

INSERT INTO khachhangthanthietcotaikhoan (MaKH,bdate,Gioitinh,MaTK,Sodiemtichluy)
VALUES ('KH9290','1999-10-06','F','TK0958','0')

--INSERT hoadon
INSERT INTO hoadon (MaHD,Thoigianxuat,Tongtien,MaDH,MaNV,Sodiemsudung,Hinhthuc,Giagiam)
VALUES ('HD0123','2022-12-01 20:19:30','400000','DH0001','NV8452','10','online','50000')

INSERT INTO hoadon (MaHD,Thoigianxuat,Tongtien,MaDH,MaNV,Sodiemsudung,Hinhthuc,Giagiam)
VALUES ('HD0933','2022-11-08 10:18:10','400000','DH0002','NV6372','20','online','50000')

INSERT INTO hoadon (MaHD,Thoigianxuat,Tongtien,MaDH,MaNV,Sodiemsudung,Hinhthuc,Giagiam)
VALUES ('HD1239','2022-12-09 19:15:20','400000','DH0003','NV8918','20','offline','50000')

--INSERT apdungkhuyenmai
INSERT INTO apdungkhuyenmai (MaKM,MaHD,Loaimathang)
VALUES ('KM0132','HD0123','Ao')
INSERT INTO apdungkhuyenmai (MaKM,MaHD,Loaimathang)
VALUES ('KM0232','HD0933','Ao')

--INSERT hinhthucnhanhang
INSERT INTO hinhthucnhanhang (MaDH,Hinhthuc)
VALUES ('DH0001','Online')

INSERT INTO hinhthucnhanhang (MaDH,Hinhthuc)
VALUES ('DH0002','Online')

--INSERT donhangonline
INSERT INTO donhangonline (MaDH,MaCH,Diachi,SDT,Tennguoinhan)
VALUES ('DH0002','CH0001','2, rue du Commerce','0332145887','Paul Henriot')

INSERT INTO donhangonline (MaDH,MaCH,Diachi,SDT,Tennguoinhan)
VALUES ('DH0001','CH0001','Rua do Mercado, 12','0332145887','Paula Parente')

--INSERT donhangoffline

INSERT INTO donhangoffline(MaDH,MaCH)
VALUES ('DH0002','CH0002')

--INSERT vanchuyen
INSERT INTO vanchuyen(MaGH,MaDH,Diachi,Taixe)
VALUES ('GH0091','DH0002','2, rue du Commerce','Paul')

--INSERT dichvugiaohang

INSERT INTO dichvugiaohang(MaGH,Tendichvu,Taixe,Sdt)
VALUES ('GH0091','Viettel','Paul','0988277398')
