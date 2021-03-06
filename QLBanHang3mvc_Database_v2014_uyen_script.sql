CREATE DATABASE [QLBanHang3mvc]
GO
USE [QLBanHang3mvc]
GO
/****** Object:  Table [dbo].[ChungLoai]    Script Date: 10/7/2019 4:53:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChungLoai](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChungLoai] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HangHoa]    Script Date: 10/7/2019 4:53:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangHoa](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaSo] [varchar](10) NOT NULL,
	[Ten] [nvarchar](200) NOT NULL,
	[DonViTinh] [nvarchar](50) NULL,
	[MoTa] [nvarchar](max) NULL,
	[ThongSoKyThuat] [nvarchar](max) NULL,
	[TenHinh] [nvarchar](max) NULL,
	[GiaBan] [int] NOT NULL,
	[LoaiID] [int] NULL,
	[NgayTao] [datetime] NOT NULL,
	[NgayCapNhat] [datetime] NOT NULL,
 CONSTRAINT [PK__HANG_HOA__3214EC271027AC28] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 10/7/2019 4:53:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NgayDatHang] [datetime] NOT NULL,
	[HoTenKhach] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](150) NULL,
	[DienThoai] [varchar](30) NULL,
	[Email] [varchar](50) NULL,
	[TongTien] [int] NOT NULL,
 CONSTRAINT [PK_HoaDon_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDonChiTiet]    Script Date: 10/7/2019 4:53:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonChiTiet](
	[HoaDonID] [int] NOT NULL,
	[HangHoaID] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [int] NOT NULL,
	[ThanhTien] [int] NOT NULL,
 CONSTRAINT [PK_HoaDonChiTiet] PRIMARY KEY CLUSTERED 
(
	[HoaDonID] ASC,
	[HangHoaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Loai]    Script Date: 10/7/2019 4:53:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaSo] [varchar](10) NOT NULL,
	[Ten] [nvarchar](100) NOT NULL,
	[ChungLoaiID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[ChungLoai] ON 

INSERT [dbo].[ChungLoai] ([ID], [Ten]) VALUES (1, N'Máy tính')
INSERT [dbo].[ChungLoai] ([ID], [Ten]) VALUES (2, N'Điện lạnh')
INSERT [dbo].[ChungLoai] ([ID], [Ten]) VALUES (3, N'Máy ảnh-Quay phim')
INSERT [dbo].[ChungLoai] ([ID], [Ten]) VALUES (4, N'Máy giặt-Máy sấy')
INSERT [dbo].[ChungLoai] ([ID], [Ten]) VALUES (5, N'Đồ gia dụng')
INSERT [dbo].[ChungLoai] ([ID], [Ten]) VALUES (6, N'Điện thoại-phụ kiện')
INSERT [dbo].[ChungLoai] ([ID], [Ten]) VALUES (7, N'Máy in-Thiết bị VP')
INSERT [dbo].[ChungLoai] ([ID], [Ten]) VALUES (8, N'Tivi')
SET IDENTITY_INSERT [dbo].[ChungLoai] OFF
SET IDENTITY_INSERT [dbo].[HangHoa] ON 

INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (1, N'MA001', N'MÁY ẢNH PANASONIC DMC-SZ3GA-K (ĐEN)', N'Chiếc', NULL, NULL, N'panasonic-den-product.jpg', 6690000, 1, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (2, N'MA002', N'MÁY ẢNH KTS PANASONIC LUMIX DMC-ZS8 14.1MP', N'Chiếc', N'Hàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu.', N'Máy ảnh KTS Panasonic Lumix DMC-ZS8 14.1MP & Zoom quang 16x (Đen) – Hàng nhập khẩu
theo Panasonic | Xem thêm Panasonic Máy ảnh du lịch
 Hãy là người đâu tiên đánh giá sản phẩm này
 Tôi thích sản phẩm này!
 
 
 
 
Bảo hành 12 tháng (bằng phiếu bảo hành)
Xuất xứ Nhật Bản
Màn hình 3
Zoom quang 16x
Megapixels: 14.1
Độ phân giải 14.1
Sử dụng pin Lithium-Ion
3.499.000 VND
Giá trước đây 6.999.000 VND , Tiết kiệm 50%
Hướng dẫn 
mua hàngMua ngay
Còn hàng
Giao trong : 2 - 6 ngày 
Được bán & giao hàng bởi Ngoc Dung Camera
Kiểm tra các dịch vụ giao hàng tại:
Tỉnh/Thành phố:
Quận/Huyện:
Giao hàng hỏa tốc có thể được áp dụng  
 THANH TOÁN KHI NHẬN HÀNG  THẺ TÍN DỤNG  THẺ ATM NỘI ĐỊA
Chi tiết sản phẩmThông tin sản phẩmNhận xét của khách hàng
Chi tiết sản phẩm Máy ảnh KTS Panasonic Lumix DMC-ZS8 14.1MP & Zoom quang 16x (Đen) – Hàng nhập khẩu
Bộ sản phẩm bao gồm:
1 x máy
1 x pin
1 x sạc
1 x dây usb
1 x dây AV
1 x cataloge
1 x Thẻ nhớ 8GB
1 x Bao da
1 x Miếng dán màn hình
1 x Phiếu bảo hành
HÀNG NHẬP KHẨU
Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.
Hàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu.', N'panasonic-6581-108713-1-product.jpg', 2880000, 1, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (3, N'MA003', N'MÁY ẢNH KTS PANASONIC LUMIX 10.1MP', N'Chiếc', N'Rating & Reviews of Máy ảnh KTS Panasonic Lumix 10.1MP & Zoom quang 3.8x - ModelDMC-LX7 (Đen) – Hàng nhập khẩu', N'TÍNH NĂNG NỔI BẬT
DisplaySize: 3
OpticalZoom: 3.8x
DisplaySize: miniHDMI, AV Output (PAL/NTSC), USB Multi
Bảo hành 12 tháng (bằng phiếu bảo hành)
Sản xuất tại Trung Quốc
 
Độ phân giải 10.1 MPXs, góc chụp siêu rộng 24mm
- Ống kính LEICA DC VARIO-SUMMICRON 3.8x độ mở F2.0
- Bộ xử lý ảnh tiên tiến Venus Engine thế hệ IV
- Độ nhạy sáng ISO lên tới 12.800, chụp Macro 1cm
- Quay phim HD chất lượng cao âm thanh Stereo
- Màn hình 3” độ phân giải tới 460.000 điểm ảnh', N'panasonic-7588-296343-1-product.jpg', 6669000, 1, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (4, N'MA004', N'MÁY ẢNH KTS PANASONIC LUMIX DMC-ZS10 14.1MP', N'Chiếc', N'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.', N'HÀNG NHẬP KHẨU
Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.
Hàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu.
 
TÍNH NĂNG NỔI BẬT
Thông tin chung 
Hãng sản xuất Panasonic TZ / ZS Series 
Độ lớn màn hình LCD (inch) 3.0 inch 
Màu sắc Nhiều màu lựa chọn 
Trọng lượng Camera 196g Kích cỡ máy (Dimensions) 105 x 58 x 33 mm 
Loại thẻ nhớ 
• Secure Digital Card (SD) 
• SD High Capacity (SDHC) 
• SD eXtended Capacity Card (SDXC) 
Bộ nhớ trong (Mb) 18 
Cảm biến hình ảnh 
Bộ Cảm biến hình ảnh (Image Sensor) 
• 1/2.33" Type CCD 
Megapixel (Số điểm ảnh hiệu dụng) 14.1 Megapixel 
Độ nhạy sáng (ISO) Auto ISO 100 200 400 800 1600 
Độ phân giải ảnh lớn nhất 4320 x 3240 
Thông số về Lens 
Độ dài tiêu cự (Focal Length) 24 - 384mm (35mm equiv.) 
Độ mở ống kính (Aperture) F3.3- 5.9 
Tốc độ chụp (Shutter Speed) 60 - 1/4000 sec 
Tự động lấy nét (AF) 
Optical Zoom (Zoom quang) 16x 
Digital Zoom (Zoom số) 4.0x 
Thông số khác 
Định dạng File ảnh 
• JPEG 
• EXIF 
Định dạng File phim 
• AVI 
• AVCHD 
Chuẩn giao tiếp 
• USB 
• DC input 
• AV out 
• HDMI Quay phim Chống rung 
Hệ điều hành (OS) Thuỵ Sỹ', N'panasonic-6617-918713-1-product.jpg', 7950000, 1, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (5, N'MA005', N'MÁY ẢNH NIKON D5300 KIT 18-55MM F/3.5 - 5.6G VRII', N'Chiếc', N'Chất lượng hình ảnh, kết nối và tính năng điều khiển sáng tạo, tất cả đều có trong chiếc máy ảnh số ống kính rời định dạng DX có trọng lượng nhẹ, đầy đủ tính năng này. Cho đến nay, EXPEED 4 mới là bộ xử lý hình ảnh nhanh nhất của chúng tôi và bổ sung bộ cảm biến CMOS 24.2 megapixel. Với chế độ lấy nét tự động 39 điểm, chế độ cân bằng trắng cải tiến và phạm vi độ nhạy sáng rộng, D5300 cho phép bạn chụp được các bức ảnh tuyệt đẹp và quay phim Full HD. Đây là chiếc máy ảnh số ống kính rời đầu tiên của chúng tôi tích hợp sẵn Wi-Fi® , bởi vậy bạn có thể truyền hình ảnh của mình một cách nhanh chóng*. Chức năng GPS của máy ảnh lưu thông tin vị trí cho hình ảnh của bạn. Màn hình lăng kính đa góc 3.2 inch LCD trong suốt cho phép bạn chụp ở bất kỳ góc độ nào. Với nhiều tính năng đổi mới như vậy, D5300 bổ sung thêm các kích thước mới cho việc chụp ảnh.', N'Thông Tin Sản Phẩm Máy Ảnh NiKon D5300 KIT 18-55MM F/3.5 - 5.6G VRII:
Đặc điểm nổi bật:
- Độ phân giải 24.2MP, cảm biến CMOS APS-C
- Bộ xử lý hình ảnh Expeed 4
- Dải ISO 100 - 12800 (mở rộng 25600)
- 39 điểm lấy nét
- Màn hình LCD 3"2
- Chụp liên tiếp 5 hình/giây
- Quay phim Full-HD 60p
- Khe cắm thẻ SD
- Pin EN-EL14a
- Trọng lượng 480 gram
Chất lượng hình ảnh, kết nối và tính năng điều khiển sáng tạo, tất cả đều có trong chiếc máy ảnh số ống kính rời định dạng DX có trọng lượng nhẹ, đầy đủ tính năng này. Cho đến nay, EXPEED 4 mới là bộ xử lý hình ảnh nhanh nhất của chúng tôi và bổ sung bộ cảm biến CMOS 24.2 megapixel. Với chế độ lấy nét tự động 39 điểm, chế độ cân bằng trắng cải tiến và phạm vi độ nhạy sáng rộng, D5300 cho phép bạn chụp được các bức ảnh tuyệt đẹp và quay phim Full HD. Đây là chiếc máy ảnh số ống kính rời đầu tiên của chúng tôi tích hợp sẵn Wi-Fi® , bởi vậy bạn có thể truyền hình ảnh của mình một cách nhanh chóng*. Chức năng GPS của máy ảnh lưu thông tin vị trí cho hình ảnh của bạn. Màn hình lăng kính đa góc 3.2 inch LCD trong suốt cho phép bạn chụp ở bất kỳ góc độ nào. Với nhiều tính năng đổi mới như vậy, D5300 bổ sung thêm các kích thước mới cho việc chụp ảnh.
 
Chất lượng hình ảnh vượt trội nhờ các đổi mới tiên tiến
Với chất lượng và tốc độ nâng cao, bộ xử lý hình ảnh EXPEED 4 là người bạn đồng hành hoàn hảo với cảm biến CMOS định dạng DX 24.2 megapixel. Hãy chụp những hình ảnh RAW 12 bit với độ phân giải tối đa ở tốc độ chụp tối đa 5 khung hình mỗi giây. Chế độ cân bằng trắng được cải tiến đảm bảo trắng rực rỡ, sắc thái màu sắc tuyệt vời hơn, mịn dần và sắc cạnh. 
Tận hưởng độ phân giải tuyệt vời hơn ở bất kỳ góc ánh sáng nào
D5300 được thiết kế không có bộ lọc thông thấp quang học (OLPF), cho phép bộ cảm biến CMOS có độ phân giải cao ghi lại những chi tiết nhỏ nhất với độ chính xác cao. Phạm vi độ nhạy sáng rộng từ ISO100 đến ISO12800 ở chế độ thiết lập bình thường mang đến tính năng giảm tiếng ồn ẩn tượng và có thể mở rộng đến 25600 cho các tình huống rất ít ánh sáng.
Xác định mọi chi tiết với chức năng Lấy Nét Tự Động 39 điểm
Để có được độ sắc nét tối ưu, chức năng lấy nét tự động 39 điểm chính xác của D5300 nhanh chóng khóa và theo dấu đối tượng. Chế độ Theo Dấu 3D của chiếc máy ảnh duy trì khả năng lấy nét ngay cả khi đối tượng di chuyển hướng về hoặc ra xa máy ảnh – thật lý tưởng cho việc quay video và chụp hình thể thao. Chọn từ một loạt chế độ lấy nét ở khu vực lấy nét tự động, bao gồm cả Vùng Rộng AF, Ưu Tiên Lấy Nét Khuôn Mặt AF và Theo Dấu Đối Tượng AF để phù hợp với phong cách chụp ảnh của bạn. 
Chia sẻ dễ dàng - máy ảnh số ống kính rời đầu tiên của chúng tôi tích hợp sẵn Wi-Fi®
Chia sẻ những khoảnh khắc quý giác ngay khi bạn chụp chúng. Đơn giản chỉ cần truyền những bức ảnh vào máy tính hoặc thiết bị di động của bạn bằng chế độ Wi-Fi® tích hợp sẵn của D5300, đây là chiếc máy ảnh đầu tiên có tính năng này của Nikon. Ứng dụng Tiện Ích Di Động Không Dây miễn phí cho phép bạn kiểm soát máy ảnh từ xa bằng thiết bị di động của mình.
 
Ghi nhật ký chuyến đi của bạn bằng chức năng GPS tích hợp sẵn
Khi đi du lịch, ghi GPS và thông tin độ cao cho hình ảnh của bạn để bạn có thể hổi tưởng chuyến phiêu lưu của mình một cách dễ dàng và thuận tiện. Chức năng ghi nhật ký chuyến du lịch tự động lập bản đồ cho hành trình của bạn (với điểm vị trí được ghi vào khoảng thời gian 15, 30 hoặc 60 giây) ngay cả khi tắt máy ảnh. 
Chụp ảnh ở bất kỳ góc độ nào bằng màn hình LCD đa góc 3.2 inch
Màn hình đa góc lớn của D5300 giúp dễ chụp từ nhiều góc hoặc chụp chính quý vị. Tỷ lệ màn hình 3:2 của máy ảnh cung cấp góc nhìn toàn khung rộng hơn so với màn hình thông thường 4:3. Với độ phân giải 1036.8k-dot, góc ngắm 170º và độ sáng được tăng cường, bạn sẽ xem hình ảnh của mình với độ rõ nét cao hơn.
 
 
Sáng tạo với các Hiệu Ứng Đặc Biệt
Cá nhân hóa các hình ảnh của bạn từ máy ảnh có 9 hiệu ứng đặc biệt được tích hợp sẵn, bao gồm Toy Camera và HDR Painting mới. Làm chủ ánh sáng với D-Lighting
Để có được các chế độ cảnh ngược sáng, hãy sử dụng chức năng D-Lighting thông minh để tự động thiết lập độ phơi sáng phù hợp cho đối tượng của bạn trong khi vẫn giữ vẻ đẹp tự nhiên của phông nền.
Quay Phim Full HD mịn ở tỷ lệ khung hình tối đa 1920 x 1080/60p.
D5300 cho phép bạn quay video với chất lượng điện ảnh và âm thanh nổi. Chức năng lấy nét tự động liên tục theo dấu các đối tượng để đảm bảo chuyển động trơn tru và chi tiết rõ nét. Tỷ lệ khung hình có thể được thiết lập ở 60p/50p/30p/25p/24p cho các tùy chọn video bổ sung.', N'May-Anh-NIKON-D5300.png', 0, 1, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (6, N'MA006', N'MÁY ẢNH NIKON COOLPIX S5200 RED', N'Chiếc', N'S5200 là máy ảnh có thiết kế thời trang, cho ảnh chụp chất lượng. Trang bị cảm biến BSI CMOS 16MP, ống kính Nikkor zoom quang học 6x, tiêu cự từ 26mm đến 156mm (quy đổi định dạng 35mm).
Hơn nữa, máy còn được trang bị nhiều chức năng mới như hiệu ứng Glamour Retouch và tuỳ chọn “continuous” cho chức năng Smile timer...', N'Máy ảnh NIKON COOLPIX S5200
S5200 là máy ảnh có thiết kế thời trang, cho ảnh chụp chất lượng. Trang bị cảm biến BSI CMOS 16MP, ống kính Nikkor zoom quang học 6x, tiêu cự từ 26mm đến 156mm (quy đổi định dạng 35mm).
Hơn nữa, máy còn được trang bị nhiều chức năng mới như hiệu ứng Glamour Retouch và tuỳ chọn “continuous” cho chức năng Smile timer...
Những tính năng chính của COOLPIX S5200
Ống kính Nikkor zoom quang học 6x, tiêu cự từ 25mm đến 156mm (quy đổi định dạng 35mm)
 
Ống kính Nikkor zoom 6x được trang bị trên 1 thân máy nhỏ gọn, có thể mang đi khắp nơi.
Cảm biến BSI CMOS 16MP cho ảnh chụp đẹp trong điều kiện thiếu sáng như chụp trong nhà và chụp phong cảnh đêm
S5200 được  trang bị cảm biến BSI CMOS 16MP cho ảnh chụp đẹp, ít nhiễu khi chụp trong điều kiện ánh sáng yếu. Những lợi ích của cảm biến rõ ràng nhất với bức ảnh chụp được thực hiện trong các hoàn cảnhánh sáng lờ mờ, chẳng hạn như trong nhà hoặc khi chụp phong cảnh đêm.
 
 
Kết nối Wifi dễ dàng
Với việc tích hợp Wi-Fi, S5200 có thể dễ dàng chia sẽ dữ liệu với các thiết bị thông minh. Điều này cho phép người dùng có thể chuyển ảnh chất lượng cao và phim quay được từ S5200 đến các thiết bị thông minh, từ đó có thể tải lên mạng xã hội một cách dễ dàng. Hơn nữa, khi kết nối với các thiết bị thông minh, người dùng có thể dùng các thiết bị này để điều khiển máy ảnh và có thể tự chụp chân dung của chính mình rất dễ dàng.  
 
Nắm bắt những điểm tham quan và âm thanh
Quay phim HD 1080p với âm thanh mang lại kỷ niệm của bạn với cuộc sống.
 
 
Màn hình 3.0 inch
Bạn có thể chỉnh sửa hình ảnh, chia sẽ, xem video HD, với độ phân giải cao 460.000 điểm ảnh, màn hình LCD 3.0inch
8 hiệu ứng chỉnh sửa hình ảnh, bao gồm 5 hiệu ứng Glamour Retouch mới
Cùng với 3 hiệu ứng cũ là Skin Softening, Small Face, Big Eyes, S5200 được trang bị thêm 5 hiệu ứng mới, đó là: Brighten Faces: giúp làm sáng da; Hide Eye Bags: In addition to the original three Glamour Retouch effects (Skin Softening, Small Face, Big Eyes), the following five effects are now also available. Brighten Faces, which lightens skin tones; Hide Eye Bags, giảm vết thâm ở bọng mắt; Whiten Eyesvà Whiten Teeth: làm cho mắt và răng trông trắng hơn; Redden Cheeks: hiệu ứng làm cho má trông hồng hào hơn. Với 8 hiệ ứng này, người dùng có thể tạo ra những bức ảnh đáng nhớ hơn.
 
 
Một loạt các chức năng chụp hình để chụp khuôn mặt tươi cười
Máy tự động nhận dạng nụ cười trên gương mặt . khi chọn chức năng Best Shot Selector (BSS), máy sẽ chụp 5 hình liên tiếp và lưu lại hình đẹp nhất với nụ cười trên gương mặt.', N'MAY-ANH-NIKON-COOLPIX-S5200-RED.jpg,MAY-ANH-NIKON-COOLPIX-S5200-RED-hinh1.jpg,MAY-ANH-NIKON-COOLPIX-S5200-RED-hinh3.jpg,MAY-ANH-NIKON-COOLPIX-S5200-RED-hinh4.jpg', 4900000, 1, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (7, N'MA007', N'MÁY ẢNH NIKON COOLPIX P600 BLACK', N'Chiếc', N'Đối với những người muốn chụp một hình ảnh đẹp và sắc nét ở gần hoặc ở xa, máy ảnh COOLPIX P600 mới tự hào có khả năng thu phóng quang học 60x (tương đương định dạng 24-1440mm, 35mm) và khả năng Thu Phóng Động Giữ Nguyên Độ Nét1120x (tương đương định dạng 2880mm, 35mm) - một phạm vi thu phóng nổi bật cho người dùng có yêu cầu rất cao về hiệu suất và tính linh hoạt. P600 còn có cảm biến CMOS chiếu sáng hậu (BSI) 16.1-megapixel và độ nhạy ISO cao (6400) để đảm bảo đem lại hình ảnh chất lượng ngay cả trong điều kiện ánh sáng yếu. Máy ảnh cho phép chụp macro gần ở khoảng 1cm và có hệ thống xử lý hình ảnh EXPEED C2 hiệu suất cao.', N'Đối với những người muốn chụp một hình ảnh đẹp và sắc nét ở gần hoặc ở xa, máy ảnh COOLPIX P600 mới tự hào có khả năng thu phóng quang học 60x (tương đương định dạng 24-1440mm, 35mm) và khả năng Thu Phóng Động Giữ Nguyên Độ Nét1120x (tương đương định dạng 2880mm, 35mm) - một phạm vi thu phóng nổi bật cho người dùng có yêu cầu rất cao về hiệu suất và tính linh hoạt. P600 còn có cảm biến CMOS chiếu sáng hậu (BSI) 16.1-megapixel và độ nhạy ISO cao (6400) để đảm bảo đem lại hình ảnh chất lượng ngay cả trong điều kiện ánh sáng yếu. Máy ảnh cho phép chụp macro gần ở khoảng 1cm và có hệ thống xử lý hình ảnh EXPEED C2 hiệu suất cao.
 
Ống kính NIKKOR hiệu suất cao bao gồm 16 thành phần trong 11 nhóm với bốn thành phần kính ED và một thành phần kính Siêu ED. Thành phần kính Siêu ED cung cấp hiệu suất tạo hình ảnh cao trong khi vẫn bù trừ quang sai màu để có chất lượng hình ảnh cao ngay cả trong những tình huống chụp tối. 
 
Giảm Độ Rung (VR) khi dịch chuyển ống kính cùng với chế độ ACTIVE mới hỗ trợ chụp ảnh và quay phim sắc nét. Chế độ ACTIVE giúp bù trừ hiệu quả nhòa ảnh do rung máy khi chụp từ phương tiện đang di chuyển hoặc trong khi đi bộ. 
 
Máy ảnh COOLPIX P600 cho phép người dùng không chỉ chụp ảnh từ xa, mà còn ở các góc độ độc đáo nhờ vào màn hình TFT LCD đa góc, khoảng 921 nghìn điểm, 7.6cm/3.0-inch, góc xem rộng. Màn hình có sẵn lớp phủ chống phản chiếu, khả năng điều chỉnh độ sáng, Màn Hình Hiển Thị Màu Rõ Ràng, và hệ thống RGBW đảm bảo khả năng hiển thị rõ ràng ngay cả dưới ánh sáng mặt trời. 
 
Máy ảnh còn được trang bị một kính ngắm điện tử với màn LCD loại 0.2 inch, khoảng 201 nghìn điểm. Một nút Màn Hình được sử dụng để cho phép chuyển đổi giữa màn hình và kính ngắm điện tử. Nhìn qua kính ngắm điện tử sẽ giúp ổn định tư thế của nhiếp ảnh gia và giảm thiểu độ rung máy ảnh. 
 
Có thể gán các chức năng thường dùng vào một nút chức năng (Fn) riêng biệt và cần gạt thu phóng bên đảm bảo giảm thiểu độ rung máy ảnh khi thu phóng. 
 
Chiếc máy ảnh này có khả năng Wi-Fi® được tích hợp sẵn để chuyển hình ảnh sang các thiết bị thông minh và chia sẻ trên các trang mạng xã hội. Ứng dụng Tiện Ích Di Động Không Dây của Nikon (có sẵn trên Kho Ứng Dụng hoặc Google Play) cho phép chụp từ xa từ các thiết bị thông minh tương thích và tự động truyền đến các thiết bị thông minh tương thích. Chiếc máy ảnh này còn hỗ trợ Eye-Fi. 
 
Máy ảnh COOLPIX P600 tự hào về khả năng đáp ứng tốc độ cao cải tiến. Thời gian tự động lấy nét là khoảng 0.21 giây và độ trễ thời gian chụp tại các vị trí góc rộng là khoảng 0.27 giây. Có thể chụp liên tiếp cho đến khi thẻ nhớ SD bị đầy hoặc hết sạch pin. Máy ảnh này còn cho phép chụp theo thời gian định trước, có thể thiết lập là 30 giây một lần hoặc ở đơn vị nhỏ hơn.
 
Ngoài ra, còn có thể quay phim Full HD 1080/60i âm thanh nổi chỉ bằng một lần nhấn nút quay phim chuyên dụng. Máy ảnh có sẵn các chức năng tạm dừng ghi, lưu hình ảnh tĩnh và thu phóng quang học trong khi vẫn quay phim, và hỗ trợ HDMI. Máy ảnh còn cho phép lấy nét tự động và khả năng khóa phơi sáng tự động trong khi quay phim.
 
Máy ảnh COOLPIX P340 có các chức năng chụp linh hoạt cho phép tạo ra hình ảnh độc đáo. Sản phẩm cung cấp bốn chế độ phơi sáng (P, S, A và M) và một chế độ do người dùng thiết lập (U), cùng với chức năng chụp phơi sáng chồng mới, cho phép tạo ra một hình ảnh độc đáo bằng cách chồng tối đa ba hình ảnh. Khi chụp ở chế độ M, độ phơi sáng tại thời điểm nhả màn trập có thể được xem trước ở hình ảnh trên màn hình ngắm qua ống kính. Các hiệu ứng đặc biệt của máy ảnh bao gồm cả hiệu ứng vẽ tranh. Các hiệu ứng lọc mới như Minh Họa Hình Ảnh, và Chân Dung Mềm Mại (với nền đơn sắc) cũng được bổ sung.
 
Chức năng Khuếch Đại (Peaking) mới trong khi thiết lập lấy nét bằng tay làm nổi bật các cạnh của khu vực cần lấy nét trên màn hình hoặc kính ngắm, cho phép điều chỉnh tiêu điểm nét hơn và mượt hơn, để giúp người dùng lấy nét cho các bức ảnh của mình tốt hơn.
 
Sản phẩm còn có các chế độ chụp cảnh mới cho phép lấy nét một cách đơn giản. Chế độ Ngắm Chim (Bird-watching) và Mặt Trăng (Moon) cho phép máy ảnh tự động thiết lập khẩu độ và tốc độ màn trập tối ưu, giúp cho việc chụp các loài chim hoang dã hay mặt trăng khi cầm bằng tay trở nên dễ dàng.
 
Máy ảnh có hệ thống Điều Khiển Ảnh COOLPIX cho phép các thiết lập tạo ảnh. Có thể cài đặt các thiết lập về độ sắc nét, độ bão hòa màu sắc và các thiết lập khác trước khi chụp tùy theo đối tượng, tình huống chụp, hoặc ý định của nhiếp ảnh gia.
 
Chiếc máy ảnh này có phần thân dễ cầm, nhỏ gọn và tinh tế với kích thước khoảng 125.0(W) x 85.0(H) × 106.5(D) mm và nặng 565g. Nút nhả màn trập được đặt ở phía bên trong và tạo góc để ngón trỏ có thể bấm tự nhiên. Hình thức cũng đảm bảo cho việc cầm máy chắc chắn.
 
Thời gian sạc pin được rút ngắn bằng dòng điện cao hơn nhờ sử dụng Bộ Chuyển Đổi Điện Xoay Chiều Sạc Pin EH-71P mới. Pin Sạc Li-ion EN-EL23 mới có tuổi thọ pin lâu hơn trong khi vẫn giữ được kích thước thân máy nhỏ gọn.', N'NIKON-COOLPIX-P600.png', 5820800, 1, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (8, N'MA008', N'MÁY ẢNH NIKON COOLPIX S5200 SILVER', N'Chiếc', N'S5200 là máy ảnh có thiết kế thời trang, cho ảnh chụp chất lượng. Trang bị cảm biến BSI CMOS 16MP, ống kính Nikkor zoom quang học 6x, tiêu cự từ 26mm đến 156mm (quy đổi định dạng 35mm).', N'Máy ảnh NIKON COOLPIX S5200
S5200 là máy ảnh có thiết kế thời trang, cho ảnh chụp chất lượng. Trang bị cảm biến BSI CMOS 16MP, ống kính Nikkor zoom quang học 6x, tiêu cự từ 26mm đến 156mm (quy đổi định dạng 35mm).
Hơn nữa, máy còn được trang bị nhiều chức năng mới như hiệu ứng Glamour Retouch và tuỳ chọn “continuous” cho chức năng Smile timer...
Những tính năng chính của COOLPIX S5200
Ống kính Nikkor zoom quang học 6x, tiêu cự từ 25mm đến 156mm (quy đổi định dạng 35mm)
 
Ống kính Nikkor zoom 6x được trang bị trên 1 thân máy nhỏ gọn, có thể mang đi khắp nơi.
Cảm biến BSI CMOS 16MP cho ảnh chụp đẹp trong điều kiện thiếu sáng như chụp trong nhà và chụp phong cảnh đêm
S5200 được  trang bị cảm biến BSI CMOS 16MP cho ảnh chụp đẹp, ít nhiễu khi chụp trong điều kiện ánh sáng yếu. Những lợi ích của cảm biến rõ ràng nhất với bức ảnh chụp được thực hiện trong các hoàn cảnhánh sáng lờ mờ, chẳng hạn như trong nhà hoặc khi chụp phong cảnh đêm.
 
 
Kết nối Wifi dễ dàng
Với việc tích hợp Wi-Fi, S5200 có thể dễ dàng chia sẽ dữ liệu với các thiết bị thông minh. Điều này cho phép người dùng có thể chuyển ảnh chất lượng cao và phim quay được từ S5200 đến các thiết bị thông minh, từ đó có thể tải lên mạng xã hội một cách dễ dàng. Hơn nữa, khi kết nối với các thiết bị thông minh, người dùng có thể dùng các thiết bị này để điều khiển máy ảnh và có thể tự chụp chân dung của chính mình rất dễ dàng.  
 
Nắm bắt những điểm tham quan và âm thanh
Quay phim HD 1080p với âm thanh mang lại kỷ niệm của bạn với cuộc sống.
 
 
Màn hình 3.0 inch
Bạn có thể chỉnh sửa hình ảnh, chia sẽ, xem video HD, với độ phân giải cao 460.000 điểm ảnh, màn hình LCD 3.0inch
8 hiệu ứng chỉnh sửa hình ảnh, bao gồm 5 hiệu ứng Glamour Retouch mới
Cùng với 3 hiệu ứng cũ là Skin Softening, Small Face, Big Eyes, S5200 được trang bị thêm 5 hiệu ứng mới, đó là: Brighten Faces: giúp làm sáng da; Hide Eye Bags: In addition to the original three Glamour Retouch effects (Skin Softening, Small Face, Big Eyes), the following five effects are now also available. Brighten Faces, which lightens skin tones; Hide Eye Bags, giảm vết thâm ở bọng mắt; Whiten Eyesvà Whiten Teeth: làm cho mắt và răng trông trắng hơn; Redden Cheeks: hiệu ứng làm cho má trông hồng hào hơn. Với 8 hiệ ứng này, người dùng có thể tạo ra những bức ảnh đáng nhớ hơn.
 
 
Một loạt các chức năng chụp hình để chụp khuôn mặt tươi cười
Máy tự động nhận dạng nụ cười trên gương mặt . khi chọn chức năng Best Shot Selector (BSS), máy sẽ chụp 5 hình liên tiếp và lưu lại hình đẹp nhất với nụ cười trên gương mặt.', N'MAY-ANH-NIKON-COOLPIX-S5200-SILVER-hinh1.jpg,MAY-ANH-NIKON-COOLPIX-S5200-SILVER.jpg,MAY-ANH-NIKON-COOLPIX-S5200-SILVER-hinh3.jpg,MAY-ANH-NIKON-COOLPIX-S5200-SILVER-hinh4.jpg', 6690000, 1, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (9, N'MA009', N'MÁY ẢNH SAMSUNG EC-WB350FBDWVN TRẮNG', N'Chiếc', N'Chiếc máy ảnh thông minh Samsung WB350F lần đầu tiên ra mắt tại triển lãm công nghệ CES 2014, đây được coi là model thay thế cho người tiền nhiệm WB800F xuất hiện trên thị trường hơn 1 năm nay. WB350F là mẫu máy thuộc dòng Compact. Người dùng không cần biết quá nhiều về nhiếp ảnh, chi với vài thao tác bấm đơn giản là đã có thể lưu giữ các khoảng khắc đẹp, đáng nhớ cùng bạn bè và người thân. Đây là mẫu máy dùng cho nhu cầu gia đình, du lịch.', N'Thông Tin Sản Phẩm Máy Ảnh SAMSUNG EC-WB350FBDWVN Trắng:
Chiếc máy ảnh thông minh Samsung WB350F lần đầu tiên ra mắt tại triển lãm công nghệ CES 2014, đây được coi là model thay thế cho người tiền nhiệm WB800F xuất hiện trên thị trường hơn 1 năm nay. WB350F là mẫu máy thuộc dòng Compact. Người dùng không cần biết quá nhiều về nhiếp ảnh, chi với vài thao tác bấm đơn giản là đã có thể lưu giữ các khoảng khắc đẹp, đáng nhớ cùng bạn bè và người thân. Đây là mẫu máy dùng cho nhu cầu gia đình, du lịch.
 
WB350F có thiết kế khỏe khoắn, thời trang
Samsung WB350F được đầu tư khá kỹ lưỡng về mảng thiết kế và tính năng. Ưu điểm của máy là gọn nhẹ, thời trang, bên cạnh đó là việc nâng cấp cảm biến CMOS độ phân giải cao hơn, ống kính tiêu cự lớn cho hình ảnh zoom rõ nét và màn hình cảm ứng LCD 3 inch.
Ngoài ra, khả năng kết nối của máy cũng rất mạnh mẽ. WB350F được tích hợp tính năng Wifi tốc độ cao, sẵn sàng chia sẻ các bức hình đẹp lên mạng xã hội hoặc các dịch vụ lưu trữ trực tuyến. Máy cũng tương thích với các thiết bị di động được tích hợp chip NFC mới nhất hiện nay.
 
Với nhiều điểm mạnh và tiện dụng như vậy, chiếc máy ảnh thông minh của Samsung có thể đáp ứng tối đa nhu cầu sử dụng của bạn.
Thiết kế
Có nhiều màu sắc để bạn lựa chọn:
Phù hợp với các bạn trẻ năng động, Samsung WB350F có kích thước nhỏ gọn, kiểu dáng trang nhã. Bên ngoài được phủ một lớp giả da cho cảm giác cầm nắm được "thật" hơn và tránh được hiện tượng bám vân tay. Các đường nét  máy được chăm chút kỹ lưỡng, cho thấy đây là một sản phẩ m có chất lượng hoàn thiện tốt và tinh tế. Trọng lượng máy cũng rất nhẹ, chỉ 267g (đã tính cả pin), rất tiện khi đem theo trong các chuyến dã ngoại, công tác.
Máy có khá nhiều màu sắc để người dùng lựa chọn: đen, trắng, nâu, đỏ và xanh đen. Samsung đã tối giản các nút bấm theo hướng thuận tiện nhất cho người sử dụng. Phía bên trên máy gồm nút chụp, nút xoay điều chỉnh chế độ và nút nguồn. Thân máy phía sau gồm các nút điều hướng cho phép người dùng xem lại ảnh đã chụp qua màn hình cảm ứng LCD, kích thước 3 inch. Độ phân giải HVGA của màn hình này khá cao và màu sắc tương đối ổn.
 
WB350F được tích hợp ống kính góc mở 23mm, tiêu cự tương đương 23-483mm. Cảm biến BSI CMOS có độ phân giải khá "khủng" lên tới 16.3MP, mật độ điểm ảnh 4608x3456 pixel cho hình ảnh sắc nét ấn tượng. Đặc biệt là cảm biến này hỗ trợ quang học khá tốt, hoạt động trong môi trường thiếu sáng (ISO dưới 400) cho chất lượng ảnh vẫn đảm bảo.
Tính năng và chất lượng ảnh:
Máy hỗ trợ nhiều chế độ chụp ảnh như: Panorama, Beauty Shot, Light Trace, Rich Tone, Action Freeze, Fireworks, Waterfall và Macro. Người dùng có thể xem lại các ảnh chụp thông qua màn hình LCD cảm ứng, các thao tác bằng nút bấm cũng êm và nhạy mang lại cảm giác thoải mái.
Bạn cũng có thể lấy nét bằng cách chạm vào màn hình cảm ứng. Mặc dù khả năng lấy nét của máy bị hạn chế, chỉ xung quanh vùng trung tâm bức ảnh tuy nhiên về cơ bản WB350F xử lý khá tốt việc này.
Tính năng lưu trữ và kết nối cũng là một thế mạnh của chiếc máy ảnh Samsung này. Máy được trang bị khe cắm thẻ nhớ Micro SDXC, cho phép sử dụng các loại thẻ nhớ thông dụng hiện nay và dung lượng lên tới 64GB. Nhờ vậy bạn có thể chụp hàng nghìn bức ảnh mà không phải lo lắng về vấn đề bộ nhớ.
 
Trong thời đại công nghệ thông tin bùng nổ, các mối quan hệ xã hội "online" cũng rất quan trọng, do vậy việc nhanh chóng chia sẻ các bức ảnh đẹp, đáng nhớ lên các trang mạng xã hội, email... là một nhu cầu thiết yếu. WB350F đáp ứng nhanh chóng điều này qua kết nối Wifi chuẩn n tốc độc cao. Bên cạnh đó, công nghệ Tag & Go cho phép kết nối máy ảnh với các thiết bị di động qua NFC cũng rất hữu ích. Dữ liệu được truyền tải nhanh và chuyên nghiệp khiến việc trải nghiệm cuộc sống số thêm phần thú vị.
Ngoài tính năng chụp ảnh, máy cũng cho phép bạn quay video chất lượng HD 1080p. Tốc độ khung hình đảm bảo ở mức khá, 30FPS, mặc dù không thể zoom khi đang quay nhưng bạn có thể kết hợp với việc chụp hình cùng lúc mà không gặp phải bất cứ khó khăn gì.
Với một chiếc máy Compact thì chất lượng hình ảnh luôn được đề cao. Nhờ cảm biến độ phân giải 16 Mpx, ảnh được lưu trữ ở định dạng JPEG với độ sắc nét cao. Khả năng nhạy sáng cũng ở mức khá, trong các điều kiện thiếu sáng và chụp ở ISO dưới 400 cho sản phẩm tốt, cân bằng sáng hoạt động hiệu quả, tương phản màu sắc chân thực. Tuy nhiên ở trên mức ISO 400 thì bắt đầu có hiện tượng nhiễu khá rõ, các chi tiết cũng bị mất nhiều. Đây cũng chính là một yếu điểm cố hữu của các máy dòng Compact, hạn chế về khả năng lấy nét và nhạy sáng.
 
WB350F thích hợp khi chụp ảnh tĩnh. Với những ảnh chuyển động, máy bắt hình khá chậm và xuất hiện hiện tượng bóng ma.
Ở chế độ thông thường, máy sử dụng màn hình chập, độ trễ từ 1.3-1.7 giây (trong điều kiện thiếu sáng thì thời gian này sẽ chênh lệch thêm khoảng 0.3 giây). Đây là mức chấp nhận được. Các thông số về kỹ thuật tự động được vi xử lý sao cho cân bằng nhất, giúp bạn có được tấm hình đẹp nhất có thể. Ngoài ra WB350F cũng hỗ trợ chụp nhanh, liên tiếp tới 8 hình / giây. Tính năng này khá ấn tượng và mang lại phút giây giải trí vui vẻ cho người dùng.
Kết luận:
Máy ảnh thông minh Samsung WB350F là một sự lựa chọn tốt với nhu cầu máy Compact, cho hình ảnh tương đối đi kèm với các kết nối mạnh mẽ. Đây là một người bạn đồng hành đáng tin cậy trong các chuyến đi bởi tính di động, gọn nhẹ và thời trang.', N'SAMSUNG-EC-WB350FBDWVN-Trang-6.jpg,SAMSUNG-EC-WB350FBDWVN-Trang-7.jpg,SAMSUNG-EC-WB350FBDWVN-Trang-3.jpg', 4690000, 1, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (10, N'MA010', N'MÁY ẢNH SAMSUNG EC-WB35FZBDBVNEC ĐEN', N'Chiếc', N'Zoom 12x cho phép bạn từ xa có thể bắt được những hình ảnh mang cảm xúc chân thật của chủ thể trong 1 bức ảnh.', NULL, N'SAMSUNG-EC-WB35FZBDBVNEC-DEN.jpg,SAMSUNG-EC-WB35FZBDBVNEC-DEN-6.jpg,SAMSUNG-EC-WB35FZBDBVNEC-DEN-7.jpg', 2500000, 1, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (11, N'MA011', N'MÁY ẢNH SAMSUNG EV-NX30ZZBGBVN ĐEN', N'Chiếc', N'Sau một thời gian ra mắt phiên bản NX20 ở phân khúc mirrorless cao cấp, Samsung vừa giới thiệu trước thềm CES 2014 mẫu NX30 được nâng cấp với nhiều cải tiến đáng giá. Không còn phát triển máy ảnh DSLR, Samsung tập trung vào mirrorless với dòng NX hai số, có thiết kế hầm hố, phím điều khiển đa dạng và nhiều tính năng cao cấp. NX30 mang những đường nét quen thuộc của mẫu Galaxy NX nhưng sở hữu tính năng mới gần đây cuả hãng như cảm biến ảnh CMOS 20.3 MP kích thước APS-C, hệ thống lấy nét lai, màn trập 1/8000, dải ISO tối đa 25.600, tích hợp Wi-Fi và NFC. Cùng với sản phẩm này, Samsung cũng giới thiệu dòng ống kính cao cấp Premium S series 16-50mm f/2-2.8 phù hợp với thiết kế thân máy và khả năng chụp ảnh trong nhiều điều kiện khác nhau.', N'Samsung giới thiệu NX30: mirrorless cao cấp 20 MP, lấy nét lai, EVF lật, Wi-Fi:
Sau một thời gian ra mắt phiên bản NX20 ở phân khúc mirrorless cao cấp, Samsung vừa giới thiệu trước thềm CES 2014 mẫu NX30 được nâng cấp với nhiều cải tiến đáng giá. Không còn phát triển máy ảnh DSLR, Samsung tập trung vào mirrorless với dòng NX hai số, có thiết kế hầm hố, phím điều khiển đa dạng và nhiều tính năng cao cấp. NX30 mang những đường nét quen thuộc của mẫu Galaxy NX nhưng sở hữu tính năng mới gần đây cuả hãng như cảm biến ảnh CMOS 20.3 MP kích thước APS-C, hệ thống lấy nét lai, màn trập 1/8000, dải ISO tối đa 25.600, tích hợp Wi-Fi và NFC. Cùng với sản phẩm này, Samsung cũng giới thiệu dòng ống kính cao cấp Premium S series 16-50mm f/2-2.8 phù hợp với thiết kế thân máy và khả năng chụp ảnh trong nhiều điều kiện khác nhau.
 
Thiết kế của NX30 mang nhiều nét giống với Galaxy NX nhờ thân máy dài và tay cầm máy lớn. Chiếc máy ảnh này có thiết kế khá lớn (127 x 96 x 58 mm), nó dài hơn so với Canon EOS 100D (117 x 91 x 69 mm) và cao hơn cả Sony Alpha A7 (126,9 x 94,4 x 48,2 mm). Máy ảnh có nhiều phím điều khiển khá tiện lợi chế độ chọn chụp một tấm, nhiều tấm, bracketing... bánh xe xoay điều khiển đa chức năng.', N'SAMSUNG-EV-NX30ZZBGBVN-Den.jpg,SAMSUNG-EV-NX30ZZBGBVN-Den-1.jpg,SAMSUNG-EV-NX30ZZBGBVN-Den-2.jpg,SAMSUNG-EV-NX30ZZBGBVN-Den-3.jpg,SAMSUNG-EV-NX30ZZBGBVN-Den-4.jpg', 9450000, 1, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (12, N'MA012', N'SONY CYBER-SHOT 18.2MP & ZOOM QUANG HỌC 20X - DSC-WX300 (ĐỎ)', N'Chiếc', N'Được xem là một trong những chiếc máy ảnh “siêu zoom” nhỏ gọn bậc nhất của Sony, Sony Cyber-shot DSC-WX300 tự hào mang đến cho người dùng nội lực mạnh mẽ từ cảm biến Exmor R CMOS 18.2MP, zoom quang 20x và vi xử lý ảnh độc quyền Sony BIONZ. Ngoài ra, máy còn được trang bị khả năng kết nối wifi tiện dụng, nhiều hiệu ứng chụp ảnh thú vị hay khả năng quay phim Full HD... Tất cả những tính năng tuyệt vời này đều được tích hợp trong một chiếc máy ảnh nhỏ gọn và vô cùng cá tính, Cyber-shot DSC-WX300 sẵn sàng cùng bạn khám phá cuộc sống.', N'Được xem là một trong những chiếc máy ảnh “siêu zoom” nhỏ gọn bậc nhất của Sony, Sony Cyber-shot DSC-WX300 tự hào mang đến cho người dùng nội lực mạnh mẽ từ cảm biến Exmor R CMOS 18.2MP, zoom quang 20x và vi xử lý ảnh độc quyền Sony BIONZ. Ngoài ra, máy còn được trang bị khả năng kết nối wifi tiện dụng, nhiều hiệu ứng chụp ảnh thú vị hay khả năng quay phim Full HD... Tất cả những tính năng tuyệt vời này đều được tích hợp trong một chiếc máy ảnh nhỏ gọn và vô cùng cá tính, Cyber-shot DSC-WX300 sẵn sàng cùng bạn khám phá cuộc sống.
 
TÍNH NĂNG NỔI BẬT
Cảm biến 18.2MP Exmor R CMOS đặc biệt nhạy sáng
Bộ cảm biến Exmor R CMOS 7.82mm trên Sony Cyber-shot DSC-WX300 mạnh mẽ gấp đôi cảm biến CMOS thông thường nhờ vào công nghệ chiếu sáng nền giúp ánh sáng được sử dụng hiệu quả hơn. Nhạy gấp hai lần và giảm nhiễu gấp đôi, sử dụng Exmor R CMOS cho hình ảnh tái hiện mượt mà và chất lượng hình ảnh cao hơn, ảnh sáng và đẹp ngay trong cảnh đêm. Ngoài ra, chế độ High Speed Continous Shooting còn cho phép bạn chụp ảnh tôc độ cao 10fps, kịp thời bắt trọn những khoảng khắc quí báu và xóa bỏ lo lắng về hiện tượng nhòe và rung của ảnh.', N'sony-3588-683902-1-product.jpg', 7155000, 1, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (13, N'MA013', N'SONY 18.2MP & ZOOM QUANG 20X', N'Chiếc', N'Thiết kế đủ nhỏ để vừa vặn với túi áo của bạn, Cyber-shot WX300 trang bị hiệu suất zoom quang học cực cao, để mang đến rõ nét từng khuôn mặt chủ thể ở cách xa bạn.', N'TÍNH NĂNG NỔI BẬT
Zoom Mạnh Mẽ Trong Thân Máy Mỏng, Thời TrangTận hưởng sự tiện lợi từ khả năng tiếp cận tuyệt đẹp đối với các chủ thể ở tận xa. Thiết kế đủ nhỏ để vừa vặn với túi áo của bạn, Cyber-shot WX300 trang bị hiệu suất zoom quang học cực cao, để mang đến rõ nét từng khuôn mặt chủ thể ở cách xa bạn.
Thưởng Thức Chi Tiết Tuyệt Đẹp Ngay Khi Thiếu SángNgay khi ảnh chụp là một thành phố về đêm hoặc cảnh mặt trời mọc, Cyber-shot WX300 là máy ảnh lý tưởng cho lựa chọn để chụp lại những hình ảnh tuyệt đẹp trong môi trường thiếu sáng. Sở hữu cảm biến 18.2MP Exmor R™ CMOS kết hợp công nghệ chiếu sáng nền độc đáo, tăng gấp đôi độ nhạy sáng và khả năng khử nhiễu mang đến cho bạn khả năng ghi lại hình ảnh chất lượng cao ngay trong điều kiện thiếu sáng.
Ghi Hình Full HD Tuyệt Vời, Không Bị NhòeNgoài khả năng mang đến chất lượng ảnh tĩnh xuất sắc, chiếc máy còn cho bạn khả năng quay phim tuyệt vời với hình ảnh Full HD (1920 x 1080). Nhờ vào khả năng ổn định hình ảnh quang học SteadyShot (chế độ Active), máy ảnh làm giảm hiệu quả hiện tượng rung lắc, mang đến hình ảnh HD tuyệt đẹp mà không bị nhòe cho bạn thưởng thức.
Tương Tác Với Smartphone Thông Qua Wi-FiCyber-shot WX300 được tích hợp Wi-Fi cho phép bạn điều khiển từ xa máy ảnh của mình thông qua Smartphone hoặc máy tính bảng. Chức năng điều khiển thuận tiện này phát huy hiệu quả khi chụp ảnh cả nhóm hoặc tự chụp chân dung của chính mình. Bạn cũng có thể gởi ảnh của bạn đến các thiết bị điện thoại hoặc máy tính bảng thông qua Wi-Fi.
Không Bỏ Lỡ Khoảnh KhắcChiếc máy ảnh này có thể đạt tốc độ chụp lên đến 10 khung hình/ giây, trong khi vẫn giữ lấy nét chủ thể liên tục. Với khả năng chụp tốc độ cao đạt kích thước ảnh lớn (18M), cho bạn ghi lại thật trọn vẹn từng pha thể thao hành động và diễn tả trọn vẹn cảm xúc trong từng bức ảnh mà bạn chưa thể làm được trước đây.
Tự Động Lựa Chọn Chế Độ Tối Ưu Cho Ảnh Chụp Đẹp NhấtSuperior Auto kết hợp chế độ nhận diện khung cảnh và công nghệ hình ảnh chất lượng cao để lựa chọn một cách tự động một trong 15 chế độ được cài đặt sẵn. Chức năng này được cải tiến mới hoàn toàn để hỗ trợ cảnh chụp trở nên thật sống động, vì thế bạn có thể ghi lại những bức ảnh tuyệt đẹp ngay khi ảnh chụp là các pha hành động.
Tăng Cường Thời Lượng Pin Bạn sẽ thấy thú vị với Pin dung lượng cao của Cyber-shot WX300, Pin của máy cho phép bạn chụp liên tục lên đến 500 bức ảnh sau mỗi lần sạc đầy. Với thời lượng Pin dài này, bạn có thể thỏa thích chụp ảnh khi đi xa mà không sợ hết Pin. Hiệu Ứng Làm Đẹp Tùy chỉnh nhanh chóng hình ảnh chân dung của bạn với chế độ Hiệu ứng làm đẹp, hiệu ứng này cho phép bạn thay đổi tông màu của da, mắt và răng. Nói tạm biệt với các khuyết điểm và đón nhận những bức ảnh hoàn hảo, mà không cần máy tính để chỉnh sửa. 
Hiệu Ứng Hình Ảnh Mở rộng khả năng sáng tạo của bạn và chuyển tải bức ảnh đời thường thành tác phẩm nghệ thuật tuyệt đẹp với một loạt các Hiệu ứng hình ảnh được áp dụng cho cả phim và ảnh tĩnh. Tạo ra hiệu ứng thú vị như là thu nhỏ, hoặc Pop Colour để nhấn mạnh màu nổi bật chiếc tủ của bạn.
Tương Thích Với Triluminos™ Colour Cyber-shot WX300 hỗ trợ công nghệ "TRILUMINOS™ Colour" của Sony, cho phép bạn xem lại phim và hình ảnh rực rỡ, sống động trên bất kì TV nào tích hợp "TRILUMINOS™ Display". Làm sống lại từng khoảnh khắc kỉ niệm với độ rõ nét và màu sắc đáng kinh ngạc. 
Phụ Kiện Máy Ảnh Của Bạn Cyber-shot tương thích với một loạt các bao đựng máy hiện đại và thời trang giúp bảo vệ máy ảnh của bạn trong lúc di chuyển. Bạn cũng có thể mở rộng trải nghiệm chụp ảnh của bạn với chân máy, dây kết nối hoặc nguồn mở rộng thật đa dạng. 
Ứng Dụng PlayMemories™ Mobile Sử dụng ứng dụng PlayMemories™ Mobile của Sony, bạn có thể chuyển hình ảnh từ máy ảnh đến Smartphone hoặc máy tính bảng một cách không dây. Đơn giản bằng việc tải ứng dụng miễn phí lên điện thoại và kết nối với máy ảnh của bạn thông qua Wi-Fi.
 
Thông số kỹ thuật
Cảm biến hình ảnh:
Loại  Cảm biến Exmor R CMOS
Kích cỡ  Loại 1/2.3 (7.82mm)
Điểm ảnh tổng  Khoảng 21.1 Megapixels
Điểm ảnh thật  Khoảng 18.2 Megapixels
Ống kính
Loại kính  
Ống kính G của SonyChỉ số F  F3.5(W)-6.5(T)Tiêu cự (f=)  f=4.3-86mmTiêu cự (35mm) - Ảnh tĩnh 16:9  f=27-540mm
Tiêu cự (35mm) - Ảnh tĩnh 4:3  f=25-500mmTiêu cự (35mm) - Movie 16:9  f=27-540mm(SteadyShot Standard), f=27-690mm(SteadyShot Active)
Tiêu cự (35mm) - Movie 4:3  f=33-660mm(SteadyShot Standard), f=33-840mm(SteadyShot Active)Phạm vi lấy nét (iAuto)  W: Khoảng 5cm đến vô cực, T: Khoảng 200cm đến vô cực
Phạm vi lấy nét (Program Auto)  W: Khoảng 5cm đến vô cực, T: Khoảng 200cm đến vô cựcZoom quang học  20xZoom hình ảnh rõ nét  18M khoảng 40x/10M khoảng 53x/5M khoảng 75x/VGA khoảng 306x/13M(16:9) khoảng 40x/2M(16:9) khoảng 102x*1Zoom tỉ lệ - Ảnh tĩnh  18M khoảng 80x/10M khoảng 107x/5M khoảng 151x/VGA khoảng 306x/13M(16:9)khoảng 80x/2M(16:9) khoảng 204x*1LCD
Kích cỡ màn hình  3.0 inchSố điểm ảnh  460,800
Tên  Clear Photo/TFT LCDCài đặt mức sáng  5 mức
Các chức năng chụp ảnhBộ xử lý hình ảnh  BIONZ
Hệ thống ổn định hình ảnh
 Ổn định hình ảnh quang học SteadyShotChế độ lấy nét - Multi-Point AF
 Có chế độ lấy nét - Center-Weighted AF  
Có chế độ lấy nét - Spot AF  
Có chế độ lấy nét - Flexible Spot AF (Tracking Focus)  
Có chế độ lấy nét - Flexible Spot AF (Face Tracking Focus)  
Có đo sáng - Multi Pattern  
Có đo sáng - Center-Weighted  
Có đo sáng - Spot  
Có bù trừ phơi sáng  +/- 2.0EV, 1/3EV Step
Cài đặt độ nhạy ISO  Auto/80/100/200/400/800/1600/3200/6400*11/12800*10 *2
Cân bằng trắng  Auto/Daylight/Cloudy/Fluorescent 1/Fluorescent 2/Fluorescent 3/Incandescent/Flash/One Push, One Push SetTốc độ màn trập  iAuto(4" - 1/1600)/Program Auto(1" - 1/1600)*3Hẹn giờ tự chụp  Off/10sec./2sec./Portrait1/Portrait
2 Chế độ đèn Flash  Auto/Flash On/Slow Synchro/Flash Off/Advanced FlashVùng chiếu sáng  ISO Auto: khoảng 0.2m-4.3m(W)/ khoảng 2.0m-2.4 m(T), ISO3200: khoảng 6.1 m(W)/khoảng 3.4 m(T)Auto Macro  
Có đèn lấy nét tự động  Auto/Off
Khẩu độ  iAuto(F3.5/F8.0(W), 2 bước với ND Filter)/Program Auto(F3.5/F8.0(W), 2 bước với ND Filter)Face Detection - Mode  Auto/Off/Child Priority/Adult PriorityFace Detection - Face Selection  Yes(Key)Face Detection - Max. No of Detectable Faces  8 FacesShooting modeSuperior Auto  CóIntelligent Auto  CóEasy Shooting  CóProgram Auto  CóMovie Mode  CóPanorama  CóScene Selection  CóPicture Effect  Có3D  CóBackground Defocus  CóIntelligent Sweep Panorama  CóScene SelectionHigh Sensitivity  CóNight Scene  CóNight Portrait  CóSoft Snap  CóLandscape  CóBeach  CóSnow  CóFireworks  CóGourmet  CóPet  CóSoft Skin  CóHandheld Twilight  CóAnti Motion Blur  CóBacklight Correction HDR  Có 3D3D Still Image  CóPicture EffectHDR Painting  CóRich-tone Monochrome  CóMiniature  CóToy Camera  CóPop Colour  CóPartial Colour  CóSoft High-key  CóWater Colour  CóIllustration  Có Compatible Recording MediaMemory Stick Duo (Still Image / Movies)  Yes*5Memory Stick PRO Duo (Still Image / Movies)  Yes*5Memory Stick PRO Duo - High Speed  Yes*5Memory Stick PRO HG Duo  Yes*5Memory Stick XC-HG Duo  Yes*5SD Memory Card  Yes*5SDHC Memory Card  Yes*5SDXC Memory Card  Yes*5Memory Stick Micro  Yes*5 *6Memory Stick Micro (Mark2)  Yes*5 *6Micro SD Memory Card  Yes*5 *6Micro SDHC Memory Card  Yes*5 *6Micro SDXC Memory Card  Yes*5 *6Internal Memory Data Copy (to Recording Media)  Approx. 48MB Still Image RecordingStamina (Battery Life)  Approx. 500 shots/250min*818M (4,896 X 3,672) 4:3 mode  Có13M (4,896 X 2,752) 16:9 mode  Có10M (3,648 X 2,736) 4:3 mode  Có5M (2,592 X 1,944) 4:3 mode  Có2M (1,920 X 1,080) 16:9 mode  CóVGA (640 X 480) 4:3 mode  CóSweep Panorama 360 (11,520 X 1,080)  CóSweep Panorama HR (10,480 X 4,096)  CóSweep Panorama Wide (7,152 X 1,080 / 4,912 X 1,920)  CóSweep Panorama Standard (4,912 X 1,080 / 3,424 X 1,920)  Có3D Still Image : 18M (4,896 X 3,672) 4:3 mode  Có3D Still Image : 13M (4,896 X 2,752) 16:9 mode  CóMovie RecordingAVCHD - 1,920 X 1,080 (24M, FX)  CóAVCHD - 1,920 X 1,080 (17M, FH)  CóAVCHD - 1,440 X 1,080 (9M, HQ)  CóAVC MP4 - 1,440 X 1,080 (12M)  CóAVC MP4 - 1,280 X 720 (6M)  CóAVC MP4 - VGA / 640 X 480 (3M)  CóOther FeaturesFace Detection  CóStill Image Recording during movie  CóSmile Shutter  CóGrid Line  CóIn-Camera Guide  CóRetouch - Trimming  CóRetouch - Unsharp Masking  CóDate View  CóSlideshow with Music  Có3D Viewing Mode  CóControl for HDMI  CóStart-up Time  Approx. 2.0 sec.Shooting Time Lag  Approx. 0.16 sec.Shutter Release Time Lag  Approx. 0.011 sec.Shooting Interval  Approx. 0.8 sec.Burst Speed (Maximum)  Approx. 10 fps(for up to 10 shots)*4Burst Interval (Minimum)  Approx. 0.1 sec.(10 shots)*3 *4 *9Built-in Microphone  StereoWind Noise Reduction  Off/OnOptical Zoom During Movie Recording  20xHistogram Indicator  Yes(On/Off)Photo Creativity  CóPlaybackSlide Show - Video Out  HD(HDMI)Slide Show - Movie  CóSlide Show - Effects  Simple/Nostalgic/Stylish/ActiveSlide Show Music - No. Of Tunes  4Download Music  CóAutomatic Image Rotation  CóUSBUSB Connection - Auto (Multi-Configuration)  CóUSB Connection - Mass Storage  CóUSB Connection - MTP  CóHi-Speed USB  CóMicro USB  CóInterfaceMulti-use Terminal  CóMicro HDMI  Có Optional Accessory CapabilityTripod Receptacle  Có Power SourceSupplied Battery  Maximum Voltage: 4.2V, Nominal Voltage: 3.6V, Capacity for Shooting: 4.5Wh(1240mAh)AC Adaptor  Power Requirements: AC 100V to 240V, 50/60 Hz, 70mA; Output voltage: DC 5VUSB Charge  CóUSB Power Supply  CóKích thước & Trọng lượngDimensions (W x H x D)  Approx. 96mm x 54.9mm x 25.7mmWeight (with Battery &amp; Memory Stick)  Approx. 166gWeight (Body only)  Approx. 139g', N'MAY-ANH-SONY-DSC-WX300-TCE32-1.jpg,MAY-ANH-SONY-DSC-WX300-TCE32-2.jpg', 6021000, 1, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (14, N'MA014', N'MÁY ẢNH SONY DSC-WX80/BC E32', N'Chiếc', N'Với ống kính Carl Zeiss Vario-Tessar chất lượng cao và Wi-Fi tích hợp, Cyber-shot WX80 mạnh mẽ cho bạn tạo ra những bức ảnh & đoạn phim thật như cuộc sống và chia sẻ tiện lợi những hình ảnh này với bạn bè và người thân ngay tức thì.', N'Với ống kính Carl Zeiss Vario-Tessar chất lượng cao và Wi-Fi tích hợp, Cyber-shot WX80 mạnh mẽ cho bạn tạo ra những bức ảnh & đoạn phim thật như cuộc sống và chia sẻ tiện lợi những hình ảnh này với bạn bè và người thân ngay tức thì.

 

Cảm biến Exmor R™ CMOS 16.2MP
Ống kính Carl Zeiss Vario-Tessar với Zoom quang học 8x
Tích hợp Wi-Fi
Chụp liên tục tốc độ cao (10fps)
Quay phim độ nét cao HD (720p)
Hiệu ứng hình ảnh (Movie và Panorama)
Tính năng chi tiết:

Thời trang để Mang, Dễ dàng để Chụp

Chia sẻ các bức ảnh của bạn tức thì với Wi-Fi tích hợp', N'SONY-DSC-WX80-1.jpg,SONY-DSC-WX80-2.png,SONY-DSC-WX80-3.jpg', 3500000, 1, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (15, N'MA015', N'MÁY ẢNH SONY NEX-5RY/BQ AP2', N'Chiếc', N'Sony NEX-5R thế hệ mới giúp bạn ghi lại từng khoảnh khắc cuộc sống thật sáng tạo. Với cảm biến APS-C lớn đảm bảo hình ảnh cực nét và màu sắc sống động. Fast Hybrid AF, chụp 10 fps, màn hình lật 180°, quay phim Full HD và nhiều tính năng mạnh mẽ khác cho bạn luôn có được những bức ảnh chuyên nghiệp.', N'Máy ảnh Sony NEX-5RY

Máy ảnh NEX-5R độ phân giải 16.1 MP 

Sony NEX-5R thế hệ mới giúp bạn ghi lại từng khoảnh khắc cuộc sống thật sáng tạo. Với cảm biến APS-C lớn đảm bảo hình ảnh cực nét và màu sắc sống động. Fast Hybrid AF, chụp 10 fps, màn hình lật 180°, quay phim Full HD và nhiều tính năng mạnh mẽ khác cho bạn luôn có được những bức ảnh chuyên nghiệp.

 

Cảm biến 16.1MP "Exmor™" APS HD CMOS
Lấy nét cực nhanh với công nghệ Hybrid AF
Màn hình 3.0" Xtra Fine LCD xoay 180°
Giao diện trực quan (Control Dial, Màn hình cảm ứng với Touch Shutter)
Tích hợp Wi-Fi
Quay phim AVCHD Full HD', N'MAY-ANH-SONY-NEX-5RY-BQ-AP2-1.jpg,MAY-ANH-SONY-NEX-5RY-BQ-AP2-2.jpg,MAY-ANH-SONY-NEX-5RY-BQ-AP2-3.jpg,MAY-ANH-SONY-NEX-5RY-BQ-AP2-1135572961250cecacc73a47.jpg', 3850000, 1, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (16, N'MA016', N'MÁY ẢNH SONY DSC-WX200/PC E32', N'Chiếc', N'Chỉ 17.5mm*, Cyber-shot WX200 nổi bật với thiết kế mỏng và thời trang, Zoom quang học lên đến 10x. Và Wi-Fi tích hợp cũng giúp bạn chia sẻ ngay tức thì các bức ảnh & đoạn phim của bạn với những người thân yêu. Chia sẻ ngay tức thì ngay trên ngón tay của bạn!', N'Chỉ 17.5mm*, Cyber-shot WX200 nổi bật với thiết kế mỏng và thời trang, Zoom quang học lên đến 10x. Và Wi-Fi tích hợp cũng giúp bạn chia sẻ ngay tức thì các bức ảnh & đoạn phim của bạn với những người thân yêu. Chia sẻ ngay tức thì ngay trên ngón tay của bạn!

Tính năng chi tiết:

Zoom mạnh mẽ trong thân máy nhỏ gọn

Chia sẻ các hình ảnh của bạn thuận tiện với Wi-Fi tích hợp

Thưởng thức Zoom xa trong thân máy nhỏ gọN

Tận hưởng sự tiện lợi để tiếp cận các chủ thể của bức ảnh, ngay khi từ khoảng cách xa. Zoom quang học 10x trên ống kính Sony G mang đến hình ảnh sắc nét và chi tiết bằng việc điều chỉnh ống kính tới phía trước hay về sau để thay đổi tiêu cự, vì thế chủ thể của bạn sẽ được phóng to mà không làm mất đi điểm ảnh nào.

Chia Sẻ Tức Thì những kỷ Niệm với Người Thân Yêu

Với tính năng Wi-Fi được tích hợp,giờ đây bạn có thể chia sẻ lặp tức những hình ảnh chất lượng cao đến các thiết bị Wi-Fi khác. Đăng tải hình ảnh của bạn trực tuyến bằng cách chuyển tải chúng đến điện thoại của bạn, hoặc phát slideshow các hình ảnh của bạn lên màn hình TV lớn bằng các tính năng tiện ích này. Giờ đây bạn có thể chia sẻ không dây tất các khoảnh khắc kỷ niệm với bạn bè và những người thân yêu.

Ghi lại hình ảnh rực rỡ trong môi trường thiếu sáng

Cảm biến Exmor R™ CMOS mạnh mẽ 18.2MP sử dụng công nghệ chiếu sáng phía sau độc đáo, đảm bảo từng bức ảnh đạt chất lượng tuyệt vời ngay khi chúng được chụp trong môi trường tối. Bộ xử lý hình ảnh BIONZ™ làm giảm tối đa hiện tượng nhiễu và đạt độ chính xác cực cao trong khi tự động lấy nét, nhằm tạo ra bức ảnh rực rỡ, tự nhiên hơn trong từng môi trường ánh sáng khác nhau.', N'DSC-WX200-1.jpg,DSC-WX200-2.jpg,DSC-WX200-4.jpg,SONY_DSC-WX200PC_E32.jpg', 2970000, 1, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (17, N'MA017', N'MÁY ẢNH SONY DSC-H300 E32', N'Chiếc', N'Chủ thể khoảng cách xa hiện ra rõ nét
Là một trong những ống kính zoom mạnh
mẽ nhất của dòng Cyber-shot, cho bạn tiếp
cận gần như trực diện các chủ thể vượt xa
những ống kính quang học thấp hơn.', NULL, N'SONY-DSC-H300-E32-1.jpg,SONY-DSC-H300-E32-2.jpg,SONY-DSC-H300-E32-3.jpg', 2850000, 1, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (18, N'MA018', N'MÁY ẢNH SONY IXUS 135', N'Chiếc', N'Hãy kể lại câu chuyện của bạn và chia sẻ với cả thế giới cùng chiếc máy ảnh IXUS 135 kiểu dáng đẹp mắt cùng khả năng kết nối wifi. Giải pháp ECO Mode tiết kiệm năng lượng giúp bạn chụp được nhiều ảnh hơn mỗi lần sạc và đảm bảo bạn luôn kết nối với bạn bè cho dù bữa tiệc kéo dài cả đêm.', N'ĐẶC ĐIỂM NỔI BẬT
Chất lượng hình ảnh rõ nét
Màn hình cảm biến cho độ phân giải lên đến 20MP, bạn sẽ có được những hình ảnh chất lượng nhất. Với máy ảnh Canon IXUS 16MP & Zoom quang học 8x, bạn chỉ cần chọn tư thế chụp ảnh và lấy cảnh, phần còn lại nó sẽ tự lo cho bạn. Chính vì thế nếu bạn là một người không chuyên, bạn hoàn toàn có thể yên tâm về chất lượng khi sử dụng chiếc máy ảnh Canon IXUS 16MP & Zoom quang học 8x.
 

Trang bị thêm nhiều tính năng hiện đại
Với khả năng zoom quang học lên đến 8x, chiếc máy ảnh Canon IXUS 16MP & Zoom quang học 8x cho bạn những bức hình chụp cận cảnh hoặc chụp chân dung sắc nét nhất. Ngoài ra bạn cũng có thể thỏa sức sáng tạo trong mọi tư thế góc nhìn, chụp xa hay chụp gần. Tốc độ chụp ảnh 0.8 ảnh/ giây, giúp bạn có được nhiều hình ảnh lựa chọn trong thời gian ngắn nhất, nhờ đó bạn khó có thể bỏ qua những khoảnh khắc ấn tượng của gia đình, bạn bè trong những chuyến picnic. Nhờ đó bạn sẽ có được những trải nghiệm thú vị cùng với chiếc máy ảnh Canon IXUS 16MP & Zoom quang học 8x.

Thiết kế nhỏ gọn, tiện lợi
Là một chiếc máy du lịch, chiếc máy ảnh Canon IXUS 16MP & Zoom quang học 8x được thiết kế rất gọn nhẹ, dễ dàng cho bạn mang theo khi đi du lịch bất cứ nơi đâu. Đồng thời, màu sắc ưa nhìn, có được những đường nét tinh tế, sang trọng, chiếc máy ảnh Canon IXUS 16MP & Zoom quang học 8x sẽ giúp bạn cảm thất tự tin hơn khi mang theo bất cứ nơi đâu. Ngoài ra với những tính năng tuyệt vời đó, chiếc máy ảnh Canon IXUS 16MP & Zoom quang học 8x cũng sẽ là món quà tuyệt vời bạn dành tặng cho người thân, bạn bè trong những dịp quan trọng để thể hiện sự quan tâm, tinh tế của mình.

 

THÔNG TIN SẢN PHẨM
- Thiết bị xử lí hình ảnh DIGIC 4
- Độ phân giải 16MP
- Zoom quang học 8x
- Điểm ảnh hiệu quả Xấp xỉ 16.0 triệu điểm ảnh
- Hệ thống lấy sáng Lấy sáng toàn bộ
- Tốc độ màn trập 1 – 1/2000 giây
- Chụp liên tiếp Xấp xỉ 0,8 ảnh/giây', N'MAY-ANH-CANON-IXUS-135.png,MAY-ANH-CANON-IXUS-135-hinh1.png,MAY-ANH-CANON-IXUS-135-hinh2.png,MAY-ANH-CANON-IXUS-135-hinh3.png', 2601300, 1, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (19, N'MA019', N'MÁY ẢNH CANON DSC-W690/SC E32', N'Chiếc', N'Đạt độ mỏng 21.7mm, Máy ảnh Cyber-shot W690 là chiếc máy ảnh thời trang mà bạn luôn muốn có bên mình ở mọi nơi.', N'Zoom Quang Học 10x 
Tiếp cận thật rõ nét
Ống kính Zoom quang học 10x cho phép phóng đại hình ảnh gấp 2 lần mà vẫn đảm bảo hình ảnh rõ nét và chi tiết cho các ảnh xa. Và với chức năng Zoom hình ảnh rõ nét lên đến 20x cho hình ảnh chất lượng cao mà không làm giảm đi điểm ảnh nào.

6.1 Megapixels 

Cho hình ảnh sắc nét và rực rỡ mọi lúc

Với độ phân giải 16.1 mega pixels không chỉ giúp bạn chụp lại hình ảnh thật sắc nét mà đồng thời giảm nhiễu khi phóng lớn hay cắt ảnh để chọn lấy chủ thể bạn muốn..', N'MA-_ANH-SONY-DSC-W690-SC-E32-1.jpg,MA-_ANH-SONY-DSC-W690-SC-E32-2.jpg,MA-_ANH-SONY-DSC-W690-SC-E32-3.jpg,MA-_ANH-SONY-DSC-W690-SC-E32-5.jpg', 4900000, 1, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (20, N'MA020', N'MÁY ẢNH CANON NEX-5RL/BQ AP2', N'Chiếc', N'Sony NEX-5R thế hệ mới giúp bạn ghi lại từng khoảnh khắc cuộc sống thật sáng tạo. Với cảm biến APS-C lớn đảm bảo hình ảnh cực nét và màu sắc sống động. Fast Hybrid AF, chụp 10 fps, màn hình lật 180°, quay phim Full HD và nhiều tính năng mạnh mẽ khác cho bạn luôn có được những bức ảnh chuyên nghiệp.', N'Sony NEX-5R thế hệ mới giúp bạn ghi lại từng khoảnh khắc cuộc sống thật sáng tạo. Với cảm biến APS-C lớn đảm bảo hình ảnh cực nét và màu sắc sống động. Fast Hybrid AF, chụp 10 fps, màn hình lật 180°, quay phim Full HD và nhiều tính năng mạnh mẽ khác cho bạn luôn có được những bức ảnh chuyên nghiệp.

Cảm biến 16.1MP "Exmor™" APS HD CMOS
Lấy nét cực nhanh với công nghệ Hybrid AF
Màn hình 3.0" Xtra Fine LCD xoay 180°
Giao diện trực quan (Control Dial, Màn hình cảm ứng với Touch Shutter)
Tích hợp Wi-Fi
Quay phim AVCHD Full HD', N'MAY-ANH-SONY-NEX-5RL-BQ-AP2-1.jpg,MAY-ANH-SONY-NEX-5RL-BQ-AP2-2.jpg,MAY-ANH-SONY-NEX-5RL-BQ-AP2-3.jpg,MAY-ANH-SONY-NEX-5RL-BQ-AP2-4.jpg,MAY-ANH-SONY-NEX-5RL-BQ-AP2-5.jpg', 12410000, 1, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (21, N'MA021', N'MÁY ẢNH CANON DSC-WX200/BC E32', N'Chiếc', N'- Zoom Mạnh Mẽ trong thân máy Nhỏ Gọn
Chia sẻ các hình ảnh của bạn thuận tiện với Wi-Fi tích hợp', N'- Thưởng thức Zoom Xa trong thân máy Nhỏ Gọn

Tận hưởng sự tiện lợi để tiếp cận các chủ thể của bức ảnh, ngay khi từ khoảng cách xa. Zoom quang học 10x trên ống kính Sony G mang đến hình ảnh sắc nét và chi tiết bằng việc điều chỉnh ống kính tới phía trước hay về sau để thay đổi tiêu cự, vì thế chủ thể của bạn sẽ được phóng to mà không làm mất đi điểm ảnh nào.', N'SONY_DSC-WX200BC_E32.jpg,SONY_DSC-WX200BC_E32 (2).jpg,SONY_DSC-WX200BC_E32-1.jpg,SONY_DSC-WX200BC_E32-2.jpg,SONY_DSC-WX200BC_E32-3.jpg', 7410000, 1, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (22, N'MA022', N'MÁY ẢNH CANON EK-GC100ZKAXEV (GALAXY CAMERA) (ĐEN)', N'Chiếc', N'Hãy để laptop của bạn ở nhà và làm nhẹ bớt hành lý của bạn. Chiếc máy GALAXY Camera là máy ảnh duy nhất trên thế giới có khả năng truy cập mạng. Bạn có thể kết nối, đăng tải và chia sẻ hình ảnh trên các mạng xã hội truyền thông yêu thích trực tiếp từ GALAXY Camera. Vì vậy trong những chuyến du lịch sắp tới, nếu muốn nhanh chóng chia sẻ những khoảnh khắc của mình cho bạn bè, bạn chỉ cần đem theo bên mình máy ảnh GALAXY Camera. ', N'SAMSUNG GALAXY CAMERA

Hãy để laptop của bạn ở nhà và làm nhẹ bớt hành lý của bạn. Chiếc máy GALAXY Camera là máy ảnh duy nhất trên thế giới có khả năng truy cập mạng. Bạn có thể kết nối, đăng tải và chia sẻ hình ảnh trên các mạng xã hội truyền thông yêu thích trực tiếp từ GALAXY Camera. Vì vậy trong những chuyến du lịch sắp tới, nếu muốn nhanh chóng chia sẻ những khoảnh khắc của mình cho bạn bè, bạn chỉ cần đem theo bên mình máy ảnh GALAXY Camera. 

Chia sẻ hình ảnh

Bạn có nhớ những lúc chụp hình nhóm kéo dài như vô tận vì mọi người đều mang theo máy riêng của mình? Bạn sẽ không phải rơi vào tình huống đó nữa vì bây giờ bạn có thể chia sẻ hình ảnh ngay khi vừa chụp xong với tính năng Chia sẻ hình ảnh của GALAXY Camera. Tính năng này giúp bạn chia sẻ hình ảnh với tối đa 5 thiết bị bắt sóng Wi-Fi nằm trong khu vực phát sóng. 

Tự động lưu trữ hình ảnh

Tính năng Tự động lưu trữ của GALAXY Camera sẽ tự động chuyển những hình ảnh quý giá của gia đình bạn vào hệ thống dữ liệu đám mây ngay từ lúc tấm hình được tạo ra. Chỉ cần chọn nơi lưu trữ và bấm chụp, tấm hình sẽ được tự động đưa vào hệ thống.* Tính năng này sẽ được cập nhật sau.

Chế độ chụp hình thông minh

Không cần phải ganh tị với các tay máy chuyên nghiệp với đồ nghề “khủng”, bạn cũng có thể chụp lại những khoảnh khắc tuyệt mỹ. Như những đường ánh sáng về đêm tại ngã tư đông đúc đèn xe. Hay chụp ngay hình ảnh động tốc độ cao với chức năng Action Freeze. Với Chế độ chụp hình thông minh, bạn được trang bị với nhiều chế độ đặc biệt và tiện dụng. Chỉ cần chọn và chụp. 

Chụp siêu xa đến 21 lần

Lưu hình ảnh với độ zoom kỹ thuật số để có thể chỉnh sửa lại sau. Chế độ zoom quang 21x của GALAXY Camera là 100% quang học, giúp bạn có thể xem cận cảnh đối tượng mà ảnh vẫn vô cùng sắc nét.', N'MAY-ANH-SAMSUNG-GALAXY-CAMERA-15.jpg,MAY-ANH-SAMSUNG-GALAXY-CAMERA-16.jpg,MAY-ANH-SAMSUNG-GALAXY-CAMERA-17.jpg,MAY-ANH-SAMSUNG-GALAXY-CAMERA-21.jpg,MAY-ANH-SAMSUNG-GALAXY-CAMERA-24.jpg', 7490000, 1, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (23, N'MA023', N'MÁY ẢNH CANON EOS 600D', N'Chiếc', N'Bất kể là với người lần đầu yêu thích chụp ảnh hay là một nhiếp ảnh gia chuyên nghiệp, dòng DSLR của Canon mang hệ thống máy ảnh hoàn thiện nhất đặt vào tay bạn. Với công nghệ quang hàng đầu, hơn 60 ống kính để đáp ứng và không ngừng nâng cấp các lựa chọn', N'Tầm nhìn không hạn chế
Bất kể là với người lần đầu yêu thích chụp ảnh hay là một nhiếp ảnh gia chuyên nghiệp, dòng DSLR của Canon mang hệ thống máy ảnh hoàn thiện nhất đặt vào tay bạn. Với công nghệ quang hàng đầu, hơn 60 ống kính để đáp ứng và không ngừng nâng cấp các lựa chọn, Canon mang lại một hệ thống nhiếp ảnh giúp bạn có được nhiều lựa chọn hình ảnh nhất. Hiển nhiên đây là lựa chọn số một của các nhiếp ảnh gia chuyên nghiệp.



Niềm cảm hứng cho mọi người
Với rất nhiều lựa chọn nâng cấp, hệ thống EOS của Canon phù hợp cho tất cả người sử dụng với các kỹ năng nhiếp ảnh khác nhau; từ người sử dụng ở mức cơ bản tới người giàu kinh nghiệm nhất, bạn sẽ thấy một chiếc máy ảnh được truyền cảm hứng nhờ EOS.

Đối với người sử dụng DSLR chuyên nghiệp: 
sê ri EOS 1D và 5D
Đối với người sử dụng DSLR bán chuyên nghiệp: 
sê ri EOS 40D, 50D và 7D
Đối với người mới sử dụng DSLR: 
sê ri EOS 450D, 500D, 550D và 1000D', N'MAY-ANH-Canon-EOS-600D-hinh2.jpg,MAY-ANH-Canon-EOS-600D-hinh1.jpg,MAY-ANH-Canon-EOS-600D-hinh2 (1).jpg', 0, 1, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (24, N'QP001', N'CANON FS300 – MÁY QUAY THẺ NHỚ (XÁM)', N'Chiếc', N'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.
Hàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu. ', N'HÀNG NHẬP KHẨU
Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.
Hàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu.
 
TÍNH NĂNG SẢN PHẨM 
 
Với Canon FS300, bạn có thể chắc chắn rằng ngay cả khi đang di chuyển video của bạn sẽ mịn màng, ổn định . Với Quick Start, bạn sẽ không bao giờ bỏ lỡ một shot nhanh chóng mở ra một lần nữa. Khi FS300 là trong chế độ camera và màn hình LCD được đóng lại, nó được đặt ở chế độ chờ. Khi các hành động bắt đầu, mở bảng điều khiển LCD và bạn sẽ bắt đầu ghi âm trong vòng chưa đầy một giây. Bạn cũng sẽ giúp kéo dài tuổi thọ pin của bạn so với các máy quay để lại trong chế độ ghi âm thông thường.', N'canon-4843-618413-1-zoom.jpg', 4221000, 6, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (25, N'QP002', N'CANON VIXIA HF M40 - MÁY QUAY PHIM / 10X (ĐEN)', N'Chiếc', N'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.
Hàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu.', N'HÀNG NHẬP KHẨU
Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.
Hàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu.
 
TÍNH NĂNG NỔI BẬT
Máy quay phim Canon Vixia HF M40 hỗ trợ tính năng chống chói, màn hình LCD thường độ phân giải cao, kích thước 3.0 inch để hiển thị những gì mà ống kính máy quay thu được. Điều này giúp người dùng dễ dàng quan sát được những đối tượng cần quay. Theo các thông tin từ nhà sản xuất, máy quay Vixia HF M40 hỗ trợ tích hợp cảm biến âm thanh mạnh, thông minh cho phép ghi âm lúc quay theo nhiều chuẩn khác nhau như Hi-Fi, 5.1, HD…, cho phép mở rộng góc không gian thu hình với việc hỗ trợ tỷ lệ hình 16:9.
 
Ngoài ra, máy quay này còn được trang bị cảm biến 1/3-inch HD CMOS và hỗ trợ các dòng thẻ nhớ SD, SDHC, SDXC. Theo Canon, phim thu bằng máy quay phim này có độ nét HD (hỗ trợ thu âm công nghệ 5.1 channel surround sound) và được lưu ở định dạng MPEG, WAV, AVCHD. Được trang bị nguồn năng lượng pin Lithium bền, hiệu quả với thời gian hoạt động lâu, model camcorder này giúp người dùng có thể an tâm hơn với những cảnh quay dài. Theo hãng Canon thì bạn có thể vừa quay vừa sạc pin mà không ảnh hưởng tuổi thọ của nó.', N'canon-2050-309213-1-zoom.jpg', 8505000, 6, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (26, N'QP003', N'SONY HANDYCAM DCR-SR47 – MÁY QUAY THẺ NHỚ (XANH) - HÀNG NHẬP KHẨU SONY HANDYCAM DCR-SR47', N'Chiếc', N'Handycam DCR-SR47 là máy quay có độ phân giải tiêu chuẩn chạy bằng ổ cứng hạng trung của Sony. Những đặc điểm chủ yếu hấp dẫn là kích thước nhỏ, dung lượng lớn và ống kính siêu zoom. Bên cạnh đó nó cũng khá dễ sử dụng, một phần vì menu hoạt động bằng cảm ứng và một phần vì các lựa chọn chụp của nó rất đơn giản. Cũng giống hầu hết các máy quay trong dòng máy, chất lượng video thuộc loại bình thường, đặc biệt khi bạn xem hình ở dạng full screen trên một TV độ phân giải cao hay khi hình ảnh có nhiều chi tiết độ phân giải cao trong nội dung', N'Handycam DCR-SR47 là máy quay có độ phân giải tiêu chuẩn chạy bằng ổ cứng hạng trung của Sony. Những đặc điểm chủ yếu hấp dẫn là kích thước nhỏ, dung lượng lớn và ống kính siêu zoom. Bên cạnh đó nó cũng khá dễ sử dụng, một phần vì menu hoạt động bằng cảm ứng và một phần vì các lựa chọn chụp của nó rất đơn giản. Cũng giống hầu hết các máy quay trong dòng máy, chất lượng video thuộc loại bình thường, đặc biệt khi bạn xem hình ở dạng full screen trên một TV độ phân giải cao hay khi hình ảnh có nhiều chi tiết độ phân giải cao trong nội dung.
 
Thiết kế
 
Có màu xanh, đen và đỏ, DCR-SR47 thực sự là một chiếc máy quay nhỏ xinh xắn. Các điều khiển của nó được định dạng cơ bản với nút khởi động/dừng ở mặt sau và vòng tròn gẩy zoom ở đỉnh, ngay trước nút chụp để nhấn chụp nhanh trong chế độ chụp hình. Toàn bộ máy có kích thước chỉ bằng 1lon nước uống có ga. Dây đeo tay cũng thoải mái, và nếu bạn chỉnh nó hơi ngắn thì sẽ khó để điều chỉnh máy vì máy quay khá nhỏ và nhẹ, phần to nhất chủ yếu là ống kính.
 
may1.jpg
DCR-SR47 sẵn sàng chụp rất nhanh khi bạn gạt màn hình cảm ứng LCD 69mm ra. 
 
Pin nhô ra từ mặt sau. Nằm dưới nó là rãnh card Memory Stick Pro Duo và lỗ cắm giắc cắm điện. Ở đằng trước, bên dưới ống kính, là một cửa nhỏ ẩn bên trong là đầu vào AV. Gạt nhẹ màn để màn hình cảm ứng bật ra – không có tầm nhìn – và bạn sẽ tìm thấy 1 loạt các nút trên một khoang của thân máy có các tác dụng như khởi động máy, bật tắt thông tin trên hiển thị, quay phim DVD trực tiếp sử dụng đầu DVD VRD-P1 DVDirect DVD của Sony và thay đổi chế độ xem lại. Bên cạnh đó còn có nút “easy” giúp khóa một vài tính năng tiên tiến của máy quay và một nút để điềuchỉnh phơi ảnh tức khắc cho các hình ảh ánh sáng yếu. Các cổng còn lại cho đầu ra/ đầu vào cũng nằm trong khoang này : đó là cổng USB mini.
 
Tính năng
 
Màn hình cảm ứng rất nhạy nhưng lại dễ dàng gây phân vân cho những ai chưa quen sử dụng menu và các nút cơ bản của Sony. Nhấn nút menu sẽ giúp bạn trình duyệt vào các lựa chọn chụp nội dung, mặc dù các nút home lại đưa cho bạn tất cả khả năng có thể. Vấn đề chính với cài đặt này là việc phải nhớ vị trí của các chức năng còn lại. Thật may là hãng Sony có một menu dạng cây ở chế độ chỉnh tay cho máy quay này. Với một vài lần luyện tập, hệ thống sẽ có hiệu quả và hoạt động đầy đủ và trở nên dễ dàng hơn.
 
Máy quay này được thiết kế để quay phim đơn giản và như vậy nên không có nhiều các lựa chọn thêm cho chụp hình. Đa phần thời gian bài kiểm tra để cho máy quay này cài đặt ở chế độ tự động cho cân bằng trắng, lựa chọn scene và lấy nét, và nó hoạt động khá ổn. Có thêm một vài lựa chọn scene nếu bạn muốn chọn cụ thể hơn và cũng có cả lựa chọn cho cân bằng trắng nữa. Cũng như vậy, nếu bạn muốn điều chỉnh với lấy nét và phơi ảnh nhiều hơn, bạn có thể điều chỉnh cả 2 bằng cách chạm vào điểm trên màn hình mà bạn muốn máy quay chỉ ra thông tin của nó. 
 
may2.jpg
Trình diện
 
Mặc dù thuộc hạng trung b ình nhưng DCR-SR47 trình diện khá tốt. Nó có một lựa chọn instant-on hoạt động bởi màn hình LCD theo hướng bật máy lên và quay phim lập tức rất nhanh. Tự động lấy nét cũng nhạy, tuy nhiên khi zoom ra nó chạy quanh để cố lấy nét nhất là trong các điều kiện ánh sáng yếu.
 
Thời gian sử dụng pin lên tới 90 phút cho các thước chụp liên tiếp. Thời gian này sẽ giảm đi nếu bạn thường bật máy lên và lại tắt máy rồi lại xem lại các clip. Cũng có pin mở rộng cho máy, trong đó có một lựa chọn cho thời gian lên tới 11 giờ khi chụp liên tiếp.
 
Chất lượng tổng thể video bình thường. Hình ảnh chỉ sắc nét khi ở chế độ tele macro. Các clip cũng hiển thị khá nhiều tạp nhiễu và ảnh hưởng số cho đến khi bạn giảm kích thước xuống định dạng YouTube. Những hiệu ứng này bao gồm các viền tím dễ nhận thấy xung quanh hình ảnh. Tuy nhiên nếu bạn vẫn đang sống trong thế giới độ phân giải thấp, các video được quay với mục đích chia sẻ trên Web hay bạn chỉ muốn chụp lại những khoảnh khắc mà không bận tâm trông chúng thế nào thì DCR-SR47 này cũng ổn.
 
Màu sắc trông ổn và cân bằng trắng cũng khá. Mặc dù video ánh sáng yếu có một chút tạp nhiễu thì kết quả vẫn tốt. Cuối cùng, mặc dù máy quay này có thể chụp hình ảnh tĩnh thì bạn vẫn sẽ thấy rằng hình ảnh chụp từ một chiếc điện thoại ra còn đẹp hơn.
 
Kết luận
 
Mặc dù đúng là bạn sẽ có được video tốt hơn từ một máy quay HD và chúng cũng không cần thiết phải tốn nhiều tiền, thì video chất lượng tiêu chuẩn hiện vẫn đang đòi hỏi phải có khả năng chụp và chỉnh sửa ảnh trên một máy tính hay laptop. Với Sony Handycam DCR-SR47, bạn sẽ trao đổi hình ảnh với rất nhiều dung lượng và ống kính 60x. Nó nhỏ, nhẹ và dễ sử dụng. Việc bạn phải làm chỉ là đừng hi vọng quá nhiều về chất lượng video HD khi bạn đang trả tiền mua 1 loại SD.', N'sony-ericsson-4844-718413-1-zoom.jpg', 4410000, 6, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (27, N'QP004', N'SONY HDR-CX240E', N'Chiếc', N'Sony HDR-CX240E là dòng máy quay phim cầm tay dành cho gia đình được trang bị những tính năng vượt trội. Thiết bị sử dụng cảm biến Exmor R CMOS, ống Lens ZEISS Vario-Tessar 29.8mm, Zoom quang 27x cùng vi xử lý BIONZ Z. Máy còn được tích hợp nhiều chế độ và hiệu ứng hình ảnh độc đáo cho bạn thỏa sức lựa chọn. Máy quay phim Sony HDR-CX240E hứa hẹn sẽ là một công cụ tuyệt vời để lưu lại những khoảnh khắc quý giá của cả gia đình bạn.', N'Sony HDR-CX240E là dòng máy quay phim cầm tay dành cho gia đình được trang bị những tính năng vượt trội. Thiết bị sử dụng cảm biến Exmor R CMOS, ống Lens ZEISS Vario-Tessar 29.8mm, Zoom quang 27x cùng vi xử lý BIONZ Z. Máy còn được tích hợp nhiều chế độ và hiệu ứng hình ảnh độc đáo cho bạn thỏa sức lựa chọn. Máy quay phim Sony HDR-CX240E hứa hẹn sẽ là một công cụ tuyệt vời để lưu lại những khoảnh khắc quý giá của cả gia đình bạn.
TÍNH NĂNG NỔI BẬT
Nâng cao chất lượng hình ảnh
Sự hỗ trợ của cảm biến Exmor R CMOS cùng chip BIONZ X sẽ giúp Sony HDR-CX240E ghi lại những thước phim hay những tấm ảnh chất lượng cao, giảm nhiễu trong nhiều điều kiện ánh sáng, kể cả khi bạn sử dụng vào ban đêm khi ánh sáng yếu. Bên cạnh đó, công nghệ cân bằng quang học (Optical SteadyShot) ở chế độ Active Mode của Sony còn đảm bảo hình ảnh không bị rung trong quá trình quay, cho bạn những khung hình ổn định với chất lượng cao nhất.
 
Góc quay rộng
Hình ảnh của mọi thành viên trong gia đình đều được ghi lại đầy đủ trong khung hình nhờ ống lens góc rộng 29.8mm, khắc phục được điểm yếu của những dòng máy quay trước đây. Máy hỗ trợ quay phim full HD và MP4
 
Chia sẻ dữ liệu nhanh chóng
Máy kết nối với điện thoại, máy tính bảng hay laptop qua Wifi, NFC để bạn chia sẻ dữ liệu dễ dàng. Bạn có thể nhận các đoạn video từ thiết bị để chia sẻ lên youtube hay facebook một cách nhanh chóng.
 
Nhiều hiệu ứng độc đáo
Camera được cài đặt đến 7 hiệu ứng cho cả chế độ quay phim và chụp ảnh để tạo các khung hình độc đáo và cá tính. Ngoài ra, máy còn có tính năng tự động xác định đối tượng để lựa chọn kỹ thuật quay phù hợp như chân dung, trẻ nhỏ, tripod, backlight, phong cảnh, spotlight, hoàng hôn, macro, low light.
 
Màn hình 2.7”
Máy được trang bị màn hình LCD 2.7" Clear Photo display rất thuận tiện để bạn điều chỉnh các chế độ phù hợp. Màn hình có độ sáng rõ, trong, màu sắc trung thực nên khi xem lại những đoạn phim đã quay sẽ thú vị hơn.', N'may-quay-phim-sony-hdr-PJ240E-1(1).jpg', 5699000, 1, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (28, N'QP005', N'SONY HDR-PJ340E - 30X', N'Chiếc', N'Sony HDR-PJ340E là dòng máy quay phim cầm tay cao cấp dành cho gia đình được trang bị những tính năng vượt trội. Thiết bị sử dụng cảm biến Exmor R CMOS, ống G Lens 26.8mm, Zoom 30x cùng vi xử lý BIONZ X. Điểm đặc biệt của máy là khả năng trình chiếu ở bất cứ đâu nhờ projector 13lm tích hợp. Máy quay phim Sony HDR-PJ340E hứa hẹn sẽ là một công cụ tuyệt vời để lưu lại những khoảnh khắc quý giá của cả gia đình bạn.', N'Sony HDR-PJ340E - 30x / Máy quay thẻ nhớ (Trắng)
theo Sony | Xem thêm Sony Máy quay phim
 Hãy là người đâu tiên đánh giá sản phẩm này
 Tôi thích sản phẩm này!
 
 
Bộ nhớ trong 16GB
Zoom quang 30x
Độ phân giải ảnh tĩnh 9.2MP
Màn hình LCD 2.7”
Tích hợp máy chiếu 13 lumens
Xuất xứ Trung Quốc
Bảo hành trong 24 tháng (Bằng phiếu bảo hành)
10.949.000 VND
Giá trước đây 10.999.000 VND
Hướng dẫn 
mua hàngMua ngay
Còn hàng
Giao trong : 2 - 6 ngày 
Được bán & giao hàng bởi Điện máy Bình Minh
Kiểm tra các dịch vụ giao hàng tại:
Tỉnh/Thành phố:
Quận/Huyện:
Giao hàng hỏa tốc có thể được áp dụng  
 THANH TOÁN KHI NHẬN HÀNG  THẺ TÍN DỤNG  THẺ ATM NỘI ĐỊA
Chi tiết sản phẩmThông tin sản phẩmNhận xét của khách hàng
Chi tiết sản phẩm Sony HDR-PJ340E - 30x / Máy quay thẻ nhớ (Trắng)
Bộ sản phẩm bao gồm:
1 x Thân máy
1 x Bộ pin sạc
1 x AC adaptor
1 x Cáp USB
1 x Dây nguồn
1 x Cáp HDMI
1 x CD-ROM
1 x Thẻ bảo hành
Sony HDR-PJ340E là dòng máy quay phim cầm tay cao cấp dành cho gia đình được trang bị những tính năng vượt trội. Thiết bị sử dụng cảm biến Exmor R CMOS, ống G Lens 26.8mm, Zoom 30x cùng vi xử lý BIONZ X. Điểm đặc biệt của máy là khả năng trình chiếu ở bất cứ đâu nhờ projector 13lm tích hợp. Máy quay phim Sony HDR-PJ340E hứa hẹn sẽ là một công cụ tuyệt vời để lưu lại những khoảnh khắc quý giá của cả gia đình bạn.
TÍNH NĂNG NỔI BẬT
Nâng cao chất lượng hình ảnh
Sự hỗ trợ của cảm biến Exmor R CMOS cùng chip BIONZ X sẽ giúp Sony HDR-PJ340E ghi lại những thước phim hay những tấm ảnh chất lượng cao, giảm nhiễu trong nhiều điều kiện ánh sáng, kể cả khi bạn sử dụng vào ban đêm khi ánh sáng yếu. Bên cạnh đó, công nghệ cân bằng quang học (Optical SteadyShot) ở chế độ quay thông minh (Intelligent Active Mode) của Sony còn đảm bảo hình ảnh không bị rung trong quá trình quay, cho bạn những khung hình ổn định với chất lượng cao nhất.
 
Góc quay rộng
Hình ảnh của mọi thành viên trong gia đình đều được ghi lại đầy đủ trong khung hình nhờ ống lens góc rộng 26.8mm, khắc phục được điểm yếu của những dòng máy quay trước đây. Máy hỗ trợ quay phim full HD, 60 khung hình/giây.
 
Chia sẻ dữ liệu nhanh chóng
Máy kết nối với điện thoại, máy tính bảng hay laptop, PC qua Wifi, NFC để bạn chia sẻ dữ liệu nhanh chóng và dễ dàng. Ngoài ra, bạn còn có thể sử dụng máy quay như một chiếc projector để chiếu hình ảnh lên tường và cùng cả nhà thưởng thức những kỷ niệm cũ. Thiết bị cho độ sáng 13 lumens, kích cỡ màn hình tối đa 100”. Hơn nữa, nếu kết nối máy với điện thoại qua cáp HDMI, bạn có thể xem phim, chơi game tuyệt vời hơn trên màn chiếu lớn.
 
Màn hình 2.7”
Máy được trang bị màn hình LCD 2.7" Clear Photo display rất thuận tiện để bạn điều chỉnh các chế độ phù hợp. Màn hình xoay quanh trục dọc 90 độ, ngang 270 độ, có độ sáng rõ, trong, màu sắc trung thực nên khi xem lại những đoạn phim đã quay sẽ thú vị hơn.', N'sony-7155-751762-1-product.jpg', 10950000, 1, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (30, N'QP006', N'SONY HDRPJ820E - 12X', N'Chiếc', N'Sony HDR-PJ820E là dòng máy quay phim cầm tay cao cấp dành cho gia đình được trang bị những tính năng vượt trội. Thiết bị sử dụng cảm biến Exmor R CMOS, ống G Lens 26.8mm, Zoom quang 12x cùng vi xử lý BIONZ X. Điểm đặc biệt của máy là khả năng trình chiếu ở bất cứ đâu nhờ projector 50lm tích hợp. Máy quay phim Sony HDR-PJ820E hứa hẹn sẽ là một công cụ tuyệt vời để lưu lại những khoảnh khắc quý giá của cả gia đình bạn.', N'Sony HDR-PJ820E là dòng máy quay phim cầm tay cao cấp dành cho gia đình được trang bị những tính năng vượt trội. Thiết bị sử dụng cảm biến Exmor R CMOS, ống G Lens 26.8mm, Zoom quang 12x cùng vi xử lý BIONZ X. Điểm đặc biệt của máy là khả năng trình chiếu ở bất cứ đâu nhờ projector 50lm tích hợp. Máy quay phim Sony HDR-PJ820E hứa hẹn sẽ là một công cụ tuyệt vời để lưu lại những khoảnh khắc quý giá của cả gia đình bạn.
TÍNH NĂNG NỔI BẬT
Nâng cao chất lượng hình ảnh
Sự hỗ trợ của cảm biến Exmor R CMOS cùng chip BIONZ X sẽ giúp Sony HDR-PJ820E ghi lại những thước phim hay những tấm ảnh chất lượng cao, giảm nhiễu trong nhiều điều kiện ánh sáng, kể cả khi bạn sử dụng vào ban đêm khi ánh sáng yếu. Bên cạnh đó, công nghệ cân bằng quang học (Balanced Optical SteadyShot) của Sony còn đảm bảo hình ảnh không bị rung trong quá trình quay, cho bạn những khung hình ổn định với chất lượng cao nhất.
 
Loại bỏ tạp âm
Điểm thú vị của chiếc máy này là nó có khả năng loại bỏ giọng của người quay phim (được coi là tạp âm thường xuất hiện) và vẫn giữ nguyên mọi thanh âm khác một cách trung thực nhờ công nghệ My Voice Cancelling. Thậm chí nếu bạn có quá phấn khích mà hò hét khi đang quay thì những âm thanh đó cũng sẽ được giảm xuống đến mức tối thiểu.
 
Góc quay rộng
Hình ảnh của mọi thành viên trong gia đình đều được ghi lại đầy đủ trong khung hình nhờ ống lens góc rộng 26.8mm, khắc phục được điểm yếu của những dòng máy quay trước đây. Máy hỗ trợ quay phim full HD, MP4.
 
Chia sẻ dữ liệu nhanh chóng
Máy kết nối với điện thoại, máy tính bảng hay laptop, PC qua Wifi, NFC để bạn chia sẻ dữ liệu nhanh chóng và dễ dàng. Ngoài ra, bạn còn có thể sử dụng máy quay như một chiếc projector để chiếu hình ảnh lên tường và cùng cả nhà thưởng thức những kỷ niệm cũ. Thiết bị cho độ sáng 50 lumens, kích cỡ màn hình tối đa 200”.
 
Màn hình cảm ứng 3”
Máy được trang bị màn hình cảm ứng Xtra Fine LCD Display 3” rất thuận tiện để bạn điều chỉnh các chế độ phù hợp. Màn hình có độ sáng rõ, trong, màu sắc trung thực nên khi xem lại những đoạn phim đã quay sẽ thú vị hơn.', N'sony-7211-061762-1-product.jpg', 16730000, 1, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (31, N'QP007', N'MÁY QUAY PHIM CANON SMX-F500BP/XSV', N'Chiếc', NULL, N'Máy quay Samsung F500
Đặt mình vào giữa hành động
Đặt mình vào giữa hành động
Chúng ta đều biết rằng ống kính xoom quang học mạnh mẽ là tính năng quan trọng trong bất kỳ máy ảnh nào, đó là lý do vì sao Samsung F50 được trang bị với ống kính lntellizoom 65X (ống kính zoom quang học 52X). Nó mang bạn đến gần với hạnh động như bạn muốn và đảm bảo rằng mỗi một hình ảnh đều sắc nét và rõ ràng. Để tạo tỉ lệ zoom cao hơn, Samsung đã sử dụng những điểm ảnh bổ sung từ bộ cảm biến hình ảnh với zoom quang học hiện có. Số điểm ảnh tăng cường cho phép những bức ảnh rõ ràng hơn mà không bị mờ nhòe, thậm chí từ những khoảng cách xa. Giò đây bạn có thể chụp lại chi tiết của từng cảm xúc.
Kéo dài ký ức với thời gian quay kéo dài
  Kéo dài ký ức với thời gian quay kéo dài 
Với khả năng tạo ra video định dạng H264, video chất lượng cao dạng nén, Samsung F50 có khả năng quay phim 1.5 lần dài hơn nhưng máy quay phim SD thông thường quay video định dạng MPEG 2. Điều đó có nghĩa bạn có thêm thời gian quay lại những kỷ niệm đáng nhớ và ít thời gian sạc pin. Hơn nữa, với cùng dung lượng SD card, F50 có thể quay những videos dài hơn với chất lượng tốt hơn (Lưu ý: 6h20’ là thời gian quay trung bình, tương ứng với 16 GB bộ nhớ)
Thêm cảm xúc vào video gia đình của bạn
  Thêm cảm xúc vào video gia đình của bạn 
Ở Hollywood, các đạo diễn sử dụng âm nhạc để tạo cảm xúc cho những bộ phim của họ. Giờ đây bạn cũng có thể làm như thế với những video gia đình của mình với tính năng Smart BGM. Smart BGM cho phép bạn lựa chọn một nhạc nền phong phú đã được thu âm trước và lồng chúng vào những bộ phim mà bạn đã quay. Nhạc nền tự động trở nên nhỏ hơn ở những cảnh đối thoại, nên bạn không sợ có lời thoại nào đó nghe không rõ. Vì thế, hãy thêm chút kịch tính vào những video gia đình của bạn để lôi cuốn sự chú ý của người xem với Smart BGM.
Tự động ghép đoạn
  Tự động ghép đoạn 
Khi quay một video dài, chẳng hạn như một trận bóng đá hay của trẻ con chơi đùa, có thể bạn sẽ cần tạm dừng để nghỉ ngơi một chút. Với tính năng Record Pause của Samsung F50, bạn có thể tạm dừng việc ghi hình và sau đó tiếp tục trở lại mà không cần phải tạo một file mới. Với cách này, bạn chỉ cần làm việc trên một file và không cần phải nối các file với nhau khi biên tập, chia sẻ hoặc truyền đi. Giờ đây quay video gia đình của bạn và chia sẻ cho mọi người cùng xem chưa bao giờ dễ dàng hơn thế.
Pin sử dụng lâu hơn
  Pin sử dụng lâu hơn 
Hãy tận hưởng sự tiêu thụ năng lượng thấp và pin hiệu quả hơn với công nghệ chip tiên tiến của Samsung. Với công nghệ sáng tạo này, bạn có thể sử dụng pin lên đến 4 giờ khi quay video, giúp bạn quay dài hơn mà không cần nghỉ để sạc pin * Thời gian sử dụng pin (4 giờ) : chỉ với F53 / F54.', N'may-quayphim-samsung-HMX-Q130BP-anh113212544574ec0be39ba90c(1)(1).jpg', 3850000, 6, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (32, N'QP008', N'MÁY QUAY PHIM SONY HDR-CX240E/BCE35', N'Chiếc', N'Ghi lại những đoạn phim và hình ảnh đạt chi tiết ngoạn mục với độ tương phản tuyệt vời ngay cả trong môi trường thiếu sáng. Với cảm biến Exmor R™ CMOS của Sony, giờ đây bạn có thể đạt được những đoạn phim độ phân giải cao với hiện tượng nhiễu được giảm nhiễu tối đa trong mọi điều kiện ánh sáng.', N'Ghi hình tuyệt đẹp ở cả những nơi thiếu sáng
 
Ghi lại những đoạn phim và hình ảnh đạt chi tiết ngoạn mục với độ tương phản tuyệt vời ngay cả trong môi trường thiếu sáng. Với cảm biến Exmor R™ CMOS của Sony, giờ đây bạn có thể đạt được những đoạn phim độ phân giải cao với hiện tượng nhiễu được giảm nhiễu tối đa trong mọi điều kiện ánh sáng.
 
 
Chất lượng hình ảnh sắc nét & rõ ràng hơn
 
Chất lượng hình ảnh chuyên nghiệp từ ống kính 29.8mm ZEISS Tessar® được thiết kế đặc biệt cho dòng máy quay nhỏ gọn. Khả năng quang học chuẩn xác của ống kính cao cấp này mang đến chất lượng hình ảnh vô cùng sắc nét và rõ ràng trong từng lần quay.
 
Gần hơn đến từng chủ thể
 
Tận dụng mức zoom quang học mạnh mẽ trên Handycam® kết hợp
với Zoom hình ảnh rõ nét (Clear Image Zoom) lên đến 54X cho bạn
tiếp cận gần hơn từng hành động bạn muốn để đạt được hình ảnh
rõ ràng và sắc nét như bạn nhìn thấy.', N'may-quay-phim-sony-hdr-cx240e.jpg,may-quay-phim-sony-hdr-cx240e-1.jpg,may-quay-phim-sony-hdr-cx240e-1.jpg,may-quay-phim-sony-hdr-cx240e-2.jpg', 8505000, 6, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (33, N'QP009', N'MÁY QUAY PHIM JVC GZ-E10BAG', N'Chiếc', N'Máy Quay Phim JVC GZ-E10 gọn nhẹ, dễ dàng mang theo bên mình để ghi lại những thước phim chất lượng kinh ngạc. JVC GZ-E10 Full HD Everio', N'Máy Quay Phim JVC GZ-E10 gọn nhẹ, dễ dàng mang theo bên mình để ghi lại những thước phim chất lượng kinh ngạc. JVC GZ-E10 Full HD Everio máy quay phim Full HD 1920 x 1080 và có thể sản xuất 1080/60p chất lượng rất tốt. Sử dụng khe thẻ nhớ đa năng thích ứng với nhiều loại thẻ nhớ (SD / SDHC / SDXC ) giúp bạn tha hồ lưu trữ. GZ-E10 HAS back-illuminated 1/5.8 "cảm biến hình ảnh CMOS 1.5MP, một đầu ra HDMI mini và ống kính HD Konica Minolta. Các ống kính HD chất lượng cao hỗ trợ zoom quang 40x trong độ nét cao, 70x zoom năng động trong tiêu chuẩn định nghĩa và zoom kỹ thuật số 200x trong cả HD và SD. Với màn hình LCD 2.7" dễ dàng kiểm tra video khi quay.
- Cảm biến 1/5.8" CMOS
- Zoom mở rộng đến 40x
- Chống rung SteadyShot (chế độ Active)
- Quay phim Full HD 1080/60p
- Màn hình LCD 2.7" LCD 230k
- Hình ảnh Nâng cao ổn định
- Nhận diện khuôn mặt và K2 Công nghệ', N'gz-e10.jpg,gz-e10-2.jpg,gz-e10-3.jpg', 7704000, 6, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (34, N'QP010', N'MÁY QUAY PHIM JVC GZ-E205RAG', N'Chiếc', N'Hãy để sự sáng tạo của bạn vươn xa với máy quay phim Full HD nhỏ gọn với khe cắm thẻ nhớ SDXC và bộ cảm biến CMOS cho chất lượng hình ảnh tuyệt vời ngay cả trong điều kiện thiếu sáng. Việc chụp ảnh và xem lại ảnh chưa bao giờ dễ dàng đến thế với màn hình cảm ứng LCD 3.0 inch. Zoom quang học 40x giúp mang mọi vật đến gần bạn một cách dễ dàng. Chức năng ổn định hình ảnh cao cấp và chức năng chụp ảnh thông minh giúp bạn có được những bức ảnh chân thực nhất.', N'Hãy để sự sáng tạo của bạn vươn xa với máy quay phim Full HD nhỏ gọn với khe cắm thẻ nhớ SDXC và bộ cảm biến CMOS cho chất lượng hình ảnh tuyệt vời ngay cả trong điều kiện thiếu sáng. Việc chụp ảnh và xem lại ảnh chưa bao giờ dễ dàng đến thế với màn hình cảm ứng LCD 3.0 inch. Zoom quang học 40x giúp mang mọi vật đến gần bạn một cách dễ dàng. Chức năng ổn định hình ảnh cao cấp và chức năng chụp ảnh thông minh giúp bạn có được những bức ảnh chân thực nhất.  
Tính năng
40x Optical Zoom (in High Definition) / 70x Dynamic Zoom (in Standard Definition) / 200x Digital Zoom
Memory Card Slot for SDXC/SDHC/SD
AVCHD & Standard Definition Dual Format
1/5.8-inch 1.5M pixel Back Illuminated CMOS
24Mbps High Bit Rate Recording
Super LoLux with Back-Illuminated CMOS Sensor
Advanced Image Stabilizer
Intelligent AUTO
Time-Lapse REC
Auto REC
Auto flash
Zoom MIC
Face Recognition
Smile Meter / Smile Shot
Face Sub-Window
Animation Effect
K2 Technology for High Quality Sound
Simultaneous Full HD Video & 2M Still Shooting
Silent Mode
1920x1080/50P Output
HDMI® Output (Mini)
KONICA MINOLTA HD LENS
Easy Upload to YouTube™ / Facebook (HD Compatible)
3.0" "Frameless" Touch Panel LCD (230k)
Auto Illumi.Light
Pixela Everio MediaBrowser 4 provided (for Windows®)', N'MAY-QUAY-PHIM-GZ-E205-5.jpg,MAY-QUAY-PHIM-GZ-E205-7.jpg,MAY-QUAY-PHIM-GZ-E205-9.jpg', 4950000, 6, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (35, N'QP011', N'MÁY QUAY PHIM JVC GZ-E205BAG', N'Chiếc', N'Hãy để sự sáng tạo của bạn vươn xa với máy quay phim Full HD nhỏ gọn với khe cắm thẻ nhớ SDXC và bộ cảm biến CMOS cho chất lượng hình ảnh tuyệt vời ngay cả trong điều kiện thiếu sáng. Việc chụp ảnh và xem lại ảnh chưa bao giờ dễ dàng đến thế với màn hình cảm ứng LCD 3.0 inch. Zoom quang học 40x giúp mang mọi vật đến gần bạn một cách dễ dàng. Chức năng ổn định hình ảnh cao cấp và chức năng chụp ảnh thông minh giúp bạn có được những bức ảnh chân thực nhất. ', N'Hãy để sự sáng tạo của bạn vươn xa với máy quay phim Full HD nhỏ gọn với khe cắm thẻ nhớ SDXC và bộ cảm biến CMOS cho chất lượng hình ảnh tuyệt vời ngay cả trong điều kiện thiếu sáng. Việc chụp ảnh và xem lại ảnh chưa bao giờ dễ dàng đến thế với màn hình cảm ứng LCD 3.0 inch. Zoom quang học 40x giúp mang mọi vật đến gần bạn một cách dễ dàng. Chức năng ổn định hình ảnh cao cấp và chức năng chụp ảnh thông minh giúp bạn có được những bức ảnh chân thực nhất.  
Tính năng
40x Optical Zoom (in High Definition) / 70x Dynamic Zoom (in Standard Definition) / 200x Digital Zoom
Memory Card Slot for SDXC/SDHC/SD
AVCHD & Standard Definition Dual Format
1/5.8-inch 1.5M pixel Back Illuminated CMOS
24Mbps High Bit Rate Recording
Super LoLux with Back-Illuminated CMOS Sensor
Advanced Image Stabilizer
Intelligent AUTO
Time-Lapse REC
Auto REC
Zoom MIC
Face Recognition
Smile Meter / Smile Shot
Face Sub-Window
Animation Effect
K2 Technology for High Quality Sound
Simultaneous Full HD Video & 2M Still Shooting
Silent Mode
1920x1080/50P Output
HDMI® Output (Mini)
KONICA MINOLTA HD LENS
Easy Upload to YouTube™ / Facebook (HD Compatible)
3.0" "Frameless" Touch Panel LCD (230k)
Auto Illumi.Light
Pixela Everio MediaBrowser 4 provided (for Windows®)', N'MAY-QUAY-PHIM-GZ-E205-4.jpg,MAY-QUAY-PHIM-GZ-E205-3.jpg,MAY-QUAY-PHIM-GZ-E205-2.jpg', 4950000, 6, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (36, N'QP012', N'MÁY QUAY PHIM JVC GZ-MS150HAG', N'Chiếc', N'Một sản phẩm nhỏ gọn và thời trang với một khe cắm thẻ SDXC, cho bạn những khung cảnh đẹp một cách dễ dàng và lý tưởng cho chia sẻ video trên web! JVC Everio ™ GZ-MS150 với các tính năng tuyệt vời như zoom năng động 70x, chống rung hình ảnh nâng cao cho các bức ảnh luôn ổn định, và AUTO thông minh cho chất lượng hình ảnh tốt nhất', N'Mô tả sản phẩm
JVC Everio ™ GZ-MS150
 
Một sản phẩm nhỏ gọn và thời trang với một khe cắm thẻ SDXC, cho bạn những khung cảnh đẹp một cách dễ dàng và lý tưởng cho chia sẻ video trên web! JVC Everio ™ GZ-MS150 với các tính năng tuyệt vời như zoom năng động 70x, chống rung hình ảnh nâng cao cho các bức ảnh luôn ổn định, và AUTO thông minh cho chất lượng hình ảnh tốt nhất', N'máy-quayphim-JVC-GZ-MS150-anh4(1).jpg', 3190000, 6, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (37, N'MT001', N'DELL INSPIRON ONE 2350 MONS1405368 - CORE I3-4000M 2.4GHZ / 23” FULL HD / 8GB / 1TB (BẠC)', N'Bộ', N'Dell Inspiron One 2350 MONS1405368 là chiếc máy tính để bàn sở hữu thiết kế sang trọng,', N'Dell Inspiron One 2350 MONS1405368 là chiếc máy tính để bàn sở hữu thiết kế sang trọng, thanh mảnh cùng cấu hình mạnh mẽ, đảm bảo hiệu quả hoạt động cao. Dell Inspiron One 2350 MONS1405368 được trang bị vi xử lý Intel Core i3-4000M 2.4GHz thế hệ 4 mạnh mẽ, RAM 8GB, ổ cứng 1TB 5400rpm. Màn hình của Dell Inspiron One 2350 MONS1405368 thuộc loại màn hình cảm ứng có kích thước 23” với độ phân giải Full HD. Với chiếc máy tính này, mọi nhu cầu công việc và giải trí của bạn sẽ được đáp ứng nhanh chóng và hiệu quả nhất.
TÍNH NĂNG NỔI BẬT
Thiết kế sang trọng, tiện dụng
Dell Inspiron One 2350 MONS1405368 được thiết kế đặc biệt với một màn hình cảm ứng và chân đế đẹp mắt. Bạn có thể điều chỉnh xoay góc màn hình từ 90 độ đến 180 độ giúp bạn lựa chọn xem theo chiều dọc hoặc nằm ngang. Bàn phím và chuột không dây đi kèm cũng góp phần làm cho bộ sản phẩm trở nên độc đáo, sang trọng và hiện đại hơn.
 
Đáp ứng mọi tác vụ phức tạp
Được trang bị một cấu hình mạnh mẽ với bộ xử lý Intel Core i3-4000M 2.4GHz thế hệ 4, RAM 8GB và công nghệ hiện đại giúp xử lý nhanh chóng nhiều tác vụ cùng một lúc. Thế hệ xử lý mới của Intel còn tích hợp card đồ họa Intel HD Graphics đáp ứng nhu cầu xử lý đồ họa vượt trội.
 
Ổ cứng lưu trữ 1TB 5400rpm
Ổ cứng lưu trữ dung lượng lớn cho phép người dùng lưu được tất cả dữ liệu công việc cũng như các nội dung giải trí chất lượng cao như nhạc, phim, ảnh và các ứng dụng hấp dẫn khác. Với ổ cứng 1TB 5400rpm bạn sẽ tha hồ lưu mọi dữ liệu trong suốt quá trình sử dụng.
 
Đa dạng kết nối
Bên cạnh kết nối wifi và Bluetooth mạnh mẽ, sản phẩm còn được tích hợp đầy đủ cổng kết nối cần thiết để người dùng kết nối PC với màn hình và các thiết bị ngoại vi khác như: USB 2.0, USB 3.0, cổng RJ45, HDMI,... Ngoài ra CPU còn có khe cắm thẻ nhớ để giúp bạn dễ dàng chép và chia sẻ dữ liệu.', N'dell-7270-242341-1-zoom.jpg,dell-7271-242341-2-zoom.jpg,dell-7273-242341-3-zoom.jpg', 23900000, 2, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (38, N'MT002', N'LENOVO H50057323257 - PENTIUM J2850 2.41GHZ / 2GB / 500GB (ĐEN)', N'Bộ', N'Vi xử lý Intel Pentium QC J2850 (2.41GHz/2MB)
RAM 2GB DDR3 ', N'THÔNG SỐ KỸ THUẬT
Vi xử lý Intel Pentium QC J2850 (2.41GHz/2MB)
RAM 2GB DDR3 
Ổ cứng 500GB HDD
Đồ họa tích hợp
Ổ quang DVD±R/RW
Đầu đọc thẻ nhớ 7 IN 1
Hệ điều hành PC-DOS.', N'lenovo-9594-317202-3-zoom.jpg,lenovo-9007-317202-2-zoom.jpg', 11658000, 2, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (39, N'LT001', N'ASUS P550LNVXO221D - CORE I7-4510U 2.0GHZ~3.1GHZ / 15.6” / 4GB (XÁM)', N'Bộ', N'Intel core i7-4510U (4x2.0GHz ~3.1GHz Cache 4MB) ', N'Intel core i7-4510U (4x2.0GHz ~3.1GHz Cache 4MB) 
RAM FSB 1600MHz, 4GB DDR3 
750GB HDD 7200RPM
VGA Geforce GT 840M 2GB
Màn hình 15.6” HD LED 1366 x 768px. 
DVD±R/RW; WC 1.3MP; Wifi, 100Mbps; SD 7.1; BT 3.0; HDMI; USB 2.0, USB 3.0 
Pin 4cell 
2.3Kg. Free DOS', N'asus-9116-098631-1-zoom.jpg,asus-9118-098631-2-zoom.jpg', 15490000, 2, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (40, N'TV0015', N'Smart Tivi Đèn Nền LED - 40" Sharp 2T-C40AE1X', N'Cái', N'&lt;h3&gt;Thiết kế vững chắc, bắt mắt&lt;/h3&gt; &lt;p&gt;Smarti Tivi Sharp 2T-C40AE1X với thiết kế to kết hợp c&#249;ng ch&#226;n đế bằng kim loại gi&#250;p cho tivi vững ch&#227;i hơn tr&#234;n mặt b&#224;n. K&#237;ch thước m&#224;n h&#236;nh tivi Sharp 50 inch ph&#249; hợp cho những gian ph&#242;ng kh&#225;ch, tạo điểm nhấn cho gian ph&#242;ng th&#234;m sang trọng.&lt;/p&gt; 
', N'&lt;h3&gt;Giao diện th&#244;ng minh Easy Smart th&#244;ng minh&lt;/h3&gt; &lt;p&gt;Được t&#237;ch hợp 2 ứng dụng mặc định l&#224; Youtube v&#224; tr&#236;nh duyệt web tr&#234;n tivi, cho ph&#233;p bạn truy cập kho video phong ph&#250; v&#224; lướt web tiện lợi.&lt;/p&gt; 
&lt;h3&gt;C&#244;ng nghệ &#226;m thanh Dolby ti&#234;n tiến, tạo hiệu ứng &#226;m thanh sống động như thật tr&#234;n chiếc smart tivi&lt;/h3&gt; &lt;p&gt;C&#244;ng nghệ &#226;m thanh Dolby ti&#234;n tiến, tạo hiệu ứng &#226;m thanh sống động như thật tr&#234;n chiếc smart tivi.&lt;/p&gt;', N'40-1.png,40-2.png', 9000000, 3, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2019-10-07T00:00:00.000' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (41, N'TV0016', N'Internet Tivi Sony 40 inch', N'Cái', N'Công nghệ X-Reality PRO cho độ nét vượt trội, nâng cấp chất lượng hình ảnh có độ phân giải thấp lên gần HD nhất. <br/>Công nghệ HDR nâng cao độ tương phản giữa các vùng sáng và tối,mang lại hình ảnh sống động, chân thực.<br/>Công nghệ ClearAudio+ tinh chỉnh tối ưu âm thanh tivi giúp nghe nhạc và lời thoại rõ ràng và tách biệt hơn.<br/>Công nghệ X-Protection PRO bảo vệ tivi giúp hạn chế tác động của: độ ẩm, sét, bụi, sốc nguồn. <br/>Độ phân giải Full HD sắc nét gấp 2 lần HD cho hình ảnh chân thực, sống động.<br/>', N'Tổng quan<br/>Loại Tivi:Internet Tivi<br/>Kích cỡ màn hình:40 inch<br/>Độ phân giải:Full HD<br/>Chỉ số chuyển động rõ nét:Motionflow™ XR 200 Hz<br/>Kết nối<br/>Kết nối Internet:Cổng LAN, Wifi<br/>Cổng AV:Có cổng Composite<br/>Cổng HDMI:2 cổng<br/>Cổng xuất âm thanh:Cổng hỗn hợp Digital Audio/Headphone out<br/>USB:2 cổng<br/>Tích hợp đầu thu kỹ thuật số:DVB-T2<br/>Tính năng thông minh (Cập nhật 05/2018)<br/>Hệ điều hành, giao diện:Linux<br/>Các ứng dụng sẵn có:Trình duyệt web, YouTube, Netflix, Opera TV Store<br/>Các ứng dụng phổ biến có thể tải thêm:Film+, Zing TV, FPT play, Zing mp3, Nhạc của tui<br/>Remote thông minh:Không dùng được<br/>Điều khiển tivi bằng điện thoại:Không có ứng dụng do hãng phát triển<br/>Kết nối không dây với điện thoại, máy tính bảng:Chiếu màn hình bằng Miracast (Screen Mirroring)<br/>Kết nối Bàn phím, chuột:Có thể kết nối (sử dụng tốt nhất trong trình duyệt web)<br/>Công nghệ hình ảnh, âm thanh<br/>Công nghệ hình ảnh:X-Reality PRO, Dynamic Contrast Enhancer, Advanced Contrast Enhancer, HDR<br/>Công nghệ âm thanh:S-Force Front Surround, ClearAudio+, Digital Sound Enhancement Engine<br/>Tổng công suất loa:10 W ( 2 loa mỗi loa 5 W )<br/>Thông tin chung<br/>Công suất:60W<br/>Kích thước có chân, đặt bàn:Ngang 91 cm - Cao 59.1 cm - Dày 20.8 cm<br/>Khối lượng có chân:8.7 kg<br/>Kích thước không chân, treo tường:Ngang 91 cm - Cao 54.3 cm - Dày 7 cm<br/>Khối lượng không chân:8.1 kg<br/>Chất liệu:Viền nhựa, chân đế nhựa<br/>Nơi sản xuất:Malaysia<br/>Năm ra mắt:2017<br/>', NULL, 10500000, 3, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (42, N'TV0017', N'Internet Tivi Sony 32 inch', N'Cái', N'Công nghệ 4K X-Reality Pro cho màu sắc rõ nét, tăng cường độ nét hình ảnh, nâng cấp chất lượng hình ảnh gần HD nhất.<br/>Công nghệ Advanced Contrast Enhancer nâng cao tương phản.<br/>Công nghệ Dolby Digital và Clear Phase cho âm thanh bùng nổ và mạnh mẽ. <br/>Tivi độ phân giải HD cho hình ảnh sắc nét chân thực.  <br/>Công nghệ ClearAudio+ tinh chỉnh tối ưu âm thanh tivi giúp nghe nhạc và lời thoại rõ ràng và tách biệt hơn.<br/>', N'Chưa cập nhật<br/>', NULL, 8000000, 3, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (43, N'TV0018', N'Smart Tivi TCL 32 inch', N'Cái', N'Độ phân giải HD mang đến hình ảnh sắc nét, chân thực.<br/>Công nghệ ánh sáng tự nhiên 2 cho hình ảnh, màu sắc vô cùng tự nhiên và gần gũi, đặc biệt công nghệ giúp chuyển hoá ánh sáng cho giống với ánh sáng tự nhiên tránh mỏi mắt.<br/>Công nghệ âm thanh Dolby đem đến trải nghiệm đang xem phim tại rạp.<br/>Hệ điều hành TV+ OS mượt mà thân thiện dễ sử dụng.<br/>Chia sẻ dữ liệu (hình ảnh, âm thanh) thông qua ứng dụng thông minh T-Cast độc quyền của TCL .<br/>', N'Tổng quan<br/>Loại Tivi:Smart tivi cơ bản<br/>Kích cỡ màn hình:32 inch<br/>Độ phân giải:HD<br/>Chỉ số chuyển động rõ nét:60 Hz<br/>Kết nối<br/>Kết nối Internet:Cổng LAN, Wifi<br/>Cổng AV:Có cổng Composite và cổng Component<br/>Cổng HDMI:3 cổng<br/>Cổng xuất âm thanh:Cổng SPDIF (Digital Audio Out), Jack 3.5 mm (cắm loa, tai nghe)<br/>USB:2 cổng<br/>Tích hợp đầu thu kỹ thuật số:DVB-T2<br/>Tính năng thông minh (Cập nhật 05/2018)<br/>Hệ điều hành, giao diện:TV+ OS<br/>Các ứng dụng sẵn có:Trình duyệt web, Netflix, Youtube<br/>Các ứng dụng phổ biến có thể tải thêm:Zing TV, HTV, VTV<br/>Remote thông minh:Không dùng được<br/>Điều khiển tivi bằng điện thoại:Bằng ứng dụng T-Cast<br/>Kết nối Bàn phím, chuột:Có thể kết nối (sử dụng tốt nhất trong trình duyệt web)<br/>Công nghệ hình ảnh, âm thanh<br/>Công nghệ hình ảnh:Công nghệ ánh sáng tự nhiên<br/>Công nghệ âm thanh:Dolby MS11<br/>Tổng công suất loa:10 W<br/>Thông tin chung<br/>Công suất:45 W<br/>Kích thước có chân, đặt bàn:Ngang 73.4 cm - Cao 48.2 cm - Dày 18.4 cm<br/>Khối lượng có chân:4.5 kg<br/>Kích thước không chân, treo tường:Ngang 73.4 cm - Cao 43.5 cm - Dày 6 cm<br/>Khối lượng không chân:4.4 kg<br/>Nơi sản xuất:Việt Nam<br/>Chất liệu:Viền nhựa, chân đế nhựa<br/>Năm ra mắt:2017<br/>', NULL, 5390000, 3, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (44, N'TV0019', N'Android Tivi Sony 43 inch', N'Cái', N'Độ phân giải Full HD gấp 2 lần HD đi kèm công nghệ HDR cho hình ảnh sắc nét vô cùng chân thực.<br/>Công nghệ  X-Reality PRO giúp tái tạo độ nét, màu sắc giúp cho hình ảnh hiển thị trên tivi vô cùng sống động rõ nét.<br/>Công nghệ ClearAudio+ cho bạn cảm giác như đắm chìm trong gian thưởng thức với âm thanh bùng nổ lời thoại tách biệt rõ ràng.<br/>Hệ điều hành Android với hàng ngàn ứng dụng có thể tải về, đáp ứng đầy đủ nhu cầu của từng thành viên.<br/>Công nghệ X-Protection PRO giúp tivi bền và hạn chế khỏi bụi bẩn, độ ẩm, dòng điện tăng vọt và cả sét đánh.<br/>Hỗ trợ chiếu màn hình điện thoại lên tivi và điều khiển tivi bằng điện thoại qua ứng dụng TV Sideview.<br/>', N'Tổng quan<br/>Loại Tivi:Android Tivi<br/>Kích cỡ màn hình:43 inch<br/>Độ phân giải:Full HD<br/>Chỉ số chuyển động rõ nét:Motionflow™ XR 200 Hz<br/>Kết nối<br/>Bluetooth:Có (kết nối được chuột, bàn phím, tay cầm)<br/>Kết nối Internet:Cổng LAN, Wifi<br/>Cổng AV:Có cổng Composite<br/>Cổng HDMI:4 cổng<br/>Cổng xuất âm thanh:Cổng Optical (Digital Audio Out), Jack 3.5 mm (cắm loa, tai nghe), HDMI ARC<br/>USB:3 cổng<br/>Tích hợp đầu thu kỹ thuật số:DVB-T2<br/>Tính năng thông minh (Cập nhật 05/2018)<br/>Hệ điều hành, giao diện:Android tivi<br/>Các ứng dụng sẵn có:Trình duyệt web, YouTube, Netflix, FPT Play, Film+<br/>Các ứng dụng phổ biến có thể tải thêm:FPT Play, ClipTV, Nhạc của tui, Spotify, VTV Go, Game Asphalt 8<br/>Remote thông minh:Có remote thông minh (tìm kiếm bằng giọng nói bằng tiếng Việt)<br/>Điều khiển tivi bằng điện thoại:Bằng ứng dụng Video & TV SideView<br/>Kết nối không dây với điện thoại, máy tính bảng:Chiếu màn hình AirPlay qua ứng dụng AirScreen, Chiếu màn hình bằng Miracast (Screen Mirroring), Chiếu màn hình bằng Google Cast<br/>Kết nối Bàn phím, chuột:Có thể kết nối cả có dây và không dây<br/>Tính năng thông minh khác:Tìm kiếm bằng giọng nói (có hỗ trợ tiếng Việt)<br/>Công nghệ hình ảnh, âm thanh<br/>Công nghệ hình ảnh:Hỗ trợ Youtube Low Bitrate, HLG, X-Reality PRO, Dynamic Contrast Enhancer, HDR<br/>Công nghệ âm thanh:ClearAudio+, S-Force Front Surround, Clear Phase, Digital Sound Enhancement Engine, S-Master<br/>Tổng công suất loa:10 W (2 loa mỗi loa 5W)<br/>Thông tin chung<br/>Công suất:74 W<br/>Kích thước có chân, đặt bàn:Ngang 97 cm - Cao 63.1 cm - Dày 27 cm<br/>Khối lượng có chân:9.9 kg<br/>Kích thước không chân, treo tường:Ngang 97 cm - Cao 57.1 cm - Dày 5.5 cm<br/>Khối lượng không chân:9.4<br/>Chất liệu:Viền nhựa, chân đế nhựa<br/>Nơi sản xuất:Malaysia<br/>Năm ra mắt:2018<br/>', NULL, 13500000, 3, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (45, N'TV0020', N'Smart Tivi Samsung 43 inch', N'Cái', N'Độ phân giải Full HD sắc nét gấp 2 lần độ phân giải HD.<br/>Công nghệ Contrast Enhancer nâng cấp độ sâu hình ảnh, cho hình ảnh thêm phần ấn tượng.<br/>Công nghệ PurColor với dải màu rộng cho màu sắc rực rỡ.<br/>Công nghệ Micro Dimming Pro nâng cấp độ tương phản, hình ảnh, độ nét, đem đến sắc đen sâu thẳm cùng sắc trắng tinh khiết.<br/>Công nghệ âm thanh Dolby Digital Plus cho trải nghiệm âm thanh vòm ấn tượng.<br/>Hệ điều hành Tizen dễ sử dụng cùng hàng nghìn ứng dụng giải trí trực tuyến thú vị.<br/>Hỗ trợ chiếu màn hình điện thoại lên tivi và điều khiển tivi bằng điện thoại qua ứng dụng Smart View.<br/>', N'Tổng quan<br/>Loại Tivi:Smart Tivi<br/>Kích cỡ màn hình:43 inch<br/>Độ phân giải:Full HD<br/>Chỉ số hình ảnh:400<br/>Kết nối<br/>Kết nối Internet:Cổng LAN, Wifi<br/>Cổng AV:Có cổng Composite và cổng Component<br/>Cổng HDMI:3 cổng<br/>Cổng xuất âm thanh:Cổng Optical (Digital Audio Out)<br/>USB:2 cổng<br/>Tích hợp đầu thu kỹ thuật số:DVB-T2<br/>Tính năng thông minh (Cập nhật 05/2018)<br/>Hệ điều hành, giao diện:Tizen OS<br/>Các ứng dụng sẵn có:Trình duyệt web, YouTube, Netflix, FPT Play, Film+<br/>Các ứng dụng phổ biến có thể tải thêm:Zing TV, Nhạc của tui, Facebook, Spotify, ClipTV, Karaoke<br/>Remote thông minh:Không dùng được<br/>Kết nối không dây với điện thoại, máy tính bảng:Chiếu màn hình bằng Miracast (Screen Mirroring)<br/>Kết nối Bàn phím, chuột:Có thể kết nối (sử dụng tốt nhất trong trình duyệt web)<br/>Công nghệ hình ảnh, âm thanh<br/>Công nghệ hình ảnh:Micro Dimming, PurColor, Dynamic Contrast Ratio, Contrast Enhancer<br/>Công nghệ âm thanh:Dolby Digital Plus<br/>Thông tin chung<br/>Kích thước có chân, đặt bàn:Ngang 97.24 cm - Cao 64.55 cm - Dày 29.67 cm<br/>Khối lượng có chân:11.1 kg<br/>Kích thước không chân, treo tường:Ngang Ngang 97.24 cm - Cao 56.90 cm - Dày 6.06 cm<br/>Khối lượng không chân:9.5 kg<br/>Chất liệu:Viền nhựa, chân đế nhựa<br/>Nơi sản xuất:Việt Nam<br/>Năm ra mắt:2018<br/>', NULL, 11890000, 3, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (46, N'TV0021', N'Android Tivi Sony 4K 43 inch', N'Cái', N'Độ phân giải 4K nét gấp 4 lần Full HD cùng công nghệ HDR mang lại hình ảnh sống động, chân thực.<br/>Công nghệ Triluminos độc quyền của Sony mang lại màu sắc tự nhiên, trung thực cho hình ảnh.<br/>Công nghệ ClearAudio+ tinh chỉnh tối ưu âm thanh tivi giúp nghe nhạc và lời thoại rõ ràng và tách biệt hơn.<br/>Hệ điều hành Android dễ sử dụng, đi kèm remote thông minh hỗ trợ tìm kiếm giọng nói bằng tiếng Việt cả 3 miền.<br/>Hỗ trợ chiếu màn hình điện thoại lên tivi và điều khiển tivi bằng điện thoại qua ứng dụng TV Sideview. <br/>', N'Chưa cập nhật<br/>', NULL, 15500000, 3, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (47, N'TV0001', N'Tivi Asanzo 32 inch', N'Cái', N'Công nghệ 4K X-Reality Pro cho màu sắc rõ nét, tăng cường độ nét hình ảnh, nâng cấp chất lượng hình ảnh gần HD nhất.<br/>Công nghệ Advanced Contrast Enhancer nâng cao tương phản.<br/>Công nghệ Dolby Digital và Clear Phase cho âm thanh bùng nổ và mạnh mẽ. <br/>Tivi độ phân giải HD cho hình ảnh sắc nét chân thực.  <br/>Công nghệ ClearAudio+ tinh chỉnh tối ưu âm thanh tivi giúp nghe nhạc và lời thoại rõ ràng và tách biệt hơn.<br/>', N'Chưa cập nhật<br/>', NULL, 3290000, 3, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (48, N'TV0002', N'Internet Tivi Sony 40 inch', N'Cái', N'Công nghệ X-Reality PRO cho độ nét vượt trội, nâng cấp chất lượng hình ảnh có độ phân giải thấp lên gần HD nhất. <br/>Công nghệ HDR nâng cao độ tương phản giữa các vùng sáng và tối,mang lại hình ảnh sống động, chân thực.<br/>Công nghệ ClearAudio+ tinh chỉnh tối ưu âm thanh tivi giúp nghe nhạc và lời thoại rõ ràng và tách biệt hơn.<br/>Công nghệ X-Protection PRO bảo vệ tivi giúp hạn chế tác động của: độ ẩm, sét, bụi, sốc nguồn. <br/>Độ phân giải Full HD sắc nét gấp 2 lần HD cho hình ảnh chân thực, sống động.<br/>', N'Tổng quan<br/>Loại Tivi:Smart Tivi<br/>Kích cỡ màn hình:43 inch<br/>Độ phân giải:Full HD<br/>Chỉ số hình ảnh:400<br/>Kết nối<br/>Kết nối Internet:Cổng LAN, Wifi<br/>Cổng AV:Có cổng Composite và cổng Component<br/>Cổng HDMI:3 cổng<br/>Cổng xuất âm thanh:Cổng Optical (Digital Audio Out)<br/>USB:2 cổng<br/>Tích hợp đầu thu kỹ thuật số:DVB-T2<br/>Tính năng thông minh (Cập nhật 05/2018)<br/>Hệ điều hành, giao diện:Tizen OS<br/>Các ứng dụng sẵn có:Trình duyệt web, YouTube, Netflix, FPT Play, Film+<br/>Các ứng dụng phổ biến có thể tải thêm:Zing TV, Nhạc của tui, Facebook, Spotify, ClipTV, Karaoke<br/>Remote thông minh:Không dùng được<br/>Kết nối không dây với điện thoại, máy tính bảng:Chiếu màn hình bằng Miracast (Screen Mirroring)<br/>Kết nối Bàn phím, chuột:Có thể kết nối (sử dụng tốt nhất trong trình duyệt web)<br/>Công nghệ hình ảnh, âm thanh<br/>Công nghệ hình ảnh:Micro Dimming, PurColor, Dynamic Contrast Ratio, Contrast Enhancer<br/>Công nghệ âm thanh:Dolby Digital Plus<br/>Thông tin chung<br/>Kích thước có chân, đặt bàn:Ngang 97.24 cm - Cao 64.55 cm - Dày 29.67 cm<br/>Khối lượng có chân:11.1 kg<br/>Kích thước không chân, treo tường:Ngang Ngang 97.24 cm - Cao 56.90 cm - Dày 6.06 cm<br/>Khối lượng không chân:9.5 kg<br/>Chất liệu:Viền nhựa, chân đế nhựa<br/>Nơi sản xuất:Việt Nam<br/>Năm ra mắt:2018<br/>', NULL, 10500000, 3, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (49, N'TV0003', N'Internet Tivi Sony 32 inch', N'Cái', N'Độ phân giải Full HD gấp 2 lần HD đi kèm công nghệ HDR cho hình ảnh sắc nét vô cùng chân thực.<br/>Công nghệ  X-Reality PRO giúp tái tạo độ nét, màu sắc giúp cho hình ảnh hiển thị trên tivi vô cùng sống động rõ nét.<br/>Công nghệ ClearAudio+ cho bạn cảm giác như đắm chìm trong gian thưởng thức với âm thanh bùng nổ lời thoại tách biệt rõ ràng.<br/>Hệ điều hành Android với hàng ngàn ứng dụng có thể tải về, đáp ứng đầy đủ nhu cầu của từng thành viên.<br/>Công nghệ X-Protection PRO giúp tivi bền và hạn chế khỏi bụi bẩn, độ ẩm, dòng điện tăng vọt và cả sét đánh.<br/>Hỗ trợ chiếu màn hình điện thoại lên tivi và điều khiển tivi bằng điện thoại qua ứng dụng TV Sideview.<br/>', N'Tổng quan<br/>Loại Tivi:Internet Tivi<br/>Kích cỡ màn hình:40 inch<br/>Độ phân giải:Full HD<br/>Chỉ số chuyển động rõ nét:Motionflow™ XR 200 Hz<br/>Kết nối<br/>Kết nối Internet:Cổng LAN, Wifi<br/>Cổng AV:Có cổng Composite<br/>Cổng HDMI:2 cổng<br/>Cổng xuất âm thanh:Cổng hỗn hợp Digital Audio/Headphone out<br/>USB:2 cổng<br/>Tích hợp đầu thu kỹ thuật số:DVB-T2<br/>Tính năng thông minh (Cập nhật 05/2018)<br/>Hệ điều hành, giao diện:Linux<br/>Các ứng dụng sẵn có:Trình duyệt web, YouTube, Netflix, Opera TV Store<br/>Các ứng dụng phổ biến có thể tải thêm:Film+, Zing TV, FPT play, Zing mp3, Nhạc của tui<br/>Remote thông minh:Không dùng được<br/>Điều khiển tivi bằng điện thoại:Không có ứng dụng do hãng phát triển<br/>Kết nối không dây với điện thoại, máy tính bảng:Chiếu màn hình bằng Miracast (Screen Mirroring)<br/>Kết nối Bàn phím, chuột:Có thể kết nối (sử dụng tốt nhất trong trình duyệt web)<br/>Công nghệ hình ảnh, âm thanh<br/>Công nghệ hình ảnh:X-Reality PRO, Dynamic Contrast Enhancer, Advanced Contrast Enhancer, HDR<br/>Công nghệ âm thanh:S-Force Front Surround, ClearAudio+, Digital Sound Enhancement Engine<br/>Tổng công suất loa:10 W ( 2 loa mỗi loa 5 W )<br/>Thông tin chung<br/>Công suất:60W<br/>Kích thước có chân, đặt bàn:Ngang 91 cm - Cao 59.1 cm - Dày 20.8 cm<br/>Khối lượng có chân:8.7 kg<br/>Kích thước không chân, treo tường:Ngang 91 cm - Cao 54.3 cm - Dày 7 cm<br/>Khối lượng không chân:8.1 kg<br/>Chất liệu:Viền nhựa, chân đế nhựa<br/>Nơi sản xuất:Malaysia<br/>Năm ra mắt:2017<br/>', NULL, 7490000, 3, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (50, N'TV0004', N'Smart Tivi TCL 32 inch', N'Cái', N'Độ phân giải Full HD sắc nét gấp 2 lần độ phân giải HD.<br/>Công nghệ Contrast Enhancer nâng cấp độ sâu hình ảnh, cho hình ảnh thêm phần ấn tượng.<br/>Công nghệ PurColor với dải màu rộng cho màu sắc rực rỡ.<br/>Công nghệ Micro Dimming Pro nâng cấp độ tương phản, hình ảnh, độ nét, đem đến sắc đen sâu thẳm cùng sắc trắng tinh khiết.<br/>Công nghệ âm thanh Dolby Digital Plus cho trải nghiệm âm thanh vòm ấn tượng.<br/>Hệ điều hành Tizen dễ sử dụng cùng hàng nghìn ứng dụng giải trí trực tuyến thú vị.<br/>Hỗ trợ chiếu màn hình điện thoại lên tivi và điều khiển tivi bằng điện thoại qua ứng dụng Smart View.<br/>', N'Tổng quan<br/>Loại Tivi:Android Tivi<br/>Kích cỡ màn hình:43 inch<br/>Độ phân giải:Full HD<br/>Chỉ số chuyển động rõ nét:Motionflow™ XR 200 Hz<br/>Kết nối<br/>Bluetooth:Có (kết nối được chuột, bàn phím, tay cầm)<br/>Kết nối Internet:Cổng LAN, Wifi<br/>Cổng AV:Có cổng Composite<br/>Cổng HDMI:4 cổng<br/>Cổng xuất âm thanh:Cổng Optical (Digital Audio Out), Jack 3.5 mm (cắm loa, tai nghe), HDMI ARC<br/>USB:3 cổng<br/>Tích hợp đầu thu kỹ thuật số:DVB-T2<br/>Tính năng thông minh (Cập nhật 05/2018)<br/>Hệ điều hành, giao diện:Android tivi<br/>Các ứng dụng sẵn có:Trình duyệt web, YouTube, Netflix, FPT Play, Film+<br/>Các ứng dụng phổ biến có thể tải thêm:FPT Play, ClipTV, Nhạc của tui, Spotify, VTV Go, Game Asphalt 8<br/>Remote thông minh:Có remote thông minh (tìm kiếm bằng giọng nói bằng tiếng Việt)<br/>Điều khiển tivi bằng điện thoại:Bằng ứng dụng Video & TV SideView<br/>Kết nối không dây với điện thoại, máy tính bảng:Chiếu màn hình AirPlay qua ứng dụng AirScreen, Chiếu màn hình bằng Miracast (Screen Mirroring), Chiếu màn hình bằng Google Cast<br/>Kết nối Bàn phím, chuột:Có thể kết nối cả có dây và không dây<br/>Tính năng thông minh khác:Tìm kiếm bằng giọng nói (có hỗ trợ tiếng Việt)<br/>Công nghệ hình ảnh, âm thanh<br/>Công nghệ hình ảnh:Hỗ trợ Youtube Low Bitrate, HLG, X-Reality PRO, Dynamic Contrast Enhancer, HDR<br/>Công nghệ âm thanh:ClearAudio+, S-Force Front Surround, Clear Phase, Digital Sound Enhancement Engine, S-Master<br/>Tổng công suất loa:10 W (2 loa mỗi loa 5W)<br/>Thông tin chung<br/>Công suất:74 W<br/>Kích thước có chân, đặt bàn:Ngang 97 cm - Cao 63.1 cm - Dày 27 cm<br/>Khối lượng có chân:9.9 kg<br/>Kích thước không chân, treo tường:Ngang 97 cm - Cao 57.1 cm - Dày 5.5 cm<br/>Khối lượng không chân:9.4<br/>Chất liệu:Viền nhựa, chân đế nhựa<br/>Nơi sản xuất:Malaysia<br/>Năm ra mắt:2018<br/>', NULL, 5290000, 3, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (51, N'TV0005', N'Android Tivi Sony 43 inch', N'Cái', N'Độ phân giải 4K nét gấp 4 lần Full HD cùng công nghệ HDR mang lại hình ảnh sống động, chân thực.<br/>Công nghệ Triluminos độc quyền của Sony mang lại màu sắc tự nhiên, trung thực cho hình ảnh.<br/>Công nghệ ClearAudio+ tinh chỉnh tối ưu âm thanh tivi giúp nghe nhạc và lời thoại rõ ràng và tách biệt hơn.<br/>Hệ điều hành Android dễ sử dụng, đi kèm remote thông minh hỗ trợ tìm kiếm giọng nói bằng tiếng Việt cả 3 miền.<br/>Hỗ trợ chiếu màn hình điện thoại lên tivi và điều khiển tivi bằng điện thoại qua ứng dụng TV Sideview. <br/>', N'Chưa cập nhật<br/>', NULL, 13500000, 3, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (52, N'TV0006', N'Smart Tivi Samsung 43 inch', N'Cái', N'Tivi với kiểu dáng hiện đại, đẳng cấp với viền màn hình siêu mỏng.<br/>Độ phân giải HD cùng công nghệ Picture Wizard II cho hình ảnh trong trẻo, màu sắc tự nhiên và chân thật.<br/>Công nghệ âm thanh loa Stereo mang đến âm thanh mạnh mẽ, sinh động.<br/>Chế độ âm thanh Infinite cho âm thanh đa chiều, trung thực.<br/>', N'Tổng quan<br/>Loại Tivi:Tivi LED cơ bản<br/>Kích cỡ màn hình:32 inch<br/>Độ phân giải:HD<br/>Chỉ số chuyển động rõ nét:50 Hz<br/>Kết nối<br/>Cổng AV:Có cổng Composite<br/>Cổng HDMI:3 cổng<br/>Cổng xuất âm thanh:Jack 3.5 mm (cắm loa, tai nghe)<br/>Cổng VGA:1 cổng<br/>USB:1 cổng<br/>Tích hợp đầu thu kỹ thuật số:DVB-T2, DVB-S2<br/>Công nghệ hình ảnh, âm thanh<br/>Công nghệ hình ảnh:Picture Wizard II<br/>Công nghệ âm thanh:Stereo<br/>Tổng công suất loa:10 W<br/>Thông tin chung<br/>Công suất:65 W<br/>Kích thước có chân, đặt bàn:Ngang 82 cm - Cao 48 cm - Dày 19 cm<br/>Khối lượng có chân:4 kg<br/>Kích thước không chân, treo tường:Ngang 74 cm - Cao 43 cm - Dày 7 cm<br/>Khối lượng không chân:3.8 kg<br/>Nơi sản xuất:Việt Nam<br/>Năm ra mắt:2016<br/>', NULL, 11890000, 3, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (53, N'TV0007', N'Android Tivi Sony 4K 43 inch', N'Cái', N'Độ phân giải HD mang đến hình ảnh sắc nét, chân thực.<br/>Công nghệ ánh sáng tự nhiên 2 cho hình ảnh, màu sắc vô cùng tự nhiên và gần gũi, đặc biệt công nghệ giúp chuyển hoá ánh sáng cho giống với ánh sáng tự nhiên tránh mỏi mắt.<br/>Công nghệ âm thanh Dolby đem đến trải nghiệm đang xem phim tại rạp.<br/>Hệ điều hành TV+ OS mượt mà thân thiện dễ sử dụng.<br/>Chia sẻ dữ liệu (hình ảnh, âm thanh) thông qua ứng dụng thông minh T-Cast độc quyền của TCL .<br/>', N'Tổng quan<br/>Loại Tivi:Smart tivi cơ bản<br/>Kích cỡ màn hình:32 inch<br/>Độ phân giải:HD<br/>Chỉ số chuyển động rõ nét:60 Hz<br/>Kết nối<br/>Kết nối Internet:Cổng LAN, Wifi<br/>Cổng AV:Có cổng Composite và cổng Component<br/>Cổng HDMI:3 cổng<br/>Cổng xuất âm thanh:Cổng SPDIF (Digital Audio Out), Jack 3.5 mm (cắm loa, tai nghe)<br/>USB:2 cổng<br/>Tích hợp đầu thu kỹ thuật số:DVB-T2<br/>Tính năng thông minh (Cập nhật 05/2018)<br/>Hệ điều hành, giao diện:TV+ OS<br/>Các ứng dụng sẵn có:Trình duyệt web, Netflix, Youtube<br/>Các ứng dụng phổ biến có thể tải thêm:Zing TV, HTV, VTV<br/>Remote thông minh:Không dùng được<br/>Điều khiển tivi bằng điện thoại:Bằng ứng dụng T-Cast<br/>Kết nối Bàn phím, chuột:Có thể kết nối (sử dụng tốt nhất trong trình duyệt web)<br/>Công nghệ hình ảnh, âm thanh<br/>Công nghệ hình ảnh:Công nghệ ánh sáng tự nhiên<br/>Công nghệ âm thanh:Dolby MS11<br/>Tổng công suất loa:10 W<br/>Thông tin chung<br/>Công suất:45 W<br/>Kích thước có chân, đặt bàn:Ngang 73.4 cm - Cao 48.2 cm - Dày 18.4 cm<br/>Khối lượng có chân:4.5 kg<br/>Kích thước không chân, treo tường:Ngang 73.4 cm - Cao 43.5 cm - Dày 6 cm<br/>Khối lượng không chân:4.4 kg<br/>Nơi sản xuất:Việt Nam<br/>Chất liệu:Viền nhựa, chân đế nhựa<br/>Năm ra mắt:2017<br/>', NULL, 15500000, 3, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (54, N'TV0008', N'Tivi Asanzo 32 inch', N'Cái', N'Công nghệ 4K X-Reality Pro cho màu sắc rõ nét, tăng cường độ nét hình ảnh, nâng cấp chất lượng hình ảnh gần HD nhất.<br/>Công nghệ Advanced Contrast Enhancer nâng cao tương phản.<br/>Công nghệ Dolby Digital và Clear Phase cho âm thanh bùng nổ và mạnh mẽ. <br/>Tivi độ phân giải HD cho hình ảnh sắc nét chân thực.  <br/>Công nghệ ClearAudio+ tinh chỉnh tối ưu âm thanh tivi giúp nghe nhạc và lời thoại rõ ràng và tách biệt hơn.<br/>', N'Chưa cập nhật<br/>', NULL, 3290000, 3, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (55, N'TV0009', N'Internet Tivi Sony 40 inch', N'Cái', N'Công nghệ X-Reality PRO cho độ nét vượt trội, nâng cấp chất lượng hình ảnh có độ phân giải thấp lên gần HD nhất. <br/>Công nghệ HDR nâng cao độ tương phản giữa các vùng sáng và tối,mang lại hình ảnh sống động, chân thực.<br/>Công nghệ ClearAudio+ tinh chỉnh tối ưu âm thanh tivi giúp nghe nhạc và lời thoại rõ ràng và tách biệt hơn.<br/>Công nghệ X-Protection PRO bảo vệ tivi giúp hạn chế tác động của: độ ẩm, sét, bụi, sốc nguồn. <br/>Độ phân giải Full HD sắc nét gấp 2 lần HD cho hình ảnh chân thực, sống động.<br/>', N'Tổng quan<br/>Loại Tivi:Smart tivi cơ bản<br/>Kích cỡ màn hình:32 inch<br/>Độ phân giải:HD<br/>Chỉ số chuyển động rõ nét:60 Hz<br/>Kết nối<br/>Kết nối Internet:Cổng LAN, Wifi<br/>Cổng AV:Có cổng Composite và cổng Component<br/>Cổng HDMI:3 cổng<br/>Cổng xuất âm thanh:Cổng SPDIF (Digital Audio Out), Jack 3.5 mm (cắm loa, tai nghe)<br/>USB:2 cổng<br/>Tích hợp đầu thu kỹ thuật số:DVB-T2<br/>Tính năng thông minh (Cập nhật 05/2018)<br/>Hệ điều hành, giao diện:TV+ OS<br/>Các ứng dụng sẵn có:Trình duyệt web, Netflix, Youtube<br/>Các ứng dụng phổ biến có thể tải thêm:Zing TV, HTV, VTV<br/>Remote thông minh:Không dùng được<br/>Điều khiển tivi bằng điện thoại:Bằng ứng dụng T-Cast<br/>Kết nối Bàn phím, chuột:Có thể kết nối (sử dụng tốt nhất trong trình duyệt web)<br/>Công nghệ hình ảnh, âm thanh<br/>Công nghệ hình ảnh:Công nghệ ánh sáng tự nhiên<br/>Công nghệ âm thanh:Dolby MS11<br/>Tổng công suất loa:10 W<br/>Thông tin chung<br/>Công suất:45 W<br/>Kích thước có chân, đặt bàn:Ngang 73.4 cm - Cao 48.2 cm - Dày 18.4 cm<br/>Khối lượng có chân:4.5 kg<br/>Kích thước không chân, treo tường:Ngang 73.4 cm - Cao 43.5 cm - Dày 6 cm<br/>Khối lượng không chân:4.4 kg<br/>Nơi sản xuất:Việt Nam<br/>Chất liệu:Viền nhựa, chân đế nhựa<br/>Năm ra mắt:2017<br/>', NULL, 10500000, 3, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (56, N'TV0010', N'Internet Tivi Sony 32 inch', N'Cái', N'Độ phân giải Full HD gấp 2 lần HD đi kèm công nghệ HDR cho hình ảnh sắc nét vô cùng chân thực.<br/>Công nghệ  X-Reality PRO giúp tái tạo độ nét, màu sắc giúp cho hình ảnh hiển thị trên tivi vô cùng sống động rõ nét.<br/>Công nghệ ClearAudio+ cho bạn cảm giác như đắm chìm trong gian thưởng thức với âm thanh bùng nổ lời thoại tách biệt rõ ràng.<br/>Hệ điều hành Android với hàng ngàn ứng dụng có thể tải về, đáp ứng đầy đủ nhu cầu của từng thành viên.<br/>Công nghệ X-Protection PRO giúp tivi bền và hạn chế khỏi bụi bẩn, độ ẩm, dòng điện tăng vọt và cả sét đánh.<br/>Hỗ trợ chiếu màn hình điện thoại lên tivi và điều khiển tivi bằng điện thoại qua ứng dụng TV Sideview.<br/>', N'Tổng quan<br/>Loại Tivi:Tivi LED cơ bản<br/>Kích cỡ màn hình:32 inch<br/>Độ phân giải:HD<br/>Chỉ số chuyển động rõ nét:50 Hz<br/>Kết nối<br/>Cổng AV:Có cổng Composite<br/>Cổng HDMI:3 cổng<br/>Cổng xuất âm thanh:Jack 3.5 mm (cắm loa, tai nghe)<br/>Cổng VGA:1 cổng<br/>USB:1 cổng<br/>Tích hợp đầu thu kỹ thuật số:DVB-T2, DVB-S2<br/>Công nghệ hình ảnh, âm thanh<br/>Công nghệ hình ảnh:Picture Wizard II<br/>Công nghệ âm thanh:Stereo<br/>Tổng công suất loa:10 W<br/>Thông tin chung<br/>Công suất:65 W<br/>Kích thước có chân, đặt bàn:Ngang 82 cm - Cao 48 cm - Dày 19 cm<br/>Khối lượng có chân:4 kg<br/>Kích thước không chân, treo tường:Ngang 74 cm - Cao 43 cm - Dày 7 cm<br/>Khối lượng không chân:3.8 kg<br/>Nơi sản xuất:Việt Nam<br/>Năm ra mắt:2016<br/>', NULL, 7490000, 3, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (57, N'TV0011', N'Smart Tivi TCL 32 inch', N'Cái', N'Độ phân giải Full HD sắc nét gấp 2 lần độ phân giải HD.<br/>Công nghệ Contrast Enhancer nâng cấp độ sâu hình ảnh, cho hình ảnh thêm phần ấn tượng.<br/>Công nghệ PurColor với dải màu rộng cho màu sắc rực rỡ.<br/>Công nghệ Micro Dimming Pro nâng cấp độ tương phản, hình ảnh, độ nét, đem đến sắc đen sâu thẳm cùng sắc trắng tinh khiết.<br/>Công nghệ âm thanh Dolby Digital Plus cho trải nghiệm âm thanh vòm ấn tượng.<br/>Hệ điều hành Tizen dễ sử dụng cùng hàng nghìn ứng dụng giải trí trực tuyến thú vị.<br/>Hỗ trợ chiếu màn hình điện thoại lên tivi và điều khiển tivi bằng điện thoại qua ứng dụng Smart View.<br/>', N'Tổng quan<br/>Loại Tivi:Smart Tivi<br/>Kích cỡ màn hình:43 inch<br/>Độ phân giải:Full HD<br/>Chỉ số hình ảnh:400<br/>Kết nối<br/>Kết nối Internet:Cổng LAN, Wifi<br/>Cổng AV:Có cổng Composite và cổng Component<br/>Cổng HDMI:3 cổng<br/>Cổng xuất âm thanh:Cổng Optical (Digital Audio Out)<br/>USB:2 cổng<br/>Tích hợp đầu thu kỹ thuật số:DVB-T2<br/>Tính năng thông minh (Cập nhật 05/2018)<br/>Hệ điều hành, giao diện:Tizen OS<br/>Các ứng dụng sẵn có:Trình duyệt web, YouTube, Netflix, FPT Play, Film+<br/>Các ứng dụng phổ biến có thể tải thêm:Zing TV, Nhạc của tui, Facebook, Spotify, ClipTV, Karaoke<br/>Remote thông minh:Không dùng được<br/>Kết nối không dây với điện thoại, máy tính bảng:Chiếu màn hình bằng Miracast (Screen Mirroring)<br/>Kết nối Bàn phím, chuột:Có thể kết nối (sử dụng tốt nhất trong trình duyệt web)<br/>Công nghệ hình ảnh, âm thanh<br/>Công nghệ hình ảnh:Micro Dimming, PurColor, Dynamic Contrast Ratio, Contrast Enhancer<br/>Công nghệ âm thanh:Dolby Digital Plus<br/>Thông tin chung<br/>Kích thước có chân, đặt bàn:Ngang 97.24 cm - Cao 64.55 cm - Dày 29.67 cm<br/>Khối lượng có chân:11.1 kg<br/>Kích thước không chân, treo tường:Ngang Ngang 97.24 cm - Cao 56.90 cm - Dày 6.06 cm<br/>Khối lượng không chân:9.5 kg<br/>Chất liệu:Viền nhựa, chân đế nhựa<br/>Nơi sản xuất:Việt Nam<br/>Năm ra mắt:2018<br/>', NULL, 5290000, 3, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (58, N'TV0012', N'Android Tivi Sony 43 inch', N'Cái', N'Độ phân giải 4K nét gấp 4 lần Full HD cùng công nghệ HDR mang lại hình ảnh sống động, chân thực.<br/>Công nghệ Triluminos độc quyền của Sony mang lại màu sắc tự nhiên, trung thực cho hình ảnh.<br/>Công nghệ ClearAudio+ tinh chỉnh tối ưu âm thanh tivi giúp nghe nhạc và lời thoại rõ ràng và tách biệt hơn.<br/>Hệ điều hành Android dễ sử dụng, đi kèm remote thông minh hỗ trợ tìm kiếm giọng nói bằng tiếng Việt cả 3 miền.<br/>Hỗ trợ chiếu màn hình điện thoại lên tivi và điều khiển tivi bằng điện thoại qua ứng dụng TV Sideview. <br/>', N'Tổng quan<br/>Loại Tivi:Internet Tivi<br/>Kích cỡ màn hình:40 inch<br/>Độ phân giải:Full HD<br/>Chỉ số chuyển động rõ nét:Motionflow™ XR 200 Hz<br/>Kết nối<br/>Kết nối Internet:Cổng LAN, Wifi<br/>Cổng AV:Có cổng Composite<br/>Cổng HDMI:2 cổng<br/>Cổng xuất âm thanh:Cổng hỗn hợp Digital Audio/Headphone out<br/>USB:2 cổng<br/>Tích hợp đầu thu kỹ thuật số:DVB-T2<br/>Tính năng thông minh (Cập nhật 05/2018)<br/>Hệ điều hành, giao diện:Linux<br/>Các ứng dụng sẵn có:Trình duyệt web, YouTube, Netflix, Opera TV Store<br/>Các ứng dụng phổ biến có thể tải thêm:Film+, Zing TV, FPT play, Zing mp3, Nhạc của tui<br/>Remote thông minh:Không dùng được<br/>Điều khiển tivi bằng điện thoại:Không có ứng dụng do hãng phát triển<br/>Kết nối không dây với điện thoại, máy tính bảng:Chiếu màn hình bằng Miracast (Screen Mirroring)<br/>Kết nối Bàn phím, chuột:Có thể kết nối (sử dụng tốt nhất trong trình duyệt web)<br/>Công nghệ hình ảnh, âm thanh<br/>Công nghệ hình ảnh:X-Reality PRO, Dynamic Contrast Enhancer, Advanced Contrast Enhancer, HDR<br/>Công nghệ âm thanh:S-Force Front Surround, ClearAudio+, Digital Sound Enhancement Engine<br/>Tổng công suất loa:10 W ( 2 loa mỗi loa 5 W )<br/>Thông tin chung<br/>Công suất:60W<br/>Kích thước có chân, đặt bàn:Ngang 91 cm - Cao 59.1 cm - Dày 20.8 cm<br/>Khối lượng có chân:8.7 kg<br/>Kích thước không chân, treo tường:Ngang 91 cm - Cao 54.3 cm - Dày 7 cm<br/>Khối lượng không chân:8.1 kg<br/>Chất liệu:Viền nhựa, chân đế nhựa<br/>Nơi sản xuất:Malaysia<br/>Năm ra mắt:2017<br/>', NULL, 13500000, 3, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (59, N'TV0013', N'Smart Tivi Samsung 43 inch', N'Cái', N'Tivi với kiểu dáng hiện đại, đẳng cấp với viền màn hình siêu mỏng.<br/>Độ phân giải HD cùng công nghệ Picture Wizard II cho hình ảnh trong trẻo, màu sắc tự nhiên và chân thật.<br/>Công nghệ âm thanh loa Stereo mang đến âm thanh mạnh mẽ, sinh động.<br/>Chế độ âm thanh Infinite cho âm thanh đa chiều, trung thực.<br/>', N'Tổng quan<br/>Loại Tivi:Android Tivi<br/>Kích cỡ màn hình:43 inch<br/>Độ phân giải:Full HD<br/>Chỉ số chuyển động rõ nét:Motionflow™ XR 200 Hz<br/>Kết nối<br/>Bluetooth:Có (kết nối được chuột, bàn phím, tay cầm)<br/>Kết nối Internet:Cổng LAN, Wifi<br/>Cổng AV:Có cổng Composite<br/>Cổng HDMI:4 cổng<br/>Cổng xuất âm thanh:Cổng Optical (Digital Audio Out), Jack 3.5 mm (cắm loa, tai nghe), HDMI ARC<br/>USB:3 cổng<br/>Tích hợp đầu thu kỹ thuật số:DVB-T2<br/>Tính năng thông minh (Cập nhật 05/2018)<br/>Hệ điều hành, giao diện:Android tivi<br/>Các ứng dụng sẵn có:Trình duyệt web, YouTube, Netflix, FPT Play, Film+<br/>Các ứng dụng phổ biến có thể tải thêm:FPT Play, ClipTV, Nhạc của tui, Spotify, VTV Go, Game Asphalt 8<br/>Remote thông minh:Có remote thông minh (tìm kiếm bằng giọng nói bằng tiếng Việt)<br/>Điều khiển tivi bằng điện thoại:Bằng ứng dụng Video & TV SideView<br/>Kết nối không dây với điện thoại, máy tính bảng:Chiếu màn hình AirPlay qua ứng dụng AirScreen, Chiếu màn hình bằng Miracast (Screen Mirroring), Chiếu màn hình bằng Google Cast<br/>Kết nối Bàn phím, chuột:Có thể kết nối cả có dây và không dây<br/>Tính năng thông minh khác:Tìm kiếm bằng giọng nói (có hỗ trợ tiếng Việt)<br/>Công nghệ hình ảnh, âm thanh<br/>Công nghệ hình ảnh:Hỗ trợ Youtube Low Bitrate, HLG, X-Reality PRO, Dynamic Contrast Enhancer, HDR<br/>Công nghệ âm thanh:ClearAudio+, S-Force Front Surround, Clear Phase, Digital Sound Enhancement Engine, S-Master<br/>Tổng công suất loa:10 W (2 loa mỗi loa 5W)<br/>Thông tin chung<br/>Công suất:74 W<br/>Kích thước có chân, đặt bàn:Ngang 97 cm - Cao 63.1 cm - Dày 27 cm<br/>Khối lượng có chân:9.9 kg<br/>Kích thước không chân, treo tường:Ngang 97 cm - Cao 57.1 cm - Dày 5.5 cm<br/>Khối lượng không chân:9.4<br/>Chất liệu:Viền nhựa, chân đế nhựa<br/>Nơi sản xuất:Malaysia<br/>Năm ra mắt:2018<br/>', NULL, 11890000, 3, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (60, N'TV0014', N'Android Tivi Sony 4K 43 inch', N'Cái', N'Độ ph&#226;n giải HD mang đến h&#236;nh ảnh sắc n&#233;t, ch&#226;n thực.&lt;br/&gt;C&#244;ng nghệ &#225;nh s&#225;ng tự nhi&#234;n 2 cho h&#236;nh ảnh, m&#224;u sắc v&#244; c&#249;ng tự nhi&#234;n v&#224; gần gũi, đặc biệt c&#244;ng nghệ gi&#250;p chuyển ho&#225; &#225;nh s&#225;ng cho giống với &#225;nh s&#225;ng tự nhi&#234;n tr&#225;nh mỏi mắt.&lt;br/&gt;C&#244;ng nghệ &#226;m thanh Dolby đem đến trải nghiệm đang xem phim tại rạp.&lt;br/&gt;Hệ điều h&#224;nh TV+ OS mượt m&#224; th&#226;n thiện dễ sử dụng.&lt;br/&gt;Chia sẻ dữ liệu (h&#236;nh ảnh, &#226;m thanh) th&#244;ng qua ứng dụng th&#244;ng minh T-Cast độc quyền của TCL .&lt;br/&gt;', N'Chưa cập nhật', NULL, 15500000, 3, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2019-10-07T00:00:00.000' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (61, N'TL0016', N'Tủ lạnh Samsung Inverter 236 lít', N'Cái', N'Thiết kế sang trọng với sắc nâu thời thượng.<br/>Công nghệ Digital Inverter hiện đại không gây tiếng ồn, tiết kiệm điện năng.<br/>Công nghệ cấp đông mềm Power Cooling chế biến thực phẩm không cần rã đông.<br/>Ngăn rau quả cân bằng độ ẩm Big Box.<br/>', N'Đặc điểm sản phẩm<br/>Dung tích tổng:236 lít<br/>Số người sử dụng:3 - 5 người<br/>Dung tích ngăn đá:53 lít<br/>Dung tích ngăn lạnh:183 lít<br/>Công nghệ làm lạnh:Công nghệ làm lạnh vòm<br/>Công nghệ kháng khuẩn, khử mùi:Kháng khuẩn, khử mùi Ag+<br/>Công nghệ bảo quản thực phẩm:Ngăn cấp đông mềm Power Cooling, Ngăn rau quả cân bằng độ ẩm<br/>Tiện ích:Inverter tiết kiệm điện, Bảo quản thịt cá không cần rã đông<br/>Kiểu tủ:Ngăn đá trên<br/>Số cửa:2 cửa<br/>Chất liệu cửa tủ lạnh:Kim loại phủ sơn tĩnh điện<br/>Chất liệu khay ngăn:Kính chịu lực<br/>Kích thước - Khối lượng:Cao 154.5 cm - Rộng 56 cm - Sâu 63.5 cm<br/>Chất liệu dàn trao đổi nhiệt:Ống dẫn bằng Đồng - Lá tản nhiệt bằng Nhôm<br/>Đèn chiếu sáng:Đèn LED<br/>Nơi sản xuất:Việt Nam<br/>Năm ra mắt:2018<br/>', NULL, 6990000, 4, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (62, N'TL0017', N'Tủ lạnh Panasonic 188 lít', N'Cái', N'Công nghệ Inverter và Econavi tiết kiệm điện năng vượt trội, giúp tủ lạnh hoạt động ổn định và êm ái.<br/>Công nghệ làm lạnh Panorama làm lạnh đa chiều và đồng đều ngăn đông, giúp làm đông nhanh chóng và tiết kiệm điện năng.<br/>Bộ khử mùi phân tử bạc Nano Ag+ tiêu diệt vi khuẩn, khử mùi hôi hiệu quả, bảo vệ sức khỏe cho người sử dụng.<br/>Hộc rau quả giữ ấm giúp rau quả được bảo quản lâu hơn và giữ được vị ngon trọn vẹn.<br/>', N'Đặc điểm sản phẩm<br/>Dung tích tổng:188 lít<br/>Số người sử dụng:3 - 5 người<br/>Dung tích ngăn đá:53 lít<br/>Dung tích ngăn lạnh:135 lít<br/>Chế độ tiết kiệm điện khác:Econavi<br/>Công nghệ làm lạnh:Panorama<br/>Công nghệ kháng khuẩn, khử mùi:Công nghệ kháng khuẩn Ag Clean với tinh thể bạc Ag+<br/>Công nghệ bảo quản thực phẩm:Ngăn rau quả giữ ẩm<br/>Tiện ích:Inverter tiết kiệm điện<br/>Kiểu tủ:Ngăn đá trên<br/>Số cửa:2 cửa<br/>Chất liệu cửa tủ lạnh:Kim loại phủ sơn tĩnh điện<br/>Chất liệu khay ngăn:Kính chịu lực<br/>Kích thước - Khối lượng:Cao 136 cm - Rộng 52 cm - Sâu 57 cm - Nặng 36 kg<br/>Chất liệu dàn trao đổi nhiệt:Ống dẫn bằng Đồng - Lá tản nhiệt bằng Nhôm<br/>Đèn chiếu sáng:Đèn LED<br/>Nơi sản xuất:Việt Nam<br/>Năm ra mắt:2017<br/>', NULL, 6090000, 4, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (63, N'TL0018', N'Tủ lạnh Sharp 196 lít', N'Cái', N'Công nghệ Inverter tiết kiệm điện năng.<br/>Bộ lọc Nano Ag+Cu tăng cường khả năng khử mùi.<br/>Chức năng Extra Eco – Tiết kiệm năng lượng tối ưu.<br/>', N'Đặc điểm sản phẩm<br/>Dung tích tổng:196 lít<br/>Dung tích sử dụng:182 lít<br/>Số người sử dụng:1 - 3 người<br/>Dung tích ngăn đá:41 lít<br/>Dung tích ngăn lạnh:141 lít<br/>Điện năng tiêu thụ:~ 0.66 kW/ngày<br/>Chế độ tiết kiệm điện khác:Công nghệ J-Tech Inverter và chế độ Extra Eco<br/>Công nghệ làm lạnh:Gián tiếp<br/>Công nghệ kháng khuẩn, khử mùi:Bộ lọc với các phân tử Ag+Cu<br/>Công nghệ bảo quản thực phẩm:Ngăn giữ tươi linh hoạt<br/>Tiện ích:Inverter tiết kiệm điện<br/>Kiểu tủ:Ngăn đá trên<br/>Số cửa:2 cửa<br/>Chất liệu cửa tủ lạnh:Kim loại phủ sơn tĩnh điện<br/>Chất liệu khay ngăn:Kính chịu lực<br/>Kích thước - Khối lượng:cao 139 cm - Rộng 54.5 cm - Sâu 62.5 cm - Nặng 38 kg<br/>Chất liệu dàn trao đổi nhiệt:Ống dẫn bằng Đồng - Lá tản nhiệt bằng Nhôm<br/>Đèn chiếu sáng:Đèn LED<br/>Nơi sản xuất:Thái Lan<br/>Năm ra mắt:2017<br/>', NULL, 5590000, 4, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (64, N'TL0019', N'Tủ lạnh Samsung 208 lít', N'Cái', N'Công nghệ Inverter tiết kiệm điện tối ưu, vận hành êm ái và bền bỉ.<br/>Luồng khí lạnh đa chiều cho hơi mát lan tỏa đều đến mọi ngóc ngách trong tủ.<br/>Kháng khuẩn và khử sạch mùi hôi với bộ lọc Cacbon hoạt tính.<br/>Ngăn rau củ giữ ẩm đảm bảo thực phẩm luôn được bảo quản tươi ngon.<br/>', N'Đặc điểm sản phẩm<br/>Dung tích tổng:216 lít<br/>Dung tích sử dụng:208 lít<br/>Số người sử dụng:3 - 5 người<br/>Dung tích ngăn đá:53 lít<br/>Dung tích ngăn lạnh:150 lít<br/>Điện năng tiêu thụ:~ 0.9 kW/ngày<br/>Chế độ tiết kiệm điện khác:Công nghệ máy nén biến tần Inverter<br/>Công nghệ làm lạnh:Luồng khí lạnh đa chiều<br/>Công nghệ kháng khuẩn, khử mùi:Bộ lọc Carbon hoạt tính<br/>Công nghệ bảo quản thực phẩm:Ngăn rau quả giữ ẩm<br/>Tiện ích:Inverter tiết kiệm điện, Không có<br/>Kiểu tủ:Ngăn đá trên<br/>Số cửa:2 cửa<br/>Chất liệu cửa tủ lạnh:Kim loại phủ sơn tĩnh điện<br/>Chất liệu khay ngăn:Kính chịu lực<br/>Kích thước - Khối lượng:Cao 144.5 cm - Rộng 55.6 cm - Sâu 60.6 cm<br/>Chất liệu dàn trao đổi nhiệt:Ống dẫn bằng Đồng - Lá tản nhiệt bằng Nhôm<br/>Đèn chiếu sáng:Đèn LED<br/>Nơi sản xuất:Việt Nam<br/>Năm ra mắt:2017<br/>', NULL, 5790000, 4, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (65, N'TL0020', N'Tủ lạnh Panasonic 255 lít', N'Cái', N'Công nghệ Inverter tiết kiệm 40% điện năng tiêu thụ, giúp tủ lạnh hoạt động ổn định, êm ái.<br/>Hệ thống làm lạnh Panorama tiên tiến giúp làm lạnh nhanh chóng, đồng đều.<br/>Ngăn Prime Fresh bảo quản thực phẩm không cần rã đông trước khi nấu ăn.<br/>Công nghệ kháng khuẩn tinh thể bạc Ag Clean diệt khuẩn và khử mùi  hiệu quả tới 99,9%.<br/>', N'Đặc điểm sản phẩm<br/>Dung tích sử dụng:255 lít<br/>Số người sử dụng:3 - 5 người<br/>Dung tích ngăn đá:85 lít<br/>Dung tích ngăn lạnh:170 lít<br/>Chế độ tiết kiệm điện khác:Econavi<br/>Công nghệ làm lạnh:Panorama<br/>Công nghệ kháng khuẩn, khử mùi:Công nghệ kháng khuẩn Ag Clean với tinh thể bạc Ag+<br/>Công nghệ bảo quản thực phẩm:Ngăn cấp đông mềm Prime Fresh<br/>Tiện ích:Inverter tiết kiệm điện, Bảo quản thịt cá không cần rã đông<br/>Kiểu tủ:Ngăn đá dưới<br/>Số cửa:2 cửa<br/>Chất liệu cửa tủ lạnh:Thép không gỉ<br/>Chất liệu khay ngăn:Kính chịu lực<br/>Kích thước - Khối lượng:Cao 150.5 cm - Rộng 60.1 cm - Sâu 65.6 cm - Nặng 56 kg<br/>Chất liệu dàn trao đổi nhiệt:Ống dẫn bằng Đồng - Lá tản nhiệt bằng Nhôm<br/>Đèn chiếu sáng:Đèn LED<br/>Nơi sản xuất:Việt Nam<br/>Năm ra mắt:2017<br/>', NULL, 8890000, 4, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (66, N'TL0021', N'Tủ lạnh Toshiba 186 lít', N'Cái', N'Cửa tủ với chất liệu mới Uniglass phong cách sang trọng, tinh tế.<br/>Công nghệ Inverter thế hệ mới tiết kiệm đến 40% điện năng tiêu thụ.<br/>Luồng khí lạnh tuần hoàn luân chuyển đến mọi ngóc ngách.<br/>Bộ khử mùi Hybrid Bio diệt khuẩn khử mùi hiệu quả.<br/>', N'Đặc điểm sản phẩm<br/>Dung tích tổng:186 lít<br/>Số người sử dụng:3 - 5 người<br/>Dung tích ngăn đá:58 lít<br/>Dung tích ngăn lạnh:128 lít<br/>Điện năng tiêu thụ:~0.97 kW/ ngày<br/>Công nghệ làm lạnh:Làm lạnh tuần hoàn<br/>Công nghệ kháng khuẩn, khử mùi:Hybrid Bio<br/>Tiện ích:Inverter tiết kiệm điện, Ngăn kệ có thể thay đổi linh hoạt<br/>Kiểu tủ:Ngăn đá trên<br/>Số cửa:2 cửa<br/>Chất liệu cửa tủ lạnh:Uniglass<br/>Chất liệu khay ngăn:Kính chịu lực<br/>Kích thước - Khối lượng:Cao 135.5 cm - Rộng 54.7 cm - Sâu 65.2 cm - Nặng 42 kg<br/>Chất liệu dàn trao đổi nhiệt:Ống dẫn bằng Đồng - Lá tản nhiệt bằng Nhôm<br/>Đèn chiếu sáng:Đèn LED<br/>Nơi sản xuất:Thái Lan<br/>Năm ra mắt:2017<br/>', NULL, 6490000, 4, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (67, N'TL0022', N'Tủ lạnh Sharp 196 lít', N'Cái', N'Công nghệ Inverter tiết kiệm điện năng.<br/>Bộ lọc Nano Ag+Cu tăng cường khả năng khử mùi.<br/>Chức năng Extra Eco – Tiết kiệm năng lượng tối ưu.<br/>', N'Đặc điểm sản phẩm<br/>Dung tích tổng:196 lít<br/>Dung tích sử dụng:182 lít<br/>Số người sử dụng:1 - 3 người<br/>Dung tích ngăn đá:41 lít<br/>Dung tích ngăn lạnh:141 lít<br/>Điện năng tiêu thụ:~ 0.66 kW/ngày<br/>Chế độ tiết kiệm điện khác:Công nghệ J-Tech Inverter và chế độ Extra Eco<br/>Công nghệ làm lạnh:Gián tiếp<br/>Công nghệ kháng khuẩn, khử mùi:Bộ lọc với các phân tử Ag+Cu<br/>Công nghệ bảo quản thực phẩm:Ngăn giữ tươi linh hoạt<br/>Tiện ích:Inverter tiết kiệm điện<br/>Kiểu tủ:Ngăn đá trên<br/>Số cửa:2 cửa<br/>Chất liệu cửa tủ lạnh:Kim loại phủ sơn tĩnh điện<br/>Chất liệu khay ngăn:Kính chịu lực<br/>Kích thước - Khối lượng:cao 139 cm - Rộng 54.5 cm - Sâu 62.5 cm - Nặng 38 kg<br/>Chất liệu dàn trao đổi nhiệt:Ống dẫn bằng Đồng - Lá tản nhiệt bằng Nhôm<br/>Đèn chiếu sáng:Đèn LED<br/>Nơi sản xuất:Thái Lan<br/>Năm ra mắt:2017<br/>', NULL, 5590000, 4, CAST(N'2018-11-05T10:34:28.037' AS DateTime), CAST(N'2018-11-05T10:34:28.037' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (68, N'TL0001', N'Tủ lạnh Samsung Inverter 236 lít', N'Cái', N'Công nghệ Inverter tiết kiệm điện tối ưu, vận hành êm ái và bền bỉ.<br/>Luồng khí lạnh đa chiều cho hơi mát lan tỏa đều đến mọi ngóc ngách trong tủ.<br/>Kháng khuẩn và khử sạch mùi hôi với bộ lọc Cacbon hoạt tính.<br/>Ngăn rau củ giữ ẩm đảm bảo thực phẩm luôn được bảo quản tươi ngon.<br/>', N'Đặc điểm sản phẩm<br/>Dung tích tổng:216 lít<br/>Dung tích sử dụng:208 lít<br/>Số người sử dụng:3 - 5 người<br/>Dung tích ngăn đá:53 lít<br/>Dung tích ngăn lạnh:150 lít<br/>Điện năng tiêu thụ:~ 0.9 kW/ngày<br/>Chế độ tiết kiệm điện khác:Công nghệ máy nén biến tần Inverter<br/>Công nghệ làm lạnh:Luồng khí lạnh đa chiều<br/>Công nghệ kháng khuẩn, khử mùi:Bộ lọc Carbon hoạt tính<br/>Công nghệ bảo quản thực phẩm:Ngăn rau quả giữ ẩm<br/>Tiện ích:Inverter tiết kiệm điện, Không có<br/>Kiểu tủ:Ngăn đá trên<br/>Số cửa:2 cửa<br/>Chất liệu cửa tủ lạnh:Kim loại phủ sơn tĩnh điện<br/>Chất liệu khay ngăn:Kính chịu lực<br/>Kích thước - Khối lượng:Cao 144.5 cm - Rộng 55.6 cm - Sâu 60.6 cm<br/>Chất liệu dàn trao đổi nhiệt:Ống dẫn bằng Đồng - Lá tản nhiệt bằng Nhôm<br/>Đèn chiếu sáng:Đèn LED<br/>Nơi sản xuất:Việt Nam<br/>Năm ra mắt:2017<br/>', N'68-1.jpg', 6990000, 4, CAST(N'2019-09-09T16:21:45.510' AS DateTime), CAST(N'2019-09-09T16:32:48.830' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (69, N'TL0002', N'Tủ lạnh Panasonic 188 lít', N'Cái', N'Công nghệ Inverter tiết kiệm điện năng.<br/>Bộ lọc Nano Ag+Cu tăng cường khả năng khử mùi.<br/>Chức năng Extra Eco – Tiết kiệm năng lượng tối ưu.<br/>', N'Đặc điểm sản phẩm<br/>Dung tích tổng:188 lít<br/>Số người sử dụng:3 - 5 người<br/>Dung tích ngăn đá:53 lít<br/>Dung tích ngăn lạnh:135 lít<br/>Chế độ tiết kiệm điện khác:Econavi<br/>Công nghệ làm lạnh:Panorama<br/>Công nghệ kháng khuẩn, khử mùi:Công nghệ kháng khuẩn Ag Clean với tinh thể bạc Ag+<br/>Công nghệ bảo quản thực phẩm:Ngăn rau quả giữ ẩm<br/>Tiện ích:Inverter tiết kiệm điện<br/>Kiểu tủ:Ngăn đá trên<br/>Số cửa:2 cửa<br/>Chất liệu cửa tủ lạnh:Kim loại phủ sơn tĩnh điện<br/>Chất liệu khay ngăn:Kính chịu lực<br/>Kích thước - Khối lượng:Cao 136 cm - Rộng 52 cm - Sâu 57 cm - Nặng 36 kg<br/>Chất liệu dàn trao đổi nhiệt:Ống dẫn bằng Đồng - Lá tản nhiệt bằng Nhôm<br/>Đèn chiếu sáng:Đèn LED<br/>Nơi sản xuất:Việt Nam<br/>Năm ra mắt:2017<br/>', N'69-1.jpg', 6090000, 4, CAST(N'2019-09-09T16:21:45.510' AS DateTime), CAST(N'2019-09-09T16:32:48.830' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (70, N'TL0003', N'Tủ lạnh Sharp 196 lít', N'Cái', N'Công nghệ Inverter và Econavi tiết kiệm điện năng vượt trội, giúp tủ lạnh hoạt động ổn định và êm ái.<br/>Công nghệ làm lạnh Panorama làm lạnh đa chiều và đồng đều ngăn đông, giúp làm đông nhanh chóng và tiết kiệm điện năng.<br/>Bộ khử mùi phân tử bạc Nano Ag+ tiêu diệt vi khuẩn, khử mùi hôi hiệu quả, bảo vệ sức khỏe cho người sử dụng.<br/>Hộc rau quả giữ ấm giúp rau quả được bảo quản lâu hơn và giữ được vị ngon trọn vẹn.<br/>', N'Đặc điểm sản phẩm<br/>Dung tích sử dụng:255 lít<br/>Số người sử dụng:3 - 5 người<br/>Dung tích ngăn đá:85 lít<br/>Dung tích ngăn lạnh:170 lít<br/>Chế độ tiết kiệm điện khác:Econavi<br/>Công nghệ làm lạnh:Panorama<br/>Công nghệ kháng khuẩn, khử mùi:Công nghệ kháng khuẩn Ag Clean với tinh thể bạc Ag+<br/>Công nghệ bảo quản thực phẩm:Ngăn cấp đông mềm Prime Fresh<br/>Tiện ích:Inverter tiết kiệm điện, Bảo quản thịt cá không cần rã đông<br/>Kiểu tủ:Ngăn đá dưới<br/>Số cửa:2 cửa<br/>Chất liệu cửa tủ lạnh:Thép không gỉ<br/>Chất liệu khay ngăn:Kính chịu lực<br/>Kích thước - Khối lượng:Cao 150.5 cm - Rộng 60.1 cm - Sâu 65.6 cm - Nặng 56 kg<br/>Chất liệu dàn trao đổi nhiệt:Ống dẫn bằng Đồng - Lá tản nhiệt bằng Nhôm<br/>Đèn chiếu sáng:Đèn LED<br/>Nơi sản xuất:Việt Nam<br/>Năm ra mắt:2017<br/>', N'70-1.jpg', 5590000, 4, CAST(N'2019-09-09T16:21:45.510' AS DateTime), CAST(N'2019-09-09T16:32:48.830' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (71, N'TL0004', N'Tủ lạnh Samsung 208 lít', N'Cái', N'Công nghệ Inverter tiết kiệm 40% điện năng tiêu thụ, giúp tủ lạnh hoạt động ổn định, êm ái.<br/>Hệ thống làm lạnh Panorama tiên tiến giúp làm lạnh nhanh chóng, đồng đều.<br/>Ngăn Prime Fresh bảo quản thực phẩm không cần rã đông trước khi nấu ăn.<br/>Công nghệ kháng khuẩn tinh thể bạc Ag Clean diệt khuẩn và khử mùi  hiệu quả tới 99,9%.<br/>', N'Đặc điểm sản phẩm<br/>Dung tích tổng:186 lít<br/>Số người sử dụng:3 - 5 người<br/>Dung tích ngăn đá:58 lít<br/>Dung tích ngăn lạnh:128 lít<br/>Điện năng tiêu thụ:~0.97 kW/ ngày<br/>Công nghệ làm lạnh:Làm lạnh tuần hoàn<br/>Công nghệ kháng khuẩn, khử mùi:Hybrid Bio<br/>Tiện ích:Inverter tiết kiệm điện, Ngăn kệ có thể thay đổi linh hoạt<br/>Kiểu tủ:Ngăn đá trên<br/>Số cửa:2 cửa<br/>Chất liệu cửa tủ lạnh:Uniglass<br/>Chất liệu khay ngăn:Kính chịu lực<br/>Kích thước - Khối lượng:Cao 135.5 cm - Rộng 54.7 cm - Sâu 65.2 cm - Nặng 42 kg<br/>Chất liệu dàn trao đổi nhiệt:Ống dẫn bằng Đồng - Lá tản nhiệt bằng Nhôm<br/>Đèn chiếu sáng:Đèn LED<br/>Nơi sản xuất:Thái Lan<br/>Năm ra mắt:2017<br/>', N'71-1.jpg', 5790000, 4, CAST(N'2019-09-09T16:21:45.510' AS DateTime), CAST(N'2019-09-09T16:32:48.830' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (72, N'TL0005', N'Tủ lạnh Panasonic 255 lít', N'Cái', N'Cửa tủ với chất liệu mới Uniglass phong cách sang trọng, tinh tế.<br/>Công nghệ Inverter thế hệ mới tiết kiệm đến 40% điện năng tiêu thụ.<br/>Luồng khí lạnh tuần hoàn luân chuyển đến mọi ngóc ngách.<br/>Bộ khử mùi Hybrid Bio diệt khuẩn khử mùi hiệu quả.<br/>', N'Đặc điểm sản phẩm<br/>Dung tích tổng:236 lít<br/>Số người sử dụng:3 - 5 người<br/>Dung tích ngăn đá:53 lít<br/>Dung tích ngăn lạnh:183 lít<br/>Công nghệ làm lạnh:Công nghệ làm lạnh vòm<br/>Công nghệ kháng khuẩn, khử mùi:Kháng khuẩn, khử mùi Ag+<br/>Công nghệ bảo quản thực phẩm:Ngăn cấp đông mềm Power Cooling, Ngăn rau quả cân bằng độ ẩm<br/>Tiện ích:Inverter tiết kiệm điện, Bảo quản thịt cá không cần rã đông<br/>Kiểu tủ:Ngăn đá trên<br/>Số cửa:2 cửa<br/>Chất liệu cửa tủ lạnh:Kim loại phủ sơn tĩnh điện<br/>Chất liệu khay ngăn:Kính chịu lực<br/>Kích thước - Khối lượng:Cao 154.5 cm - Rộng 56 cm - Sâu 63.5 cm<br/>Chất liệu dàn trao đổi nhiệt:Ống dẫn bằng Đồng - Lá tản nhiệt bằng Nhôm<br/>Đèn chiếu sáng:Đèn LED<br/>Nơi sản xuất:Việt Nam<br/>Năm ra mắt:2018<br/>', N'72-1.jpg', 8890000, 4, CAST(N'2019-09-09T16:21:45.510' AS DateTime), CAST(N'2019-09-09T16:32:48.830' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (73, N'TL0006', N'Tủ lạnh Toshiba 186 lít', N'Cái', N'Thiết kế sang trọng với sắc nâu thời thượng.<br/>Công nghệ Digital Inverter hiện đại không gây tiếng ồn, tiết kiệm điện năng.<br/>Công nghệ cấp đông mềm Power Cooling chế biến thực phẩm không cần rã đông.<br/>Ngăn rau quả cân bằng độ ẩm Big Box.<br/>', N'Đặc điểm sản phẩm<br/>Dung tích tổng:196 lít<br/>Dung tích sử dụng:182 lít<br/>Số người sử dụng:1 - 3 người<br/>Dung tích ngăn đá:41 lít<br/>Dung tích ngăn lạnh:141 lít<br/>Điện năng tiêu thụ:~ 0.66 kW/ngày<br/>Chế độ tiết kiệm điện khác:Công nghệ J-Tech Inverter và chế độ Extra Eco<br/>Công nghệ làm lạnh:Gián tiếp<br/>Công nghệ kháng khuẩn, khử mùi:Bộ lọc với các phân tử Ag+Cu<br/>Công nghệ bảo quản thực phẩm:Ngăn giữ tươi linh hoạt<br/>Tiện ích:Inverter tiết kiệm điện<br/>Kiểu tủ:Ngăn đá trên<br/>Số cửa:2 cửa<br/>Chất liệu cửa tủ lạnh:Kim loại phủ sơn tĩnh điện<br/>Chất liệu khay ngăn:Kính chịu lực<br/>Kích thước - Khối lượng:cao 139 cm - Rộng 54.5 cm - Sâu 62.5 cm - Nặng 38 kg<br/>Chất liệu dàn trao đổi nhiệt:Ống dẫn bằng Đồng - Lá tản nhiệt bằng Nhôm<br/>Đèn chiếu sáng:Đèn LED<br/>Nơi sản xuất:Thái Lan<br/>Năm ra mắt:2017<br/>', N'73-1.jpg', 6490000, 4, CAST(N'2019-09-09T16:21:45.510' AS DateTime), CAST(N'2019-09-09T16:32:48.830' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (74, N'TL0007', N'TỦ LẠNH PANASONIC 152L NR-BA178PSV1', N'Cái', N'Công nghệ Inverter tiết kiệm điện năng.<br/>Bộ lọc Nano Ag+Cu tăng cường khả năng khử mùi.<br/>Chức năng Extra Eco – Tiết kiệm năng lượng tối ưu.<br/>', N'Đặc điểm sản phẩm<br/>Dung tích tổng:196 lít<br/>Dung tích sử dụng:182 lít<br/>Số người sử dụng:1 - 3 người<br/>Dung tích ngăn đá:41 lít<br/>Dung tích ngăn lạnh:141 lít<br/>Điện năng tiêu thụ:~ 0.66 kW/ngày<br/>Chế độ tiết kiệm điện khác:Công nghệ J-Tech Inverter và chế độ Extra Eco<br/>Công nghệ làm lạnh:Gián tiếp<br/>Công nghệ kháng khuẩn, khử mùi:Bộ lọc với các phân tử Ag+Cu<br/>Công nghệ bảo quản thực phẩm:Ngăn giữ tươi linh hoạt<br/>Tiện ích:Inverter tiết kiệm điện<br/>Kiểu tủ:Ngăn đá trên<br/>Số cửa:2 cửa<br/>Chất liệu cửa tủ lạnh:Kim loại phủ sơn tĩnh điện<br/>Chất liệu khay ngăn:Kính chịu lực<br/>Kích thước - Khối lượng:cao 139 cm - Rộng 54.5 cm - Sâu 62.5 cm - Nặng 38 kg<br/>Chất liệu dàn trao đổi nhiệt:Ống dẫn bằng Đồng - Lá tản nhiệt bằng Nhôm<br/>Đèn chiếu sáng:Đèn LED<br/>Nơi sản xuất:Thái Lan<br/>Năm ra mắt:2017<br/>', N'74-1.jpg,74-2.jpg,74-3.jpg', 5590000, 4, CAST(N'2019-09-09T16:21:45.510' AS DateTime), CAST(N'2019-09-09T16:32:48.830' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (75, N'TL0008', N'TỦ LẠNH PANASONIC 152 LÍT NR-BA178PKV1', N'Cái', N'Công nghệ Inverter tiết kiệm điện năng.<br/>Bộ lọc Nano Ag+Cu tăng cường khả năng khử mùi.<br/>Chức năng Extra Eco – Tiết kiệm năng lượng tối ưu.<br/>', N'Đặc điểm sản phẩm<br/>Dung tích tổng:216 lít<br/>Dung tích sử dụng:208 lít<br/>Số người sử dụng:3 - 5 người<br/>Dung tích ngăn đá:53 lít<br/>Dung tích ngăn lạnh:150 lít<br/>Điện năng tiêu thụ:~ 0.9 kW/ngày<br/>Chế độ tiết kiệm điện khác:Công nghệ máy nén biến tần Inverter<br/>Công nghệ làm lạnh:Luồng khí lạnh đa chiều<br/>Công nghệ kháng khuẩn, khử mùi:Bộ lọc Carbon hoạt tính<br/>Công nghệ bảo quản thực phẩm:Ngăn rau quả giữ ẩm<br/>Tiện ích:Inverter tiết kiệm điện, Không có<br/>Kiểu tủ:Ngăn đá trên<br/>Số cửa:2 cửa<br/>Chất liệu cửa tủ lạnh:Kim loại phủ sơn tĩnh điện<br/>Chất liệu khay ngăn:Kính chịu lực<br/>Kích thước - Khối lượng:Cao 144.5 cm - Rộng 55.6 cm - Sâu 60.6 cm<br/>Chất liệu dàn trao đổi nhiệt:Ống dẫn bằng Đồng - Lá tản nhiệt bằng Nhôm<br/>Đèn chiếu sáng:Đèn LED<br/>Nơi sản xuất:Việt Nam<br/>Năm ra mắt:2017<br/>', N'75-1.jpg,75-2.jpg,75-3.jpg', 6990000, 4, CAST(N'2019-09-09T16:21:45.510' AS DateTime), CAST(N'2019-09-09T16:32:48.830' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (76, N'TL0009', N'TỦ LẠNH PANASONIC 152L NR-BA178VSV1', N'Cái', N'Công nghệ Inverter tiết kiệm điện năng.<br/>Bộ lọc Nano Ag+Cu tăng cường khả năng khử mùi.<br/>Chức năng Extra Eco – Tiết kiệm năng lượng tối ưu.<br/>', N'Đặc điểm sản phẩm<br/>Dung tích tổng:188 lít<br/>Số người sử dụng:3 - 5 người<br/>Dung tích ngăn đá:53 lít<br/>Dung tích ngăn lạnh:135 lít<br/>Chế độ tiết kiệm điện khác:Econavi<br/>Công nghệ làm lạnh:Panorama<br/>Công nghệ kháng khuẩn, khử mùi:Công nghệ kháng khuẩn Ag Clean với tinh thể bạc Ag+<br/>Công nghệ bảo quản thực phẩm:Ngăn rau quả giữ ẩm<br/>Tiện ích:Inverter tiết kiệm điện<br/>Kiểu tủ:Ngăn đá trên<br/>Số cửa:2 cửa<br/>Chất liệu cửa tủ lạnh:Kim loại phủ sơn tĩnh điện<br/>Chất liệu khay ngăn:Kính chịu lực<br/>Kích thước - Khối lượng:Cao 136 cm - Rộng 52 cm - Sâu 57 cm - Nặng 36 kg<br/>Chất liệu dàn trao đổi nhiệt:Ống dẫn bằng Đồng - Lá tản nhiệt bằng Nhôm<br/>Đèn chiếu sáng:Đèn LED<br/>Nơi sản xuất:Việt Nam<br/>Năm ra mắt:2017<br/>', N'76-1.jpg', 6090000, 4, CAST(N'2019-09-09T16:21:45.510' AS DateTime), CAST(N'2019-09-09T16:32:48.830' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (77, N'TL0010', N'TỦ LẠNH HITACHI INVERTER 455 LÍT', N'Cái', N'Công nghệ Inverter tiết kiệm 40% điện năng tiêu thụ, giúp tủ lạnh hoạt động ổn định, êm ái.<br/>Hệ thống làm lạnh Panorama tiên tiến giúp làm lạnh nhanh chóng, đồng đều.<br/>Ngăn Prime Fresh bảo quản thực phẩm không cần rã đông trước khi nấu ăn.<br/>Công nghệ kháng khuẩn tinh thể bạc Ag Clean diệt khuẩn và khử mùi  hiệu quả tới 99,9%.<br/>', N'Đặc điểm sản phẩm<br/>Dung tích tổng:196 lít<br/>Dung tích sử dụng:182 lít<br/>Số người sử dụng:1 - 3 người<br/>Dung tích ngăn đá:41 lít<br/>Dung tích ngăn lạnh:141 lít<br/>Điện năng tiêu thụ:~ 0.66 kW/ngày<br/>Chế độ tiết kiệm điện khác:Công nghệ J-Tech Inverter và chế độ Extra Eco<br/>Công nghệ làm lạnh:Gián tiếp<br/>Công nghệ kháng khuẩn, khử mùi:Bộ lọc với các phân tử Ag+Cu<br/>Công nghệ bảo quản thực phẩm:Ngăn giữ tươi linh hoạt<br/>Tiện ích:Inverter tiết kiệm điện<br/>Kiểu tủ:Ngăn đá trên<br/>Số cửa:2 cửa<br/>Chất liệu cửa tủ lạnh:Kim loại phủ sơn tĩnh điện<br/>Chất liệu khay ngăn:Kính chịu lực<br/>Kích thước - Khối lượng:cao 139 cm - Rộng 54.5 cm - Sâu 62.5 cm - Nặng 38 kg<br/>Chất liệu dàn trao đổi nhiệt:Ống dẫn bằng Đồng - Lá tản nhiệt bằng Nhôm<br/>Đèn chiếu sáng:Đèn LED<br/>Nơi sản xuất:Thái Lan<br/>Năm ra mắt:2017<br/>', N'77-1.jpg,77-2.jpg', 5590000, 4, CAST(N'2019-09-09T16:21:45.510' AS DateTime), CAST(N'2019-09-09T16:32:48.830' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (78, N'TL0011', N'TỦ LẠNH HITACHI INVERTER 455 LÍT R-WB545PGV2', N'Cái', N'Công nghệ Inverter tiết kiệm điện tối ưu, vận hành êm ái và bền bỉ.<br/>Luồng khí lạnh đa chiều cho hơi mát lan tỏa đều đến mọi ngóc ngách trong tủ.<br/>Kháng khuẩn và khử sạch mùi hôi với bộ lọc Cacbon hoạt tính.<br/>Ngăn rau củ giữ ẩm đảm bảo thực phẩm luôn được bảo quản tươi ngon.<br/>', N'Đặc điểm sản phẩm<br/>Dung tích tổng:186 lít<br/>Số người sử dụng:3 - 5 người<br/>Dung tích ngăn đá:58 lít<br/>Dung tích ngăn lạnh:128 lít<br/>Điện năng tiêu thụ:~0.97 kW/ ngày<br/>Công nghệ làm lạnh:Làm lạnh tuần hoàn<br/>Công nghệ kháng khuẩn, khử mùi:Hybrid Bio<br/>Tiện ích:Inverter tiết kiệm điện, Ngăn kệ có thể thay đổi linh hoạt<br/>Kiểu tủ:Ngăn đá trên<br/>Số cửa:2 cửa<br/>Chất liệu cửa tủ lạnh:Uniglass<br/>Chất liệu khay ngăn:Kính chịu lực<br/>Kích thước - Khối lượng:Cao 135.5 cm - Rộng 54.7 cm - Sâu 65.2 cm - Nặng 42 kg<br/>Chất liệu dàn trao đổi nhiệt:Ống dẫn bằng Đồng - Lá tản nhiệt bằng Nhôm<br/>Đèn chiếu sáng:Đèn LED<br/>Nơi sản xuất:Thái Lan<br/>Năm ra mắt:2017<br/>', N'78-1.jpg,78-2.jpg', 5790000, 4, CAST(N'2019-09-09T16:21:45.510' AS DateTime), CAST(N'2019-09-09T16:32:48.830' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (79, N'TL0012', N'TỦ LẠNH ELECTROLUX 681 LÍT EHE6879A-B', N'Cái', N'Công nghệ Inverter và Econavi tiết kiệm điện năng vượt trội, giúp tủ lạnh hoạt động ổn định và êm ái.<br/>Công nghệ làm lạnh Panorama làm lạnh đa chiều và đồng đều ngăn đông, giúp làm đông nhanh chóng và tiết kiệm điện năng.<br/>Bộ khử mùi phân tử bạc Nano Ag+ tiêu diệt vi khuẩn, khử mùi hôi hiệu quả, bảo vệ sức khỏe cho người sử dụng.<br/>Hộc rau quả giữ ấm giúp rau quả được bảo quản lâu hơn và giữ được vị ngon trọn vẹn.<br/>', N'Đặc điểm sản phẩm<br/>Dung tích tổng:236 lít<br/>Số người sử dụng:3 - 5 người<br/>Dung tích ngăn đá:53 lít<br/>Dung tích ngăn lạnh:183 lít<br/>Công nghệ làm lạnh:Công nghệ làm lạnh vòm<br/>Công nghệ kháng khuẩn, khử mùi:Kháng khuẩn, khử mùi Ag+<br/>Công nghệ bảo quản thực phẩm:Ngăn cấp đông mềm Power Cooling, Ngăn rau quả cân bằng độ ẩm<br/>Tiện ích:Inverter tiết kiệm điện, Bảo quản thịt cá không cần rã đông<br/>Kiểu tủ:Ngăn đá trên<br/>Số cửa:2 cửa<br/>Chất liệu cửa tủ lạnh:Kim loại phủ sơn tĩnh điện<br/>Chất liệu khay ngăn:Kính chịu lực<br/>Kích thước - Khối lượng:Cao 154.5 cm - Rộng 56 cm - Sâu 63.5 cm<br/>Chất liệu dàn trao đổi nhiệt:Ống dẫn bằng Đồng - Lá tản nhiệt bằng Nhôm<br/>Đèn chiếu sáng:Đèn LED<br/>Nơi sản xuất:Việt Nam<br/>Năm ra mắt:2018<br/>', N'79-1.jpg,79-2.jpg', 8890000, 4, CAST(N'2019-09-09T16:21:45.510' AS DateTime), CAST(N'2019-09-09T16:32:48.830' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (80, N'TD0001', N'TỦ ĐÔNG SANAKY 1 NGĂN VH 2899A3', N'Cái', N'Dung tích tổng: 280 lít
Dung tích thực: 235 lít
Tủ đông: 1 ngăn - 2 cửa
Công nghệ Inverter
Loại gas: R600a', N'Công nghệ Inverter', N'80-1.jpg,80-2.jpg', 6490000, 14, CAST(N'2019-09-09T16:21:45.510' AS DateTime), CAST(N'2019-09-09T16:32:48.830' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (81, N'TL0014', N'TỦ LẠNH SHARP INVERTER 165 LÍT SJ-X176E-CS', N'Cái', N'Kiểu tủ: Ngăn đá trên - 2 cửa
Công nghệ J-Tech Inverter
Làm đá cực nhanh
Bảo hành: 12 tháng
Xuất xứ: Thái Lan', N'Dung tích tổng: 165L - thực: 150L', N'81-1.jpg,81-2.jpg,81-3.jpg', 4900000, 4, CAST(N'2019-09-09T16:21:45.510' AS DateTime), CAST(N'2019-09-09T16:21:45.510' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (82, N'TL0015', N'Tủ lạnh Samsung Inverter 584 lít RS552NRUASL', N'Cái', N'Kiểu tủ: Side By Side - 2 cửa
Khay kính chịu lực
Điện năng tiêu thụ: 637 kWh/năm
Bảo hành: 24 tháng', N'Dung tích: 584 lít 
Công nghệ Inverter', N'82-1.jpg,82-2.jpg,82-3.jpg', 22000000, 4, CAST(N'2019-09-09T16:32:48.830' AS DateTime), CAST(N'2019-09-09T16:32:48.830' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (85, N'TD0002', N'TỦ ĐÔNG ALASKA 2 NGĂN BCD-3568C', N'Cái', N'Tủ đông: 2 ngăn - 2 cửa', N'Dung tích tổng: 370L - thực: 350L
Tủ đông: 2 ngăn - 2 cửa
Công suất: 100 W', N'85-1.jpg,85-2.jpg,85-3.jpg', 7000000, 14, CAST(N'2019-09-13T15:48:34.813' AS DateTime), CAST(N'2019-09-13T15:48:34.813' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (86, N'TD0003', N'TỦ ĐÔNG ALASKA IF-21', N'Cái', N'Tủ đông: 2 ngăn - 2 cửa', N'Dung tích tổng: 260L - thực: 250L
Tủ đông: 2 ngăn - 2 cửa
Công suất: 120 W', N'86-1.jpg,86-2.jpg,86-3.jpg', 6000000, 14, CAST(N'2019-09-13T15:51:04.940' AS DateTime), CAST(N'2019-09-13T15:51:04.940' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (90, N'QP0020', N'Canon HDV video camera', N'Cái', N'Digital video Professional video camera Camcorder High-definition video, Video camera , black Canon HDV video camera', NULL, N'90-1.png', 4500000, 6, CAST(N'2019-09-16T16:12:27.343' AS DateTime), CAST(N'2019-09-16T16:12:27.343' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (91, N'QP0021', N'Flying Drone With Camera - Aphex Hexacopter', N'Cái', N'Jeff from Event 38 got in touch with sUAS News to tell us about their new multirotor system. If you would like one, get inline sales start tomorrow', N'This hexacopter is based on the 3DR Hexa frame. It comes ready to fly with a 2-axis stabilizing camera mount for taking aerial photographs. We modified the camera mount so it can now take images not only at moderate angles but also straight down for super low altitude mapping missions. You can easily make small mosaics with resolution less than 0.5cm/pixel. Aimed straight forward, the Aphex can be used to take amazing oblique aerial shots of houses, landscapes and large structures.', N'91-1.png', 9500000, 6, CAST(N'2019-09-16T16:20:54.780' AS DateTime), CAST(N'2019-09-16T16:20:54.780' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (92, N'QP0022', N'Flying Drone With Camera 92', N'Cái', N'Jeff from Event 38 got in touch with sUAS News to tell us about their new multirotor system. If you would like one, get inline sales start tomorrow', N'This hexacopter is based on the 3DR Hexa frame. It comes ready to fly with a 2-axis stabilizing camera mount for taking aerial photographs. We modified the camera mount so it can now take images not only at moderate angles but also straight down for super low altitude mapping missions. You can easily make small mosaics with resolution less than 0.5cm/pixel. Aimed straight forward, the Aphex can be used to take amazing oblique aerial shots of houses, landscapes and large structures.', N'92-1.png', 9500000, 6, CAST(N'2019-09-16T16:21:26.690' AS DateTime), CAST(N'2019-09-16T16:21:26.690' AS DateTime))
INSERT [dbo].[HangHoa] ([ID], [MaSo], [Ten], [DonViTinh], [MoTa], [ThongSoKyThuat], [TenHinh], [GiaBan], [LoaiID], [NgayTao], [NgayCapNhat]) VALUES (93, N'QP0023', N'Flying Drone With Camera 93', N'Cái', N'Jeff from Event 38 got in touch with sUAS News to tell us about their new multirotor system. If you would like one, get inline sales start tomorrow', N'This hexacopter is based on the 3DR Hexa frame. It comes ready to fly with a 2-axis stabilizing camera mount for taking aerial photographs. We modified the camera mount so it can now take images not only at moderate angles but also straight down for super low altitude mapping missions. You can easily make small mosaics with resolution less than 0.5cm/pixel. Aimed straight forward, the Aphex can be used to take amazing oblique aerial shots of houses, landscapes and large structures.', N'93-1.png', 9500000, 6, CAST(N'2019-09-16T16:21:54.667' AS DateTime), CAST(N'2019-09-16T16:21:54.667' AS DateTime))
SET IDENTITY_INSERT [dbo].[HangHoa] OFF
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([ID], [NgayDatHang], [HoTenKhach], [DiaChi], [DienThoai], [Email], [TongTien]) VALUES (1, CAST(N'2019-09-28T16:47:45.310' AS DateTime), N'uyên', N'123 NCT', N'0987654321', N'uyen@gmail.com', 33000000)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
INSERT [dbo].[HoaDonChiTiet] ([HoaDonID], [HangHoaID], [SoLuong], [DonGia], [ThanhTien]) VALUES (1, 90, 1, 4500000, 4500000)
INSERT [dbo].[HoaDonChiTiet] ([HoaDonID], [HangHoaID], [SoLuong], [DonGia], [ThanhTien]) VALUES (1, 92, 3, 9500000, 28500000)
SET IDENTITY_INSERT [dbo].[Loai] ON 

INSERT [dbo].[Loai] ([ID], [MaSo], [Ten], [ChungLoaiID]) VALUES (1, N'MAKS', N'Máy ảnh KTS', 3)
INSERT [dbo].[Loai] ([ID], [MaSo], [Ten], [ChungLoaiID]) VALUES (2, N'LATP', N'Laptop', 1)
INSERT [dbo].[Loai] ([ID], [MaSo], [Ten], [ChungLoaiID]) VALUES (3, N'TV', N'Tivi', 8)
INSERT [dbo].[Loai] ([ID], [MaSo], [Ten], [ChungLoaiID]) VALUES (4, N'TULH', N'Tủ lạnh', 2)
INSERT [dbo].[Loai] ([ID], [MaSo], [Ten], [ChungLoaiID]) VALUES (5, N'ML', N'Máy lạnh', 2)
INSERT [dbo].[Loai] ([ID], [MaSo], [Ten], [ChungLoaiID]) VALUES (6, N'MQPH', N'Máy quay phim', 3)
INSERT [dbo].[Loai] ([ID], [MaSo], [Ten], [ChungLoaiID]) VALUES (8, N'PCDB', N'Máy tính để bàn', 1)
INSERT [dbo].[Loai] ([ID], [MaSo], [Ten], [ChungLoaiID]) VALUES (9, N'PKMT', N'Phụ kiện máy tính', 1)
INSERT [dbo].[Loai] ([ID], [MaSo], [Ten], [ChungLoaiID]) VALUES (11, N'MAGT', N'Máy Giặt', 4)
INSERT [dbo].[Loai] ([ID], [MaSo], [Ten], [ChungLoaiID]) VALUES (12, N'MASY', N'Máy sấy', 4)
INSERT [dbo].[Loai] ([ID], [MaSo], [Ten], [ChungLoaiID]) VALUES (14, N'TUDG', N'Tủ đông', 2)
INSERT [dbo].[Loai] ([ID], [MaSo], [Ten], [ChungLoaiID]) VALUES (15, N'TUMT', N'Tủ mát', 2)
SET IDENTITY_INSERT [dbo].[Loai] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Loai__2725087CA9708196]    Script Date: 10/7/2019 4:53:49 PM ******/
ALTER TABLE [dbo].[Loai] ADD UNIQUE NONCLUSTERED 
(
	[MaSo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HangHoa] ADD  CONSTRAINT [DF__HANG_HOA__Don_gi__30F848ED]  DEFAULT ((0)) FOR [GiaBan]
GO
ALTER TABLE [dbo].[HangHoa] ADD  CONSTRAINT [DF_HANG_HOA_Ngay_tao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[HangHoa] ADD  CONSTRAINT [DF_HangHoa_NgayCapNhat]  DEFAULT (getdate()) FOR [NgayCapNhat]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_hoadon_ngaydathang]  DEFAULT (getdate()) FOR [NgayDatHang]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_HoaDon_TongTien]  DEFAULT ((0)) FOR [TongTien]
GO
ALTER TABLE [dbo].[HoaDonChiTiet] ADD  CONSTRAINT [DF_HoaDonChiTiet_SoLuong]  DEFAULT ((0)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[HoaDonChiTiet] ADD  CONSTRAINT [DF_HoaDonChiTiet_DonGia]  DEFAULT ((0)) FOR [DonGia]
GO
ALTER TABLE [dbo].[HoaDonChiTiet] ADD  CONSTRAINT [DF_HoaDonChiTiet_ThanhTien]  DEFAULT ((0)) FOR [ThanhTien]
GO
ALTER TABLE [dbo].[HangHoa]  WITH CHECK ADD  CONSTRAINT [FK_HangHoa_Loai] FOREIGN KEY([LoaiID])
REFERENCES [dbo].[Loai] ([ID])
GO
ALTER TABLE [dbo].[HangHoa] CHECK CONSTRAINT [FK_HangHoa_Loai]
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonChiTiet_HangHoa] FOREIGN KEY([HangHoaID])
REFERENCES [dbo].[HangHoa] ([ID])
GO
ALTER TABLE [dbo].[HoaDonChiTiet] CHECK CONSTRAINT [FK_HoaDonChiTiet_HangHoa]
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonChiTiet_HoaDon] FOREIGN KEY([HoaDonID])
REFERENCES [dbo].[HoaDon] ([ID])
GO
ALTER TABLE [dbo].[HoaDonChiTiet] CHECK CONSTRAINT [FK_HoaDonChiTiet_HoaDon]
GO
ALTER TABLE [dbo].[Loai]  WITH CHECK ADD  CONSTRAINT [FK_Loai_ChungLoai] FOREIGN KEY([ChungLoaiID])
REFERENCES [dbo].[ChungLoai] ([ID])
GO
ALTER TABLE [dbo].[Loai] CHECK CONSTRAINT [FK_Loai_ChungLoai]
GO
