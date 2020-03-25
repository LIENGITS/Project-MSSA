--Name: Lien Zhang
--File: ProjectMssa
--Date: 12, February, 2020

Use ProjectMssa;

--Business Owner Table
CREATE TABLE [dbo].[BusinessOwner](
	[OwnerId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Companyname] [varchar](50) NULL,
	[Companyphone] [varchar](15) NULL,
	[Companyemail] [varchar](50) NULL,
	[Companytype] [varchar](30) NULL,
	[Companystreet] [varchar](50) NULL,
	[Companycity] [varchar](50) NULL,
	[Companyregion] [varchar](50) NULL,
	[Companyzip] [varchar](10) NULL,
	[UserID] [int] NOT NULL,
	[InvoiceID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OwnerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

 --AppUser Table
 CREATE TABLE [dbo].[Application](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](25) NULL,
	[Useremail] [varchar](50) NULL,
	[Userpassword] [varchar](50) NULL,
	[Firstname] [varchar](30) NULL,
	[Lastname] [varchar](30) NULL,
	[NewFolder] [varchar](30) NULL,
	[Projects] [varchar](30) NULL,
	[InvoiceHistory] [varchar](25) NULL,
	[ProjectId] [int] NULL,
	[InvoiceId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

 -- Customers Table
 CREATE TABLE [dbo].[Customers](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[Firstname] [varchar](30) NULL,
	[Lastname] [varchar](30) NULL,
	[Customeremail] [varchar](50) NULL,
	[Customerphone] [varchar](15) NULL,
	[InvoiceID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

 --Invoice Table
 CREATE TABLE [dbo].[Invoice](
	[InvoiceID] [int] NULL,
	[OwnerID] [int] NULL,
	[UserID] [int] NULL,
	[CustomerID] [int] NULL,
	[ProductID] [int] NULL,
	[ProjectID] [int] NULL,
	[ProjectTitle] [varchar](50) NULL,
	[Quantity] [int] NULL,
	[StarteDate] [date] NULL,
	[CompletionDate] [date] NULL,
	[Priceperitem] [int] NULL,
	[ItemDescription] [varchar](50) NULL,
	[ProjectDescription] [varchar](50) NULL,
	[Subtotal] [int] NULL,
	[Taxes] [int] NULL,
	[Totalaftertax] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_CustomerId] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerId])
GO


--Products Table
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](25) NULL,
	[ProductType] [varchar](25) NULL,
	[Price] [money] NULL,
	[ProductDescription] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

--Projects Table
CREATE TABLE [dbo].[Projects](
	[ProjectID] [int] IDENTITY(1,1) NOT NULL,
	[ProjectTitle] [varchar](50) NULL,
	[ProjectStartDate] [date] NULL,
	[ProjectEndDate] [date] NULL,
	[ProjectNotes] [varchar](200) NULL,
	[PorjectExpenses] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

select * from _Application;
select * from BusinessOwner;
select * from Customers;
select * from Invoice;
select * from Invoice_Details;
select * from Products;
select * from Projects;


select a.Firstname, a.Lastname, b.Companyname, b.Companytype from _Application a join 
BusinessOwner b on a.UserId = b.UserId;

select c.Firstname, c.Lastname, i.invoicedescription, i.InvoiceId from Customers c join Invoice i 
on c.CustomerId = i.Customerid;

select sum(Quantity) as totalquantity, ProductId from Invoice_Details 
where InvoiceId = 1 group by ProductId;

select pId, ProjectTitle from Projects where StartDate like '2018-09-19';

select i.InvoiceId, p.ProductName, p.Price, i.Quantity from Products p join Invoice_Details i 
on p.ProductId = i.ProductId where InvoiceId = 1
