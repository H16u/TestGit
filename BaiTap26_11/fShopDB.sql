CREATE DATABASE [fShopDB]
GO
USE [fShopDB]
GO
--Tạo bảng
DROP TABLE [dbo].[Hang]
CREATE TABLE [dbo].[Hang](
[MaHang] [char](10) NOT NULL PRIMARY KEY,
[MaNCC] [char](10) NOT NULL,
[TenHang] [nvarchar](255) NOT NULL,
[Gia] [decimal](8, 2) NULL,
[LuongCo] [decimal](8, 2) NOT NULL,
[MoTa] [nvarchar](1000) NULL,
[ChietKhau] [decimal](8, 2) NULL,
[HinhAnh] [nvarchar](100) NULL
)
GO
DROP TABLE [dbo].[Nha_CC]
CREATE TABLE [dbo].[Nha_CC](
[MaNCC] [char](10) NOT NULL PRIMARY KEY,
[TenNCC] [nvarchar](50) NOT NULL,
[DiaChi] [nvarchar](50) NULL,
[DienThoai] [char](15) NULL,
[Email] [nvarchar](50) NULL
)
GO
--Tạo các khóa ngoài
ALTER TABLE [dbo].[Hang] WITH CHECK ADD CONSTRAINT [FKh_Hang_Nha_CC] FOREIGN 
KEY([MaNCC]) 
REFERENCES [dbo].[Nha_CC] ([MaNCC])
GO
--Chèn dữ liệu cho các bảng
delete from Hang
Insert into Hang(MaHang,MaNCC,TenHang,Gia,LuongCo,MoTa,ChietKhau,HinhAnh) values('M01','01',N'Rượu vang',20000,5,N'Đây là rượu vang',5,'Hinh1')
Insert into Hang(MaHang,MaNCC,TenHang,Gia,LuongCo,MoTa,ChietKhau,HinhAnh) values('M02','02',N'Rượu Whisky',50000,5,N'Đây là rượu Whisky',10,'Hinh2')
--Chèn dữ liệu cho bảng 
--delete from Nha_CC
Insert into Nha_CC(MaNCC,TenNCC,DiaChi,DienThoai,Email) values ('01','Mỹ Tho',N'Hà Nội',0123456,'mt123@gmail.com')
Insert into Nha_CC(MaNCC,TenNCC,DiaChi,DienThoai,Email) values ('02','Mỹ Đình',N'Hà Lội',0456789,'mt456@gmail.com')
select* from Hang
select* from Nha_CC