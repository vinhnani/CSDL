CREATE DATABASE QLKHACHSAN
GO

USE QLKHACHSAN 
GO

CREATE TABLE KhachHang
(
MaKH varchar(5) primary key,
TenKH nvarchar(30) not null,
LoaiKhach nvarchar(20),
DiaChi nvarchar(100),
GioiTinh nvarchar(8),
CMND varchar(12) ,
SDT varchar(10) not null,
QuocTich nvarchar(25),
)
GO

CREATE TABLE DSPhong
(
SoPhong varchar(4) primary key,
MaKH varchar(5),
LoaiPhong varchar(1),
DonGia int,
GhiChu nvarchar(100),
TinhTrang nvarchar(20),
constraint fk_DSPhong_MaKH foreign key(MaKH) references KhachHang(MaKH)
)
GO

CREATE TABLE DichVu
(
MaDV varchar(5) primary key,
TenDV nvarchar(50) ,
DonGia int,
)

CREATE TABLE HoaDon
(
MaHD varchar(5) primary key,
MaKH varchar (5),
MaDV varchar(5),
SoPhong varchar(4),
NgayBatDau date,
NgayTraPhong date ,
SoNgayThue int ,
GiaPhong int,
GiaDV int,
TongTien int,
NgayTaoHD datetime default getdate(),
constraint fk_HoaDon_SoPhong foreign key(SoPhong) references DSPhong(SoPhong),
constraint fk_HoaDon_MaKH foreign key(MaKH) references KhachHang(MaKH),
constraint fk_HoaDon_MaDV foreign key(MaDV) references DichVu(MaDV)
)
GO

CREATE TABLE DangNhap
(
TaiKhoan varchar(10),
MatKhau varchar(25)
)
GO

INSERT INTO KhachHang
VALUES
('1',N'Nguy?n B?o Ng?c',N'N?i ??a','',N'N?','020100002314','0933111296',N'Vi?t Nam'),
('2',N'Ph?m Gia An',N'N?i ??a',N'S? 10, ngõ 20, ???ng La Thành, qu?n Ba ?ình, Hà N?i','Nam','','0908475290',N'Vi?t Nam'),
('3',N'Nguy?n Gia Nguyên',N'N?i ??a',N'17, ???ng Lê L?i, qu?n 1, thành ph? H? Chí Minh','Nam','079000003541','0923035130',N'Vi?t Nam'),
('4',N'?oàn Di?m My',N'N?i ??a','',N'N?','','0975385853',N'Vi?t Nam'),
('5',N'Phan Nguy?n Duy Khánh',N'N?i ??a',N'390/7 ???ng 3/2 Ph??ng 12 Qu?n 10,thành ph? H? Chí Minh','Nam','07930000512','0120780745',N'Vi?t Nam'),
('6',N'??ng Minh Quân',N'N?i ??a','','Nam','','0986810782',N'Vi?t Nam'),
('7',N'Tr?n Th?o Nhi',N'N?i ??a','',N'N?','','0967675782',N'Vi?t Nam'),
('8',N'Nguy?n Minh Khang',N'N?i ??a',N'S? 89, ph? Tô V?nh Di?n, ph??ng Kh??ng Trung, qu?n Thanh Xuân, thành ph? Hà N?i','Nam','','0786574686',N'Vi?t Nam'),
('9',N'?? Cát Tiên',N'N?i ??a','',N'N?','','0792375394',N'Vi?t Nam'),
('10',N'Nguy?n Ng?c Thanh Tâm',N'N?i ??a','','Nam','','0984069125',N'Vi?t Nam'),
('11','Alex Nguyen',N'Qu?c t?','',N'N?','','0987113433',N'M?')
GO

INSERT INTO KhachHang
VALUES
('12',N'Nguy?n Th? H??ng Giang',N'N?i ??a',N'321, ???ng L?c Long Quân, qu?n 11, thành ph? H? Chí Minh',N'N?','079300008941','0923084987',N'Vi?t Nam'),
('13','Max Crystal',N'Qu?c t?','','Nam','','0969361643','Canada'),
('14',N'Lê Nh?t Minh',N'N?i ??a',N'T? 33, ?p 4, Xã An Thái Trung, Huy?n Cái Bè, T?nh Ti?n Giang','Nam','','0987290647',N'Vi?t Nam'),
('15',N'Lý Thanh Xuân',N'N?i ??a',N'345 Tôn ??n, Ph??ng 4, Qu?n 4, thành ph? H? Chí Minh',N'N?','','0734822560',N'Vi?t Nam'),
('16',N'Lê Nguy?n Hoàng Lan',N'N?i ??a','',N'N?','023100005681','0759210127',N'Vi?t Nam'),
('17',N'Ph?m Di?m My',N'N?i ??a','',N'N?','','0977764750',N'Vi?t Nam'),
('18',N'Cao Ng?c Y?n Nhi',N'N?i ??a','',N'N?','','0727727266',N'Vi?t Nam'),
('19',N'??ng Trúc Lâm',N'N?i ??a','','Nam','','0908018346',N'Vi?t Nam'),
('20',N'Lê Thanh Trúc',N'N?i ??a','',N'N?','','0896632145',N'Vi?t Nam'),
('21',N'H? Thanh Th?o',N'N?i ??a','',N'N?','','0954812359',N'Vi?t Nam'),
('22',N'Ngô Qu?c Tu?n',N'N?i ??a','','Nam','','0625663281',N'Vi?t Nam')
GO

INSERT INTO DichVu
VALUES
('DV001',N'C?m s??n','35000'),
('DV002',N'Mì xào bò','35000'),
('DV003',N'Bánh mì tr?ng','25000'),
('DV004',N'C?m chiên gà','40000'),
('DV005',N'Bánh mi ch?o','50000'),
('DV006',N'Sinh t? dâu','30000'),
('DV007',N'Sinh t? b?','30000'),
('DV008',N'Bánh g?o Hàn Qu?c','40000'),
('DV009',N'Ph? bò','50000'),
('DV010',N'Mì tr?n tr?ng','30000'),
('DV011',N'N??c ng?t','20000'),
('DV012',N'Mì gói không','10000'),
('DV013',N'Bia','20000'),
('DV014',N'N??c sâm','10000'),
('DV015',N'N??c su?i','8000'),
('DV016',N'Kh?n t?m','25000')
GO

INSERT INTO DSPhong
VALUES
('101','14','A','100000','Phòng ??n',''),
('102','10','A','100000','Phòng ??n',''),
('103','22','A','100000','Phòng ??n',''),
('104','9','B','120000','Phòng ?ôi',''),
('105','7','B','120000','Phòng ?ôi',''),
('106','1','B','120000','Phòng ?ôi',''),
('201','3','B','120000','Phòng ?ôi',''),
('202','8','B','100000','Phòng ?ôi',''),
('203','4','B','120000','Phòng ?ôi',''),
('204','11','B','120000','Phòng ?ôi','')
GO

INSERT INTO DSPhong
VALUES
('205','12','B','129000','Phòng ?ôi',''),
('206','15','C','200000','Phòng Ba',''),
('207','7','B','129000','Phòng ?ôi',''),
('208','9','C','200000','Phòng Ba',''),
('209','21','C','200000','Phòng Ba',''),
('300','5','C','200000','Phòng Ba',''),
('301','21','A','100000','Phòng ??n',''),
('302','18','B','129000','Phòng ?ôi',''),
('303','14','C','200000','Phòng Ba',''),
('304','11','A','100000','Phòng ??n','')
GO

INSERT INTO DangNhap
VALUES
('admin','Admin456.'),
('casher','Chaser123.')
GO
