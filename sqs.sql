USE [QLKHACHSAN]
GO
/****** Object:  Table [dbo].[BaoCaoDoanhThu]    Script Date: 20/1/2021 9:17:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaoCaoDoanhThu](
	[MaBaoCaoDT] [nchar](10) NOT NULL,
	[Thang] [nchar](20) NOT NULL,
	[TongDoanhThu] [float] NOT NULL,
	[Xoa] [int] NULL DEFAULT ((0)),
	[Nam] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBaoCaoDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BaoCaoMDSD]    Script Date: 20/1/2021 9:17:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaoCaoMDSD](
	[MaBaoCaoMDSD] [nchar](10) NOT NULL,
	[Thang] [nchar](20) NOT NULL,
	[Xoa] [int] NULL DEFAULT ((0)),
	[Nam] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBaoCaoMDSD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CT_BaoCaoDT]    Script Date: 20/1/2021 9:17:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_BaoCaoDT](
	[MaCTBaoCaoDT] [nchar](10) NOT NULL,
	[MaBaoCaoDT] [nchar](10) NOT NULL,
	[MaLoaiPhong] [nchar](10) NOT NULL,
	[DoanhThu] [float] NOT NULL,
	[TyLe] [nchar](10) NOT NULL,
 CONSTRAINT [PK__CT_BaoCa__BACD543563DE6539] PRIMARY KEY CLUSTERED 
(
	[MaCTBaoCaoDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CT_BaoCaoMDSD]    Script Date: 20/1/2021 9:17:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_BaoCaoMDSD](
	[MaCTBaoCaoMDSD] [nchar](10) NOT NULL,
	[MaBaoCaoMDSD] [nchar](10) NOT NULL,
	[MaPhong] [nchar](10) NOT NULL,
	[SoNgayThue] [int] NOT NULL,
	[TyLe] [nchar](10) NOT NULL,
 CONSTRAINT [PK__CT_BaoCa__D2B2E9DA19252721] PRIMARY KEY CLUSTERED 
(
	[MaCTBaoCaoMDSD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CT_HoaDon]    Script Date: 20/1/2021 9:17:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_HoaDon](
	[MaCTHoaDon] [nchar](10) NOT NULL,
	[MaHoaDon] [nchar](10) NOT NULL,
	[MaPhieuThuePhong] [nchar](10) NOT NULL,
	[SoNgayThue] [int] NOT NULL,
	[ThanhTien] [float] NOT NULL,
	[TriGia] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCTHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CT_PhieuThuePhong]    Script Date: 20/1/2021 9:17:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PhieuThuePhong](
	[MaCTPhieuThuePhong] [nchar](10) NOT NULL,
	[MaPhieuThuePhong] [nchar](10) NOT NULL,
	[MaKhachHang] [nchar](10) NOT NULL,
 CONSTRAINT [PK__CT_Phieu__120E76BB0B69007D] PRIMARY KEY CLUSTERED 
(
	[MaCTPhieuThuePhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhMucPhong]    Script Date: 20/1/2021 9:17:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMucPhong](
	[MaDMPhong] [nchar](10) NOT NULL,
	[Xoa] [int] NULL DEFAULT ((0)),
	[TenDMP] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDMPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDonTT]    Script Date: 20/1/2021 9:17:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonTT](
	[MaHoaDon] [nchar](10) NOT NULL,
	[MaKhachhang] [nchar](10) NOT NULL,
	[NgayThanhToan] [date] NOT NULL,
	[TriGia] [float] NOT NULL,
	[Xoa] [int] NULL CONSTRAINT [DF__HoaDonTT__Xoa__4BAC3F29]  DEFAULT ((0)),
 CONSTRAINT [PK__HoaDonTT__835ED13BC2596062] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 20/1/2021 9:17:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKhachHang] [nchar](10) NOT NULL,
	[TenKhachHang] [nvarchar](100) NOT NULL,
	[CMND] [nchar](20) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[MaLoaiKhachHang] [nchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiKhachHang]    Script Date: 20/1/2021 9:17:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiKhachHang](
	[MaLoaiKhachHang] [nchar](10) NOT NULL,
	[TenLoaiKhachHang] [nvarchar](100) NOT NULL,
	[HeSo] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiPhong]    Script Date: 20/1/2021 9:17:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiPhong](
	[MaLoaiPhong] [nchar](10) NOT NULL,
	[DonGia] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuThuePhong]    Script Date: 20/1/2021 9:17:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuThuePhong](
	[MaPhieuThuePhong] [nchar](10) NOT NULL,
	[MaPhong] [nchar](10) NOT NULL,
	[NgayBatDauThue] [date] NOT NULL,
	[Xoa] [int] NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[MaPhieuThuePhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Phong]    Script Date: 20/1/2021 9:17:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[MaPhong] [nchar](10) NOT NULL,
	[TinhTrang] [nvarchar](20) NOT NULL,
	[MaLoaiPhong] [nchar](10) NOT NULL,
	[MaDanhMucPhong] [nchar](10) NULL,
	[TenPhong] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[BaoCaoDoanhThu] ([MaBaoCaoDT], [Thang], [TongDoanhThu], [Xoa], [Nam]) VALUES (N'BCDT1     ', N'1                   ', 0, 0, N'2021      ')
INSERT [dbo].[BaoCaoMDSD] ([MaBaoCaoMDSD], [Thang], [Xoa], [Nam]) VALUES (N'BCMD1     ', N'1                   ', 0, N'2021      ')
INSERT [dbo].[BaoCaoMDSD] ([MaBaoCaoMDSD], [Thang], [Xoa], [Nam]) VALUES (N'BCMD2     ', N'1                   ', 0, N'2021      ')
INSERT [dbo].[CT_BaoCaoDT] ([MaCTBaoCaoDT], [MaBaoCaoDT], [MaLoaiPhong], [DoanhThu], [TyLe]) VALUES (N'CTDT1     ', N'BCDT1     ', N'A         ', 300000, N'0         ')
INSERT [dbo].[CT_BaoCaoDT] ([MaCTBaoCaoDT], [MaBaoCaoDT], [MaLoaiPhong], [DoanhThu], [TyLe]) VALUES (N'CTDT2     ', N'BCDT1     ', N'C         ', 800000, N'0         ')
INSERT [dbo].[CT_BaoCaoMDSD] ([MaCTBaoCaoMDSD], [MaBaoCaoMDSD], [MaPhong], [SoNgayThue], [TyLe]) VALUES (N'CTMD1     ', N'BCMD2     ', N'PH1       ', 1, N'17%       ')
INSERT [dbo].[CT_BaoCaoMDSD] ([MaCTBaoCaoMDSD], [MaBaoCaoMDSD], [MaPhong], [SoNgayThue], [TyLe]) VALUES (N'CTMD2     ', N'BCMD2     ', N'PH2       ', 1, N'17%       ')
INSERT [dbo].[CT_BaoCaoMDSD] ([MaCTBaoCaoMDSD], [MaBaoCaoMDSD], [MaPhong], [SoNgayThue], [TyLe]) VALUES (N'CTMD3     ', N'BCMD2     ', N'PH6       ', 2, N'33%       ')
INSERT [dbo].[CT_BaoCaoMDSD] ([MaCTBaoCaoMDSD], [MaBaoCaoMDSD], [MaPhong], [SoNgayThue], [TyLe]) VALUES (N'CTMD4     ', N'BCMD2     ', N'PH7       ', 2, N'33%       ')
INSERT [dbo].[CT_BaoCaoMDSD] ([MaCTBaoCaoMDSD], [MaBaoCaoMDSD], [MaPhong], [SoNgayThue], [TyLe]) VALUES (N'CTMD5     ', N'BCMD3     ', N'PH1       ', 1, N'14%       ')
INSERT [dbo].[CT_BaoCaoMDSD] ([MaCTBaoCaoMDSD], [MaBaoCaoMDSD], [MaPhong], [SoNgayThue], [TyLe]) VALUES (N'CTMD6     ', N'BCMD3     ', N'PH2       ', 1, N'14%       ')
INSERT [dbo].[CT_BaoCaoMDSD] ([MaCTBaoCaoMDSD], [MaBaoCaoMDSD], [MaPhong], [SoNgayThue], [TyLe]) VALUES (N'CTMD7     ', N'BCMD3     ', N'PH3       ', 1, N'14%       ')
INSERT [dbo].[CT_BaoCaoMDSD] ([MaCTBaoCaoMDSD], [MaBaoCaoMDSD], [MaPhong], [SoNgayThue], [TyLe]) VALUES (N'CTMD8     ', N'BCMD3     ', N'PH6       ', 2, N'29%       ')
INSERT [dbo].[CT_BaoCaoMDSD] ([MaCTBaoCaoMDSD], [MaBaoCaoMDSD], [MaPhong], [SoNgayThue], [TyLe]) VALUES (N'CTMD9     ', N'BCMD3     ', N'PH7       ', 2, N'29%       ')
INSERT [dbo].[CT_HoaDon] ([MaCTHoaDon], [MaHoaDon], [MaPhieuThuePhong], [SoNgayThue], [ThanhTien], [TriGia]) VALUES (N'CTHD1     ', N'HD1       ', N'PTP1      ', 2, 200000, 400000)
INSERT [dbo].[CT_HoaDon] ([MaCTHoaDon], [MaHoaDon], [MaPhieuThuePhong], [SoNgayThue], [ThanhTien], [TriGia]) VALUES (N'CTHD2     ', N'HD1       ', N'PTP2      ', 2, 200000, 400000)
INSERT [dbo].[CT_HoaDon] ([MaCTHoaDon], [MaHoaDon], [MaPhieuThuePhong], [SoNgayThue], [ThanhTien], [TriGia]) VALUES (N'CTHD3     ', N'HD1       ', N'PTP4      ', 1, 150000, 150000)
INSERT [dbo].[CT_HoaDon] ([MaCTHoaDon], [MaHoaDon], [MaPhieuThuePhong], [SoNgayThue], [ThanhTien], [TriGia]) VALUES (N'CTHD4     ', N'HD2       ', N'PTP3      ', 1, 150000, 150000)
INSERT [dbo].[CT_HoaDon] ([MaCTHoaDon], [MaHoaDon], [MaPhieuThuePhong], [SoNgayThue], [ThanhTien], [TriGia]) VALUES (N'CTHD5     ', N'HD3       ', N'PTP5      ', 1, 150000, 150000)
INSERT [dbo].[CT_PhieuThuePhong] ([MaCTPhieuThuePhong], [MaPhieuThuePhong], [MaKhachHang]) VALUES (N'CTPTP1    ', N'PTP1      ', N'KH1       ')
INSERT [dbo].[CT_PhieuThuePhong] ([MaCTPhieuThuePhong], [MaPhieuThuePhong], [MaKhachHang]) VALUES (N'CTPTP2    ', N'PTP1      ', N'KH2       ')
INSERT [dbo].[CT_PhieuThuePhong] ([MaCTPhieuThuePhong], [MaPhieuThuePhong], [MaKhachHang]) VALUES (N'CTPTP3    ', N'PTP2      ', N'KH2       ')
INSERT [dbo].[CT_PhieuThuePhong] ([MaCTPhieuThuePhong], [MaPhieuThuePhong], [MaKhachHang]) VALUES (N'CTPTP4    ', N'PTP3      ', N'KH3       ')
INSERT [dbo].[CT_PhieuThuePhong] ([MaCTPhieuThuePhong], [MaPhieuThuePhong], [MaKhachHang]) VALUES (N'CTPTP5    ', N'PTP3      ', N'KH4       ')
INSERT [dbo].[CT_PhieuThuePhong] ([MaCTPhieuThuePhong], [MaPhieuThuePhong], [MaKhachHang]) VALUES (N'CTPTP6    ', N'PTP4      ', N'KH2       ')
INSERT [dbo].[CT_PhieuThuePhong] ([MaCTPhieuThuePhong], [MaPhieuThuePhong], [MaKhachHang]) VALUES (N'CTPTP7    ', N'PTP5      ', N'KH1       ')
INSERT [dbo].[CT_PhieuThuePhong] ([MaCTPhieuThuePhong], [MaPhieuThuePhong], [MaKhachHang]) VALUES (N'CTPTP8    ', N'PTP5      ', N'KH5       ')
INSERT [dbo].[CT_PhieuThuePhong] ([MaCTPhieuThuePhong], [MaPhieuThuePhong], [MaKhachHang]) VALUES (N'CTPTP9    ', N'PTP5      ', N'KH2       ')
INSERT [dbo].[DanhMucPhong] ([MaDMPhong], [Xoa], [TenDMP]) VALUES (N'DMP1      ', 0, N'VIP')
INSERT [dbo].[DanhMucPhong] ([MaDMPhong], [Xoa], [TenDMP]) VALUES (N'DMP2      ', 0, N'Thường')
INSERT [dbo].[DanhMucPhong] ([MaDMPhong], [Xoa], [TenDMP]) VALUES (N'DMP3      ', 1, N'B1')
INSERT [dbo].[DanhMucPhong] ([MaDMPhong], [Xoa], [TenDMP]) VALUES (N'DMP4      ', 0, N'Cao cấp')
INSERT [dbo].[HoaDonTT] ([MaHoaDon], [MaKhachhang], [NgayThanhToan], [TriGia], [Xoa]) VALUES (N'HD1       ', N'KH2       ', CAST(N'2021-01-20' AS Date), 950000, 0)
INSERT [dbo].[HoaDonTT] ([MaHoaDon], [MaKhachhang], [NgayThanhToan], [TriGia], [Xoa]) VALUES (N'HD2       ', N'KH3       ', CAST(N'2021-01-20' AS Date), 150000, 0)
INSERT [dbo].[HoaDonTT] ([MaHoaDon], [MaKhachhang], [NgayThanhToan], [TriGia], [Xoa]) VALUES (N'HD3       ', N'KH5       ', CAST(N'2021-01-20' AS Date), 150000, 0)
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [CMND], [DiaChi], [MaLoaiKhachHang]) VALUES (N'KH1       ', N'Trần Quốc Tân', N'261610393           ', N'Quận 7 - Hồ Chí Minh', N'LKH1      ')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [CMND], [DiaChi], [MaLoaiKhachHang]) VALUES (N'KH2       ', N'Leo Messi', N'1234                ', N'Argentina', N'LKH2      ')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [CMND], [DiaChi], [MaLoaiKhachHang]) VALUES (N'KH3       ', N'Tan Ne', N'12341234            ', N'12345', N'LKH1      ')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [CMND], [DiaChi], [MaLoaiKhachHang]) VALUES (N'KH4       ', N'Thang ne', N'123412345           ', N'12345', N'LKH1      ')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [CMND], [DiaChi], [MaLoaiKhachHang]) VALUES (N'KH5       ', N'Võ Toàn Thắng', N'261610392           ', N'Quận 8', N'LKH1      ')
INSERT [dbo].[LoaiKhachHang] ([MaLoaiKhachHang], [TenLoaiKhachHang], [HeSo]) VALUES (N'LKH1      ', N'Nội địa', 1)
INSERT [dbo].[LoaiKhachHang] ([MaLoaiKhachHang], [TenLoaiKhachHang], [HeSo]) VALUES (N'LKH2      ', N'Ngoại địa', 1.5)
INSERT [dbo].[LoaiPhong] ([MaLoaiPhong], [DonGia]) VALUES (N'A         ', 150000)
INSERT [dbo].[LoaiPhong] ([MaLoaiPhong], [DonGia]) VALUES (N'B         ', 170000)
INSERT [dbo].[LoaiPhong] ([MaLoaiPhong], [DonGia]) VALUES (N'C         ', 200000)
INSERT [dbo].[PhieuThuePhong] ([MaPhieuThuePhong], [MaPhong], [NgayBatDauThue], [Xoa]) VALUES (N'PTP1      ', N'PH6       ', CAST(N'2021-01-19' AS Date), 0)
INSERT [dbo].[PhieuThuePhong] ([MaPhieuThuePhong], [MaPhong], [NgayBatDauThue], [Xoa]) VALUES (N'PTP2      ', N'PH7       ', CAST(N'2021-01-19' AS Date), 0)
INSERT [dbo].[PhieuThuePhong] ([MaPhieuThuePhong], [MaPhong], [NgayBatDauThue], [Xoa]) VALUES (N'PTP3      ', N'PH1       ', CAST(N'2021-01-20' AS Date), 0)
INSERT [dbo].[PhieuThuePhong] ([MaPhieuThuePhong], [MaPhong], [NgayBatDauThue], [Xoa]) VALUES (N'PTP4      ', N'PH2       ', CAST(N'2021-01-20' AS Date), 0)
INSERT [dbo].[PhieuThuePhong] ([MaPhieuThuePhong], [MaPhong], [NgayBatDauThue], [Xoa]) VALUES (N'PTP5      ', N'PH3       ', CAST(N'2021-01-20' AS Date), 0)
INSERT [dbo].[Phong] ([MaPhong], [TinhTrang], [MaLoaiPhong], [MaDanhMucPhong], [TenPhong]) VALUES (N'PH1       ', N'Đang thuê', N'A         ', N'DMP2      ', N'A1        ')
INSERT [dbo].[Phong] ([MaPhong], [TinhTrang], [MaLoaiPhong], [MaDanhMucPhong], [TenPhong]) VALUES (N'PH2       ', N'Đang thuê', N'A         ', N'DMP2      ', N'A2        ')
INSERT [dbo].[Phong] ([MaPhong], [TinhTrang], [MaLoaiPhong], [MaDanhMucPhong], [TenPhong]) VALUES (N'PH3       ', N'Đang thuê', N'A         ', N'DMP3      ', N'A3        ')
INSERT [dbo].[Phong] ([MaPhong], [TinhTrang], [MaLoaiPhong], [MaDanhMucPhong], [TenPhong]) VALUES (N'PH4       ', N'Trống', N'B         ', N'DMP4      ', N'B1        ')
INSERT [dbo].[Phong] ([MaPhong], [TinhTrang], [MaLoaiPhong], [MaDanhMucPhong], [TenPhong]) VALUES (N'PH5       ', N'Trống', N'B         ', N'DMP4      ', N'B2        ')
INSERT [dbo].[Phong] ([MaPhong], [TinhTrang], [MaLoaiPhong], [MaDanhMucPhong], [TenPhong]) VALUES (N'PH6       ', N'Đang thuê', N'C         ', N'DMP1      ', N'C1        ')
INSERT [dbo].[Phong] ([MaPhong], [TinhTrang], [MaLoaiPhong], [MaDanhMucPhong], [TenPhong]) VALUES (N'PH7       ', N'Đang thuê', N'C         ', N'DMP1      ', N'C2        ')
INSERT [dbo].[Phong] ([MaPhong], [TinhTrang], [MaLoaiPhong], [MaDanhMucPhong], [TenPhong]) VALUES (N'PH8       ', N'Trống', N'C         ', NULL, N'C3        ')
ALTER TABLE [dbo].[CT_BaoCaoDT]  WITH CHECK ADD  CONSTRAINT [FK_CTBaoCaoDT_BaoCaoDT] FOREIGN KEY([MaBaoCaoDT])
REFERENCES [dbo].[BaoCaoDoanhThu] ([MaBaoCaoDT])
GO
ALTER TABLE [dbo].[CT_BaoCaoDT] CHECK CONSTRAINT [FK_CTBaoCaoDT_BaoCaoDT]
GO
ALTER TABLE [dbo].[CT_BaoCaoDT]  WITH CHECK ADD  CONSTRAINT [FK_CTBaoCaoDT_LoaiPhong] FOREIGN KEY([MaLoaiPhong])
REFERENCES [dbo].[LoaiPhong] ([MaLoaiPhong])
GO
ALTER TABLE [dbo].[CT_BaoCaoDT] CHECK CONSTRAINT [FK_CTBaoCaoDT_LoaiPhong]
GO
ALTER TABLE [dbo].[CT_HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_CTHoaDon_HoaDonTT] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[HoaDonTT] ([MaHoaDon])
GO
ALTER TABLE [dbo].[CT_HoaDon] CHECK CONSTRAINT [FK_CTHoaDon_HoaDonTT]
GO
ALTER TABLE [dbo].[CT_HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_CTHoaDon_PhieuThuePhong] FOREIGN KEY([MaPhieuThuePhong])
REFERENCES [dbo].[PhieuThuePhong] ([MaPhieuThuePhong])
GO
ALTER TABLE [dbo].[CT_HoaDon] CHECK CONSTRAINT [FK_CTHoaDon_PhieuThuePhong]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_LoaiKhachHang] FOREIGN KEY([MaLoaiKhachHang])
REFERENCES [dbo].[LoaiKhachHang] ([MaLoaiKhachHang])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_LoaiKhachHang]
GO
ALTER TABLE [dbo].[PhieuThuePhong]  WITH CHECK ADD  CONSTRAINT [FK_PhieuThuePhong_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[PhieuThuePhong] CHECK CONSTRAINT [FK_PhieuThuePhong_Phong]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_LoaiPhong] FOREIGN KEY([MaLoaiPhong])
REFERENCES [dbo].[LoaiPhong] ([MaLoaiPhong])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_LoaiPhong]
GO
