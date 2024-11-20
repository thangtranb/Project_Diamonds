Create database DB_Diamonds
GO

Use DB_Diamonds
GO

Create table Category
(
	CategoryId int primary key identity,
	Name nvarchar(150),
	Image varchar(200)
)
GO

Insert Into Category Values (N'Diamond Rings','nhan-kim-cuong-tu-nhien-jemmia.vn_.jpg')
Insert Into Category Values (N'Diamond earrings','bong-tai-kim-cuong-tu-nhien-jemmia.vn_.jpg')
Insert Into Category Values (N'diamond bracelet','vong-tay-kim-cuong-tu-nhien-jemmia.vn_.jpg')
Insert Into Category Values (N'Diamond pendant','mat-day-chuyen-kim-cuong-tu-nhien-jemmia.vn_.jpg')
Insert Into Category Values (N'Diamond Jewelry Set','bo-trang-suc-kim-cuong-tu-nhien-jemmia.vn_.jpg')
GO

Create table Products
(
	ProductId int primary key identity,
	Name nvarchar(150),
	Description nvarchar(500),
	Image varchar(200),
	Carat int,
	Clarity nvarchar(100),
	Cut nvarchar(150),
	Luminescent nvarchar(150),
	Shape nvarchar(150),
	Size int,
	Height int,
	Color nvarchar(100),
	Price float,
	SalePrice float,
	StockQuantity int,
	CategoryId int foreign key references Category(CategoryId),
	CreatedAt datetime,
	UpdatedAt datetime
)
GO

Insert into Products values (N'Nhẫn Kim Cương Nữ R.2235', N'Sang trọng', 'bo_trang_suc_1.jpg', 2, 'None', 'excellent', N'Phát quang','cushion', 3,3, N'Trắng', 25496000, 21416640, 12,1, '2024-03-25', '2024-03-26')
GO

Select * from Products
GO

Create table Customer
(
	CustomerId int primary key identity,
	UserName nvarchar(100),
	FullName nvarchar(150),
	Avatar varchar(150),
	Gender bit,
	Birthday date,
	Email varchar(150),
	Password varchar(500),
	Phone varchar(12),
	Address nvarchar(225),
	Active int,
	Role varchar(50),
)
GO

Insert into Customer Values (N'yenNguyen', N'Nguyễn Thị Yến','https://tse2.mm.bing.net/th?id=OIP.9SKfV5dAQ-SahY_Hau0W2AHaHa&pid=Api&P=0&h=220',1,'2004-01-13', 'yen@gmail.com','e10adc3949ba59abbe56e057f20f883e', '1341415938', N'Bắc Ninh',1 , 'user')
Insert into Customer Values (N'admin', N'Nguyễn Thị Yến','https://tse2.mm.bing.net/th?id=OIP.9SKfV5dAQ-SahY_Hau0W2AHaHa&pid=Api&P=0&h=220',1,'2004-01-13', 'yen@gmail.com','96e79218965eb72c92a549dd5a330112', '1341415938', N'Bắc Ninh',1, 'admin')
GO

Create table Orders 
(
	OrderId varchar(15) primary key,
	CustomerId int foreign key references Customer(CustomerId),
	OrderDate date,
	Phone varchar(12),
	Status bit,
	ShippingAddress nvarchar(225),
)
GO
Insert into Orders values (1, '2024-05-23', 12, 1, N'Bắc Ninh', N'Việt Nam', '2024-05-23', '2024-05-24')
GO
Create table OrderDetail 
(
	OrderDeatailId int primary key identity,
	OrderId varchar(15) foreign key references Orders(OrderId),	
	ProductId int foreign key references Products(ProductId),
	Price float,
	Quantity int,
	
)

select * from Orders