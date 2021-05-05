CREATE DATABASE QLKHACHSAN
GO

USE QLKHACHSAN
GO

CREATE TABLE KhachHang
(
MaKH varchar(5) primary key,
TenKH nvarchar(30) not null,
LoaiKhach nvarchar(20),
GioiTinh nvarchar(8),
CMND varchar(12) ,
SDT varchar(10) not null,
)
GO

CREATE TABLE DSPhong
(
MaPhong varchar(4) primary key,
LoaiPhong varchar(1),
DonGia int,
SoLuongKH int,
TinhTrang nvarchar(20),
)
GO

CREATE TABLE DichVu
(
MaDV varchar(5) primary key,
TenDV nvarchar(50) ,
DonGia int,
)
GO

CREATE TABLE Kho
(
MaDV varchar(5) ,
SoLuong int,
constraint fk_Kho_DichVu foreign key(MaDV) references DichVu(MaDV),
)
GO


CREATE TABLE PhieuThuePhong
(
MaPTP varchar(5) primary key,
MaKH varchar (5),
MaDV varchar(5),
MaPhong varchar(4),
NgayBatDau date,
NgayTraPhong date ,
SoNgayThue int ,
TongTien int,
constraint fk_HoaDon_MaPhong foreign key(MaPhong) references DSPhong(MaPhong),
constraint fk_HoaDon_MaKH foreign key(MaKH) references KhachHang(MaKH),
constraint fk_HoaDon_MaDV foreign key(MaDV) references DichVu(MaDV)
)
GO

CREATE TABLE BaoCao
(
NgayBC date default getdate(),
TongPTP int,
TongDoanhThu int,
)
GO




